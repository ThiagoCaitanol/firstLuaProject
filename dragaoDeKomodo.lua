--Inicia o terminal com UTF8 assim aceitando emojis
os.execute("chcp 65001")

-- Monster
local monsterName = "Dragão de Komodo"
local description = "Um monstro blindado capaz de envenezar seus inimigos."
local emoji = "🐉"

-- Attributes
local attackAtribute = 10
local defenseAtribute = 10
local lifeAttribute = 10
local speedAttribute = 10
local inteligenceAttribute = 9

-- Stats Bar
local function getProgressBar(attribute)
    local fullChar = "■"
    local emptyChar = "□"

    local result = ""
    
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Print terminal
local function border()
    print("==========================================================")
end

local function divider()
    print("|")
end

local function showInfo(variable)
    print("| " .. variable)
end

local function showTextInfo(text, variable)
    print("| " .. text .. " " .. variable)
end


border()
divider()
showInfo(monsterName)
showInfo(description)
showTextInfo("Emoji favorito:", emoji)
divider()
showTextInfo("ATQ:", getProgressBar(attackAtribute))
showTextInfo("DEF:", getProgressBar(defenseAtribute))
showTextInfo("LIF:", getProgressBar(lifeAttribute))
showTextInfo("SPD:", getProgressBar(speedAttribute))
showTextInfo("INT:", getProgressBar(inteligenceAttribute))
divider()
border()
