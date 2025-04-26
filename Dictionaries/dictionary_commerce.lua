WoWTalk_FRDictionary = WoWTalk_FRDictionary or {}

local CommercePack = {
    ["wts"] = "vend",
    ["wtb"] = "cherche à acheter",
    ["buy"] = "acheter",
    ["sell"] = "vendre",
    ["cheap"] = "pas cher",
    ["price"] = "prix",
    ["offer"] = "offre",
}

for k, v in pairs(CommercePack) do
    WoWTalk_FRDictionary[k] = v
end