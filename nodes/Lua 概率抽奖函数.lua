-- =================================
-- 内部函数
-- 概率取一个随机数，抽奖的主要逻辑
-- @param ProbData      概率表
-- @param totalProb     概率总和
-- =================================
function getProbRandomNum(ProbData, totalProb)
    local middleItem = nil

    -- 按概率取一个随机数
    for k, v in pairs(ProbData) do
        local randNum = math.random(1, totalProb)
        -- print('totalProb  ==== >', totalProb)
        -- print('randNum  ==== >', randNum)
        -- print('v  ==== >', v)
        if randNum <= v then
            middleItem = k
            break
        else
            totalProb = totalProb - v
        end
        -- print('-----------------------------')
    end

    return middleItem
end