WoWTalk_FRDictionary = WoWTalk_FRDictionary or {}

local CombatPack = {
    ["attack"] = "attaque",
    ["heal"] = "soin",
    ["wipe"] = "échec total",
    ["defend"] = "défends",
    ["pull"] = "engager",
    ["aggro"] = "aggro",
    ["healing"] = "soins",
    ["rez"] = "résurrection",
    ["buff"] = "amélioration",
    ["debuff"] = "affaiblissement",
    ["retreat"] = "retraite",
    ["run"] = "cours",
    ["stay"] = "reste",
}

for k, v in pairs(CombatPack) do
    WoWTalk_FRDictionary[k] = v
end