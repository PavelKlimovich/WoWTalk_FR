WoWTalk_FRDictionary = WoWTalk_FRDictionary or {}

local ProfessionsPack = {
    ["mining"] = "minage",
    ["herb"] = "herboristerie",
    ["herbalism"] = "herboristerie",
    ["riding"] = "équitation",
    ["smithing"] = "forge",
    ["alchemy"] = "alchimie",
    ["tailoring"] = "couture",
    ["enchanting"] = "enchanteur",
    ["leatherworking"] = "travail du cuir",
    ["engineering"] = "ingénierie",
}

for k, v in pairs(ProfessionsPack) do
    WoWTalk_FRDictionary[k] = v
end