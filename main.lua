local module = {}

function module.Create(Name, Parent)
    local ui = {}
    ui.AlwaysOnTop = true
    ui.MaxDistance = 32
    ui.BillboardSize = UDim2.new(5,0,1,0)
    ui.SizeOffset = Vector2.new(0, 0)
    ui.StudsOffset = Vector3.new(0, 0, 0)

    function ui.CreateSurface()
        local BillboardGui = Instance.new("BillboardGui", Parent)
        BillboardGui.Adornee = Parent
        BillboardGui.AlwaysOnTop = ui.AlwaysOnTop
        BillboardGui.MaxDistance = ui.MaxDistance
        BillboardGui.Size = ui.BillboardSize
        BillboardGui.SizeOffset = ui.SizeOffset
        BillboardGui.StudsOffset = ui.StudsOffset
        BillboardGui.Name = Name

        return BillboardGui
    end

    function ui:CreateText(Name)
        local self = {}

        self.Text_BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        self.Text_BackgroundTransparency = 0
        self.Text_BorderColor3 = Color3.fromRGB(0, 0, 0)
        self.Text_BorderMode = Enum.BorderMode.Outline
        self.Text_BorderSizePixel = 0
        self.Text_TextDisplay = ""
        self.Text_TextColor3 = Color3.fromRGB(255, 255, 255)
        self.Text_TextScaled = true
        self.Text_Size = 14

        function self.CreateLabel(Billboard)
            local TextLabel = Instance.new("TextLabel", Billboard)
            TextLabel.Name = Name
            TextLabel.BackgroundColor3 = self.Text_BackgroundColor3
            TextLabel.BackgroundTransparency = self.Text_BackgroundTransparency
            TextLabel.BorderColor3 = self.Text_BorderColor3
            TextLabel.BorderMode = self.Text_BorderMode
            TextLabel.BorderSizePixel = self.Text_BorderSizePixel
            TextLabel.Text = self.Text_TextDisplay
            TextLabel.TextColor3 = self.Text_TextColor3
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.TextScaled = self.Text_TextScaled
            TextLabel.TextSize = self.Text_Size
        end

        return self
    end

    return ui
end

function module.RemoveUIElement(NameOfElement, Container)
    if Container:FindFirstChild(NameOfElement, true) ~= nil then
        Container:FindFirstChild(NameOfElement, true):Destroy()
    end
end

function module.ReturnUIElement(NameOfElement, Container)
    if Container:FindFirstChild(NameOfElement, true) ~= nil then
        return Container:FindFirstChild(NameOfElement, true)
    end
end

return module
