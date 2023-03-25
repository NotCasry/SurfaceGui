local module = {}

local min = 1
local max = 200000

-- Billboard
_G.AlwaysOnTop = true
_G.MaxDistance = 32
_G.BillboardSize = UDim2.new(5,0,1,0)
_G.SizeOffset = Vector2.new(0, 0)
_G.StudsOffset = Vector3.new(0, 0, 0)
-- Text
_G.Text_BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_G.Text_BackgroundTransparency = 0
_G.Text_BorderColor3 = Color3.fromRGB(0, 0, 0)
_G.Text_BorderMode = Enum.BorderMode.Outline
_G.Text_BorderSizePixel = 0
_G.Text_TextDisplay = ""

function module.Create(Parent)
    local ui = {}

    local BillboardGui = Instance.new("BillboardGui", Parent)
    BillboardGui.Adornee = Parent
    BillboardGui.AlwaysOnTop = _G.AlwaysOnTop
    BillboardGui.MaxDistance = _G.MaxDistance
    BillboardGui.Size = _G.BillboardSize
    BillboardGui.SizeOffset = _G.SizeOffset
    BillboardGui.StudsOffset = _G.StudsOffset

    function ui:CreateText()
        local TextLabel = Instance.new("TextLabel", BillboardGui)
        TextLabel.BackgroundColor3 = _G.Text_BackgroundColor3
        TextLabel.BackgroundTransparency = _G.Text_BackgroundTransparency
        TextLabel.BorderColor3 = _G.Text_BorderColor3
        TextLabel.BorderMode = _G.Text_BorderMode
        TextLabel.BorderSizePixel = _G.Text_BorderSizePixel
        TextLabel.Text = _G.Text_TextDisplay
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
    end

    return ui
end

return module
