local module = {}

function module.Create(Name, Parent)
    local ui = {}

    local BillboardGui = Instance.new("BillboardGui", Parent)
    BillboardGui.Adornee = Parent
    BillboardGui.AlwaysOnTop = _G.AlwaysOnTop
    BillboardGui.MaxDistance = _G.MaxDistance
    BillboardGui.Size = _G.BillboardSize
    BillboardGui.SizeOffset = _G.SizeOffset
    BillboardGui.StudsOffset = _G.StudsOffset
    BillboardGui.Name = Name

    function ui:CreateText(Name)
        local self = {}

        local TextLabel = Instance.new("TextLabel", BillboardGui)
        TextLabel.Name = Name
        TextLabel.BackgroundColor3 = _G.Text_BackgroundColor3
        TextLabel.BackgroundTransparency = _G.Text_BackgroundTransparency
        TextLabel.BorderColor3 = _G.Text_BorderColor3
        TextLabel.BorderMode = _G.Text_BorderMode
        TextLabel.BorderSizePixel = _G.Text_BorderSizePixel
        TextLabel.Text = _G.Text_TextDisplay
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.TextScaled = true
        TextLabel.TextColor3 = _G.TextColor3

        function self:Remove()
            TextLabel:Destroy()
        end

        return self
    end

    function ui:Remove()
        BillboardGui:Destroy()
    end

    return ui
end

return module
