WoWTalk_FRDictionary = WoWTalk_FRDictionary or {}

local GamePack = {
        -- Groupe et raid
        ["group"] = "groupe",
        ["invite"] = "inviter",
        ["kick"] = "expulser",
        ["leader"] = "chef",
        ["ready"] = "prêt",
        ["ready check"] = "vérification de préparation",
        ["summon"] = "invoquer",
        ["port"] = "portail",
        ["boost"] = "amélioration",
        ["run"] = "course",
        ["instance"] = "instance",
        ["dungeon"] = "donjon",
        ["raid"] = "raid",
        ["boss"] = "boss",
        ["mob"] = "monstre",
        ["loot"] = "butin",
        ["roll"] = "jet de dés",
    
        -- PvP
        ["pvp"] = "joueur contre joueur",
        ["gank"] = "embuscade",
        ["incoming"] = "ennemis arrivant",
        ["defend"] = "défendre",
        ["capture"] = "capturer",
        ["flag"] = "drapeau",
        ["enemy"] = "ennemi",
        ["attack base"] = "attaquer la base",
    
        -- Stats objets / équipement
        ["agi"] = "agilité",
        ["agistam"] = "agilité et endurance",
        ["str"] = "force",
        ["stam"] = "endurance",
        ["int"] = "intelligence",
        ["spi"] = "esprit",
        ["res"] = "résistance",
        ["mp5"] = "mana toutes les 5 secondes",
        ["hp5"] = "vie toutes les 5 secondes",
        ["crit"] = "coup critique",
        ["hit"] = "précision",
        ["haste"] = "hâte",
    
        -- Enchantements
        ["crusader"] = "croisé",
        ["fiery"] = "enchantement feu",
        ["striking"] = "frappe",
        ["healing"] = "soins",
        ["spellpower"] = "puissance des sorts",
        ["agility"] = "agilité",
        ["intellect"] = "intelligence",
        ["spirit"] = "esprit",
        ["strength"] = "force",
        ["stamina"] = "endurance",
    
    
        -- Équipement
        ["cloak"] = "cape",
        ["boots"] = "bottes",
        ["gloves"] = "gants",
        ["bracer"] = "bracelet",
        ["belt"] = "ceinture",
        ["shoulders"] = "épaulières",
        ["chest"] = "plastron",
        ["helmet"] = "casque",
        ["legs"] = "jambières",
        ["weapon"] = "arme",
        ["shield"] = "bouclier",
}

for k, v in pairs(GamePack) do
    WoWTalk_FRDictionary[k] = v
end