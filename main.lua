--[[

-- Custom Size and Position
-- New Element : Frame
-- TextSize Available
-- Rotation
-- Visibility

]]

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

    function ui:CreateText(Name, Billboard)
        local self = {}

        self.Text_BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        self.Text_BackgroundTransparency = 0
        self.Text_BorderColor3 = Color3.fromRGB(0, 0, 0)
        self.Text_BorderMode = Enum.BorderMode.Outline
        self.Text_BorderSizePixel = 0
        self.Text_TextDisplay = ""
        self.Text_TextColor3 = Color3.fromRGB(255, 255, 255)
        self.Text_TextScaled = true
        self.Text_TextSize = 14
        self.Text_Visible = true
        self.Text_Rotation = 0

        self.Text_Size = UDim2.new(1, 0, 1, 0)
        self.Text_Position = UDim2.new(0, 0, 0, 0)

        function self.CreateLabel()
            local TextLabel = Instance.new("TextLabel", Billboard)
            TextLabel.Name = Name
            TextLabel.BackgroundColor3 = self.Text_BackgroundColor3
            TextLabel.BackgroundTransparency = self.Text_BackgroundTransparency
            TextLabel.BorderColor3 = self.Text_BorderColor3
            TextLabel.BorderMode = self.Text_BorderMode
            TextLabel.BorderSizePixel = self.Text_BorderSizePixel
            TextLabel.Text = self.Text_TextDisplay
            TextLabel.TextColor3 = self.Text_TextColor3
            TextLabel.TextSize = self.Text_TextSize
            TextLabel.TextScaled = self.Text_TextScaled
            TextLabel.TextSize = self.Text_Size
            TextLabel.Visible = self.Text_Visible
            TextLabel.Rotation = self.Text_Rotation
            TextLabel.Size = self.Text_Size
            TextLabel.Position = self.Text_Position
        end

        return self
    end

    function ui:CreateQuad(Name, Billboard)
        local self = {}

        self.Frame_BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        self.Frame_BackgroundTransparency = 1
        self.Frame_BorderColor3 = Color3.fromRGB(0, 0, 0)
        self.Frame_BorderMode = Enum.BorderMode.Outline
        self.Frame_BorderSizePixel = 0
        self.Frame_Visible = true
        self.Frame_Rotation = 0

        self.Frame_Size = UDim2.new(1, 0, 1, 0)
        self.Frame_Position = UDim2.new(0, 0, 0, 0)

        function self.CreateFrame()
            local Frame = Instance.new("Frame", Billboard)
            Frame.Name = Name
            Frame.BackgroundColor3 = self.Frame_BackgroundColor3
            Frame.BackgroundTransparency = self.Frame_BackgroundTransparency
            Frame.Size = self.Frame_Size
            Frame.Position = self.Frame_Position
            Frame.BorderColor3 = self.Frame_BorderColor3
            Frame.BorderMode = self.Frame_BorderMode
            Frame.BorderSizePixel = self.Frame_BorderSizePixel
            Frame.Visible = self.Frame_Visible
            Frame.Rotation = self.Frame_Rotation
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
