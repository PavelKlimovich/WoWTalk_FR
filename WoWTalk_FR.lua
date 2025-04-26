WoWTalk_FRDB = WoWTalk_FRDB or {}

-- Liste des canaux écoutés
local selectedChannels = {
    ["GUILD"] = true,
    ["PARTY"] = true,
    ["SAY"] = true,
    ["YELL"] = true,
    ["WHISPER"] = true,
}

-- Fonction pour nettoyer un message
function CleanMessage(message)
    if not message then return "" end

    -- Tout en minuscules
    message = string.lower(message)

    -- Supprimer tout sauf lettres, chiffres et espaces
    message = string.gsub(message, "[^a-z0-9 ]", "")

    -- Supprimer les espaces multiples
    message = string.gsub(message, "%s+", " ")

    -- Supprimer les espaces en début/fin
    message = string.gsub(message, "^%s*(.-)%s*$", "%1")

    return message
end

-- Fonction SimpleStringSimilarity
function SimpleStringSimilarity(a, b)
    a = string.lower(a)
    b = string.lower(b)

    local matches = 0
    local minLength = math.min(#a, #b)

    for i = 1, minLength do
        if string.sub(a, i, i) == string.sub(b, i, i) then
            matches = matches + 1
        end
    end

    return matches / math.max(#a, #b)
end

-- Fonction intelligente de traduction avec couleur
function SmartTranslateMessage(message)
    if not message or message == "" then
        return "Pas de message"
    end

    local lowerMessage = string.lower(message)
    local translatedParts = {}

    for word in string.gmatch(lowerMessage, "%S+") do
        local translation = WoWTalk_FRDictionary[word]

        if translation then
            -- Mot trouvé direct
            table.insert(translatedParts, "|cff00ff00" .. translation .. "|r")
        else
            -- Mot pas trouvé ➔ essayer de trouver une correspondance proche
            local bestMatch = nil
            local bestScore = 0

            for key, _ in pairs(WoWTalk_FRDictionary) do
                local score = SimpleStringSimilarity(word, key)
                if score > bestScore then
                    bestScore = score
                    bestMatch = key
                end
            end

            -- Si la correspondance est suffisante (>70%)
            if bestScore >= 0.7 and bestMatch then
                table.insert(translatedParts, "|cff00ff00" .. WoWTalk_FRDictionary[bestMatch] .. "|r")
            else
                table.insert(translatedParts, "|cffffffff" .. word .. "|r")
            end
        end
    end

    return table.concat(translatedParts, " ")
end

-- Frame d'écoute des messages
local listenerFrame = CreateFrame("Frame")
listenerFrame:RegisterEvent("CHAT_MSG_GUILD")
listenerFrame:RegisterEvent("CHAT_MSG_PARTY")
listenerFrame:RegisterEvent("CHAT_MSG_SAY")
listenerFrame:RegisterEvent("CHAT_MSG_YELL")
listenerFrame:RegisterEvent("CHAT_MSG_WHISPER")

listenerFrame:SetScript("OnEvent", function(self, event, message, sender, ...)
    local channel = event:sub(10)
    if selectedChannels[channel] then

        local cleanedMessage = CleanMessage(message)
        table.insert(WoWTalk_FRDB, {
            time = date("%H:%M:%S"),
            channel = channel,
            sender = sender,
            message = cleanedMessage,
        })
    end
end)

-- Mise à jour de l'affichage
function WoWTalk_FRViewer_UpdateContent()
    if not WoWTalk_FRDB then return end
    if not WoWTalk_FRViewerScrollFrameScrollChild then return end

    local html = "<html><body>"

    for i, entry in ipairs(WoWTalk_FRDB) do
        html = html .. string.format(
            "<p>|cffffff00[%s]|r |cff00ffff%s|r: |cffffffff%s|r</p>",
            entry.time or "??",
            entry.sender or "??",
            entry.message or "??"
        )

        local translated = SmartTranslateMessage(entry.message)
        html = html .. string.format(
            "<p>|cffaaaaaa[FR]:|r %s</p><br/>",
            translated or ""
        )
    end

    html = html .. "</body></html>"

    WoWTalk_FRViewerScrollFrameScrollChild:SetText(html)
end

-- Vider les messages
function WoWTalk_FRViewer_ClearMessages()
    WoWTalk_FRDB = {}
    WoWTalk_FRViewer_UpdateContent()
end

-- Commande Slash
SLASH_CHATVIEWER1 = "/ctviewer"
SlashCmdList["CHATVIEWER"] = function()
    WoWTalk_FRViewer:Show()
    WoWTalk_FRViewer_UpdateContent()
end

-- Auto-refresh
local refreshTicker = C_Timer.NewTicker(3, function()
    if WoWTalk_FRViewer and WoWTalk_FRViewer:IsShown() then
        WoWTalk_FRViewer_UpdateContent()
    end
end)


-- Créer un bouton flottant pour ouvrir WoWTalk_FR
local WoWTalk_FRMiniButton = CreateFrame("Button", "WoWTalk_FRMiniButton", UIParent, "UIPanelButtonTemplate")
WoWTalk_FRMiniButton:SetSize(100, 30)
WoWTalk_FRMiniButton:SetText("Traducteur")
WoWTalk_FRMiniButton:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 20, -20)
WoWTalk_FRMiniButton:SetMovable(true)
WoWTalk_FRMiniButton:EnableMouse(true)
WoWTalk_FRMiniButton:RegisterForDrag("LeftButton")
WoWTalk_FRMiniButton:SetScript("OnDragStart", WoWTalk_FRMiniButton.StartMoving)
WoWTalk_FRMiniButton:SetScript("OnDragStop", WoWTalk_FRMiniButton.StopMovingOrSizing)

WoWTalk_FRMiniButton:SetScript("OnClick", function()
    WoWTalk_FRViewer:Show()
    WoWTalk_FRViewer_UpdateContent()
end)
