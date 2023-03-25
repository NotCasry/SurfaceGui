local module = {}

local min = 1
local max = 200000

-- Frame
_G.X = 500
_G.Y = 500
_G.Frame_Transparency = 1
_G.Frame_Color3 = Color3.fromRGB(0, 0, 0)

function module.Create(Parent)
    local ui = {}

    local Surface = Instance.new("SurfaceGui")
    Surface.Parent = Parent
    Surface.Name = tostring(
        math.random(min, max)
    )
    Surface.CanvasSize = Vector2.new(_G.X, _G.Y)

    local Frame = Instance.new("Frame")
    Frame.Parent = Surface
    Frame.Size = UDim2.new(1, 0, 1, 0)
    Frame.BackgroundTransparency = _G.Frame_Transparency
    Frame.BackgroundColor3 = _G.Frame_Color3

    function ui.Text()
        local self = {}
        self.Font = Enum.Font.Ubuntu
        self.Text = ""
        self.TextColor3 = Color3.fromRGB(255, 255, 255)
        self.TextScaled = true
        self.TextSize = 15
        self.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        self.TextStrokeTransparency = 0.5

        local TextLabel = Instance.new("TextLabel", Frame)
        TextLabel.Font = self.Font
        TextLabel.Text = self.Text
        TextLabel.TextColor3 = self.TextColor3
        TextLabel.TextScaled = self.TextScaled
        TextLabel.TextSize = self.TextSize
        TextLabel.TextStrokeColor3 = self.TextStrokeColor3
        TextLabel.TextStrokeTransparency = self.TextStrokeTransparency

        return self 
    end

    return ui
end

return module
