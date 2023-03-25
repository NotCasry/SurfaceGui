local module = {}

module.uis = {}

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

    table.insert(module.uis, {
        [BillboardGui.Name] = {
            ["Instance"] = BillboardGui;
            ["Parent"] = BillboardGui.Parent;
        };
    })

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

        table.insert(module.uis, {
            [TextLabel.Name] = {
                ["Instance"] = TextLabel;
                ["Parent"] = TextLabel.Parent;
            };
        })

        return self
    end

    return ui
end

function module.PrintTable()
    for i, v in pairs(module.uis) do
        print(i, v)
    end
end

function module.RemoveUIElement(NameOfElement)
    if table.find(module.uis, NameOfElement) then
        module.uis[NameOfElement]["Instance"]:Destroy()
        print("Destroyed!")
    elseif not table.find(module.uis, NameOfElement) then
        print("Element doesn't exist!")
    end
end

return module
