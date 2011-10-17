-- Programme d'introduction des votes pour le Conseil National,
-- prévu surtout pour les élections du 23 octobre dans le canton de Vaud.
 
local db = sqlite3.open('national.db')
if db:exec("SELECT * from listes;") > 0 then
	print "Réinitialisation de la base de données!"
	for s in io.lines("candidats.sql") do
		db:exec(s)
	end
end
local listes = {}
local liste_courante = 1
for id,nom in db:urows("SELECT numero,nom from listes") do 
	listes[id] = nom
end

function printf(...)
	print(string.format(...))
end
function Menu(liste)
-- 	io.write "\27[H\27[2J"
	for k,v in pairs(liste) do
		printf("%2d. %s", k, type(v) == 'table' and v[1] or v)
	end
	local n = tonumber(io.read())
	return type(liste[n]) == 'table' and liste[n][2] or n
end

function VotesCompact()
	printf("La liste %d '%s' ", liste_courante, listes[liste_courante])
end

local menu_principal = 
{ 
	{ 'Choix de la liste courante',  function()	liste_courante = Menu(listes) end},
	{ "Introduction d'un lot de bulletins compacts", VotesCompact },
	{ "Introduction d'un bulletin",}, 
	{ "Quitter", os.exit} 
}

while true do -- Menu principal
	Menu(menu_principal)()
end
