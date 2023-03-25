local module = {}

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
