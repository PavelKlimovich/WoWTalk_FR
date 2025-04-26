WoWTalk_FRDictionary = WoWTalk_FRDictionary or {}

local SocialPack = {
    ["hello"] = "bonjour",
    ["hi"] = "salut",
    ["thanks"] = "merci",
    ["thank you"] = "merci",
    ["ty"] = "merci",
    ["sorry"] = "désolé",
    ["bye"] = "au revoir",
    ["goodbye"] = "au revoir",
    ["yes"] = "oui",
    ["no"] = "non",
    ["pls"] = "s'il te plaît",
    ["please"] = "s'il te plaît",
    ["help"] = "aide",
    ["wait"] = "attends",
    ["follow"] = "suis-moi",
}

for k, v in pairs(SocialPack) do
    WoWTalk_FRDictionary[k] = v
end