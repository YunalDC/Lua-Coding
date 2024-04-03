-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
-- Author:- Yunal De Costa
-- Date:- 3/10/2024

local name =  display.newText("       Developed by:- Yunal De Costa",display.contentCenterX,-35,250,20)

local widget = require("widget")

local userInputField1 = native.newTextField(display.contentCenterX,20,115,30)
userInputField1.inputType = "number"

local userInputField2 = native.newTextField(display.contentCenterX,80,115,30)
userInputField1.inputType = "number"

--Beginning of the functions used to create the buttons
local function addTotal()
    local value1 = tonumber(userInputField1.text) or 0
    local value2 = tonumber(userInputField2.text) or 0
    result = value1 + value2

    --
    local resultText = display.newText({
        text = "Total: " .. result,
        x = display.contentCenterX,
        y = 175,
        fontSize = 35
    })
    resultText:setFillColor(1,1,1)

    local function removeText(resultText)
        display.remove(resultText)
        resultText = nil
    end

    local function removeAfterDelay()
        removeText(resultText)
    end

    local timer = timer.performWithDelay(2500,removeAfterDelay)
end

local button1 = display.newRect(75,300,100,40)
button1:setFillColor(0.5,0.5,0.5)

local buttonText = display.newText({
    text = "Add (+)",
    x = 75,
    y = 300,
    fontSize = 20
})
buttonText:setFillColor(1,1,1)

local function minusTotal()
    local value1 = tonumber(userInputField1.text) or 0
    local value2 = tonumber(userInputField2.text) or 0
    result = value1 - value2

    --
    local resultText = display.newText({
        text = "Total: " .. result,
        x = display.contentCenterX,
        y = 175,
        fontSize = 35
    })
    resultText:setFillColor(1,1,1)

    local function removeText(resultText)
        display.remove(resultText)
        resultText = nil
    end

    local function removeAfterDelay()
        removeText(resultText)
    end

    local timer = timer.performWithDelay(2500,removeAfterDelay)
end

local button2 = display.newRect(240,300,125,40)
button2:setFillColor(0.5,0.5,0.5)
  
local buttonText = display.newText({
    text = "Substract (-)",
    x = 240,
    y = 300,
    fontSize = 20
})
buttonText:setFillColor(1,1,1)

local function multiplyTotal()
    local value1 = tonumber(userInputField1.text) or 0
    local value2 = tonumber(userInputField2.text) or 0
    result = value1 * value2

    --
    local resultText = display.newText({
        text = "Total: " .. result,
        x = display.contentCenterX,
        y = 175,
        fontSize = 35
    })
    resultText:setFillColor(1,1,1)

    local function removeText(resultText)
        display.remove(resultText)
        resultText = nil
    end

    local function removeAfterDelay()
        removeText(resultText)
    end

    local timer = timer.performWithDelay(2500,removeAfterDelay)

end

local button3 = display.newRect(240,400,125,40)
button3:setFillColor(0.5,0.5,0.5)
  
local buttonText = display.newText({
    text = "Multiply (x)",
    x = 240,
    y = 400,
    fontSize = 20
})
buttonText:setFillColor(1,1,1)

local function divideTotal()
    local value1 = tonumber(userInputField1.text) or 0
    local value2 = tonumber(userInputField2.text) or 0
    result = value1 / value2

    --
    local resultText = display.newText({
        text = "Total: " .. result,
        x = display.contentCenterX,
        y = 175,
        fontSize = 35
    })
    resultText:setFillColor(1,1,1)

    local function removeText(resultText)
        display.remove(resultText)
        resultText = nil
    end

    local function removeAfterDelay()
        removeText(resultText)
    end

    local timer = timer.performWithDelay(2500,removeAfterDelay)

end

local button4 = display.newRect(75,400,125,40)
button4:setFillColor(0.5,0.5,0.5)
  
local buttonText = display.newText({
    text = "Divide (÷)",
    x = 75,
    y = 400,
    fontSize = 20
})
buttonText:setFillColor(1,1,1)


--Adding event listeners to the code
button1:addEventListener("tap",addTotal)
button2:addEventListener("tap",minusTotal)
button3:addEventListener("tap",multiplyTotal)
button4:addEventListener("tap",divideTotal)
