--Inicia o terminal com UTF8 assim aceitando emojis
os.execute("chcp 65001")

local monsterName = "CREEPER"
local description = "Um monstro furtivo com temperamento explosivo."
local emoji = "🧨"

local attackAtribute = 10
local defenseAtribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

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

print("| " .. monsterName) 