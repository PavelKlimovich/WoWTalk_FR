ChatTranslatorDictionary = ChatTranslatorDictionary or {}

local ItemsPack = {
    -- Caractéristiques principales
    ["strength"] = "force",
    ["agility"] = "agilité",
    ["stamina"] = "endurance",
    ["intellect"] = "intelligence",
    ["spirit"] = "esprit",
    ["armor"] = "armure",

    -- Bonus secondaires
    ["crit"] = "coup critique",
    ["haste"] = "hâte",
    ["hit"] = "toucher",
    ["resilience"] = "résilience",
    ["spell power"] = "puissance des sorts",
    ["attack power"] = "puissance d'attaque",

    -- Types d'équipements
    ["weapon"] = "arme",
    ["shield"] = "bouclier",
    ["ring"] = "anneau",
    ["trinket"] = "bijou",
    ["cloak"] = "cape",
    ["boots"] = "bottes",
    ["gloves"] = "gants",
    ["belt"] = "ceinture",
    ["helmet"] = "casque",
    ["chest"] = "torse",
    ["legs"] = "jambes",
    ["shoulders"] = "épaules",
    ["bracers"] = "bracelets",
    ["necklace"] = "collier",

    -- Qualités des objets
    ["common"] = "commun",
    ["uncommon"] = "inhabituel",
    ["rare"] = "rare",
    ["epic"] = "épique",
    ["legendary"] = "légendaire",

    -- Systèmes d'améliorations
    ["enchant"] = "enchantement",
    ["gem"] = "gemme",
    ["socket"] = "emplacement",

    -- Usages
    ["consume"] = "consommer",
    ["use"] = "utiliser",
    ["equip"] = "équiper",
    ["bind"] = "lier",
    ["soulbound"] = "lié à l'âme",

    -- Autres
    ["durability"] = "durabilité",
    ["requires"] = "nécessite",
    ["unique"] = "unique",
}

-- Merge dans le dictionnaire global
for k, v in pairs(ItemsPack) do
    ChatTranslatorDictionary[k] = v
end
