-- Programme d'introduction des votes pour le Conseil National,
-- prévu surtout pour les élections du 23 octobre dans le canton de Vaud.
 
local db = sqlite3.open('national.db')
if db:exec("SELECT * from listes;") > 0 then
	print "Réinitialisation de la base de données!"
	for s in io.lines("candidats.sql") do
		db:exec(s)
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
	while true do
		local n = tonumber(io.read())
		if n and n>=min and n <= max then return n end
		printf("Erreur: entrez un nombre entre %d et %d", min, max)
	end
end

local listes = select_list("SELECT nom from listes ORDER BY numero")
local liste_courante = 1
local max_candidats = 18

function Menu(liste)
-- 	io.write "\27[H\27[2J"
	for k,v in pairs(liste) do
		printf("%2d. %s", k, type(v) == 'table' and v[1] or v)
	end
	local n = EntreeNombre(1, #liste)
	return type(liste[n]) == 'table' and liste[n][2] or n
end

function VotesCompact()
	local nb = select_single("SELECT nombre FROM votes_compacts WHERE liste=%d", liste_courante)
	printf("La liste %d '%s'\na actuellement %d votes compacts\nIntroduisez le nombre de votes à ajouter :", liste_courante, listes[liste_courante], nb)
	local res = nb+EntreeNombre(0, 1000)
	db:exec('UPDATE votes_compacts SET nombre='..res)
end

local function Ajoute(t, id_liste, id_cand)
	local nom = select_single("SELECT nom||' '||prenom from candidats WHERE liste=%d and numero=%d", id_liste, id_cand)
	if not nom then
		return printf("Pas de candidat numéro %02d.%02d", id_liste, id_cand)
	end
	local str = string.format("%02d.%02d  %s", id_liste, id_cand, nom)
	local c = {}
	for i=1,#t do 
		c[t[i]] = (c[t[i]] or 0) + 1
	end
	if c[str] and c[str] > 1 then
		return printf("Ce candidat est déjà deux fois sur le bulletin")
	end
	t[#t+1] = str
end

function AjouterNom(t)
	if #t >= max_candidats then 
		return printf("Déjà %d candidats. Supprimez-en d'abord", #t)
	end
	print "Entrer numéro ou partie du nom"
	local val = io.read()
	local id1,id2 = val:match("(%d%d)%.(%d%d)")
	if id1 then return Ajoute(t, id1, id2) end
end	
	
local menu_bulletin = 
{
	{ "Ajouter un nom", AjouterNom },
	{ "Supprimer une ligne", function(t) table.remove(t, EntreeNombre(1, #t)) end },
	{ "Tout supprimer", function(t) for i=1,#t do t[i]=nil end end },
	{ "Annuler saisie", function() return true end },
	{ "Valider", function() return true end },
}

function BulletinModifie()
	local stmt = db:prepare("SELECT * from candidats WHERE liste="..liste_courante)
	local t = {}
	for liste, numero, nom, prenom in stmt:urows() do
		t[#t+1] = ("%02d.%02d  %s %s"):format(liste, numero, nom, prenom)
	end
	if #t <= max_candidats/2 then
		for i=1,#t do t[#t+1] = t[i] end
	end
	while true do
		table.sort(t)
		printf("%d/%d candidats:", #t, max_candidats)
		for i=1,#t do
			printf("%2d: %s", i, t[i])
		end
		if Menu(menu_bulletin)(t) then return end
	end
end

local menu_principal = 
{ 
	{ 'Choix de la liste courante',  function()	liste_courante = Menu(listes) end},
	{ "Introduction d'un lot de bulletins compacts", VotesCompact },
	{ "Introduction d'un bulletin modifié", BulletinModifie}, 
	{ "Quitter", os.exit} 
}

while true do -- Menu principal
	Menu(menu_principal)()
end
