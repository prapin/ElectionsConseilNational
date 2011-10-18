-- Programme d'introduction des votes pour le Conseil National,
-- prévu surtout pour les élections du 23 octobre dans le canton de Vaud.
 
local db = sqlite3.open('national.db')

if not _print then _print = print end
function print(...)
	local t = {}
	for i=1,select('#',...) do
		t[i] = tostring(select(i, ...))
	end
	t = table.concat(t, "\t").."\n"
	for s in t:gmatch("([^\n]*)\n") do
		_print(s)
	end
end
function printf(...)
	print(string.format(...))
end
local function select_single(sql, ...)
	for val in db:urows(sql:format(...)) do
		return val
	end
end
local function select_list(sql, ...)
	local t = {}
	for val in db:urows(sql:format(...)) do
		t[#t+1] = val
	end
	return t
end
local function EntreeNombre(min,max)
	if min==max then return min end
	assert(max > min, "Choix impossible")
	while true do
		local n = tonumber(io.read())
		if n and n>=min and n <= max then return n end
		printf("Erreur: entrez un nombre entre %d et %d", min, max)
	end
end

if db:exec("SELECT * from listes;") > 0 then
	print "Réinitialisation de la base de données!"
	for s in io.lines("candidats.sql") do
		db:exec(s)
	end
end

local listes = select_list("SELECT nom from listes ORDER BY numero")
local liste_courante = 1
local max_candidats = 18

function Menu(liste)
	for k,v in pairs(liste) do
		printf("%2d. %s", k, type(v) == 'table' and v[1] or v)
	end
	local n = EntreeNombre(1, #liste)
	return type(liste[n]) == 'table' and liste[n][2] or n
end

function VotesCompact()
	assert(liste_courante~=#listes, "Pas de vote compact sans dénomination de parti")
	local nb = select_single("SELECT nombre FROM votes_compacts WHERE liste=%d", liste_courante)
	printf("La liste %d '%s'\na actuellement %d votes compacts\nIntroduisez le nombre de votes à ajouter (0 pour annuler) :", liste_courante, listes[liste_courante], nb)
	local res = nb+EntreeNombre(-1000, 1000)
	assert(res>=0, "Vous avez supprimé trop de bulletins")
	db:exec(('UPDATE votes_compacts SET nombre=%d WHERE liste=%d'):format(res, liste_courante))
end

local function Ajoute(t, id_liste, id_cand)
	local nom = select_single("SELECT nom||' '||prenom from candidats WHERE liste=%d and numero=%d", id_liste, id_cand)
	assert(nom, ("Pas de candidat numéro %02d.%02d"):format(id_liste, id_cand))
	local str = string.format("%02d.%02d  %s", id_liste, id_cand, nom)
	local c = {}
	for i=1,#t do 
		c[t[i]] = (c[t[i]] or 0) + 1
	end
	assert(c[str]==nil or c[str]==1, "Ce candidat est déjà deux fois sur le bulletin")
	t[#t+1] = str
end

function AjouterNom(t)
	assert(#t<max_candidats, ("Déjà %d candidats. Supprimez-en d'abord"):format(#t))
	print "Entrer numéro ou partie du nom"
	local val = io.read()
	local id1,id2 = val:match("(%d%d)%.?(%d%d)")
	if id1 then return Ajoute(t, id1, id2) end
	local trouve={}
	for liste, numero, nom, prenom in db:urows("SELECT * from candidats WHERE nom LIKE '"..val.."%%'") do
		local str = string.format("%02d.%02d  %s %s", liste, numero, nom, prenom)
		trouve[#trouve+1] = str
	end
	assert(#trouve > 0, "Aucun candidat trouvé")
	assert(#trouve < 25, "Trop de candidats trouvés")
	Ajoute(t, trouve[Menu(trouve)]:match("(%d%d)%.(%d%d)"))
end	

function Valider(t)
	local res = db:exec(("BEGIN; INSERT INTO votes_modifies(liste,vides) VALUES(%d,%d); "):format(t[0], max_candidats-#t))
	assert(res==0, "Error à l'enregistrement")
	local id = db:last_insert_rowid()
	for i=1,#t do 
		res = db:exec(("INSERT INTO suffrages VALUES(%d,%d,%d)"):format(id, t[i]:match("(%d%d)%.(%d%d)")))
		assert(res==0, "Error à l'enregistrement")
	end
	db:exec("COMMIT");
	return true
end

local menu_bulletin = 
{
	{ "Ajouter un nom", AjouterNom },
	{ "Supprimer une ligne", function(t) table.remove(t, EntreeNombre(1, #t)) end },
	{ "Tout supprimer", function(t) for i=1,#t do t[i]=nil end end },
	{ "Annuler saisie", function() return true end },
	{ "Valider", Valider },
}

function BulletinModifie()
	local stmt = db:prepare("SELECT * from candidats WHERE liste="..liste_courante)
	local t = {[0]=liste_courante}
	for liste, numero, nom, prenom in stmt:urows() do
		t[#t+1] = ("%02d.%02d  %s %s"):format(liste, numero, nom, prenom)
	end
	if #t <= max_candidats/2 then
		for i=1,#t do t[#t+1] = t[i] end
	end
	while true do
		table.sort(t)
		printf("Liste %d %d/%d - %s", t[0], #t, max_candidats, listes[t[0]])
		for i=1,#t do
			printf("%2d: %s", i, t[i])
		end
		print ''
		local ok, res = pcall(Menu(menu_bulletin), t)
		clear()
		if not ok then printf("** %s **", res:gsub(".-%:","")) end
		if ok and res then return end
	end
end

function Statistiques()
	local cnt = {}
	for liste, nombre in db:urows("SELECT * from votes_compacts") do
		cnt[liste] = nombre*max_candidats
	end
	for liste, vides in db:urows("SELECT * from votes_modifies") do
		cnt[liste] = cnt[liste] + vides
	end
	for liste in db:urows("SELECT liste from suffrages") do
		cnt[liste] = cnt[liste] + 1
	end
	local total = 0
	for i=1,#cnt do
		total = total + cnt[i]
		cnt[i] = {i, cnt[i]}
	end
	table.sort(cnt, function(a,b) return a[2]>b[2] end)
	for i=1,#cnt do
		printf("%5d %5.2f%% - %02d %-40s", cnt[i][2], cnt[i][2]/total*100, cnt[i][1], listes[cnt[i][1]])
	end
	print 'Pressez la touche entrée'
	io.read()
end

local menu_principal = 
{ 
	{ 'Choix de la liste courante',  function()	liste_courante = Menu(listes) end},
	{ "Introduction d'un lot de bulletins compacts", VotesCompact },
	{ "Introduction d'un bulletin modifié", BulletinModifie}, 
	{ "Affichage statistiques", Statistiques },
	{ "Quitter", os.exit} 
}

while true do -- Menu principal
	local ok, res = pcall(Menu(menu_principal))
	clear()
	if not ok then printf("** %s **", res:gsub(".-%:","")) end
end
