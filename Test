local knixhub = Instance.new("ScreenGui")
knixhub.Name = "NOOBHUB"
knixhub.Parent = game.CoreGui
knixhub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer

function createTween(Object,setup,settings)

	local style = (settings.Style or Enum.EasingStyle.Sine);

	local direction = (settings.Direction or Enum.EasingDirection.InOut);
	local length = (settings.TIME or 1);
	local repeatcount = (settings.repeatLimit or 0);
	local reverse = (settings.IsReversed or false);
	local dt = (settings.delay or 0);
	
	local tween = TweenInfo.new(
		length, style, direction, repeatcount, reverse, dt
	);
	
	local tweenService = game:GetService("TweenService");
	local Anim = tweenService:Create(Object,tween,setup);
	Anim:Play();
	return Anim;
end;

function RUN_FUNCTION(name, extension, configOpt)
    local settings = configOpt;
    local PATH_URL = settings.URL or nil;
    local GAME_NAME = "";
    
    local success = pcall(function()
        game:HttpGet(PATH_URL)
    end);

     local DecodedTable;
     if (success) then
        if extension == "lua" then 
            DecodedTable = loadstring(game:HttpGet(PATH_URL))()
        elseif extension == "json" then
            DecodedTable = game:GetService("HttpService"):JSONDecode(game:HttpGet(PATH_URL))
        end
        
        settings.Executable = ""
        for i,v in pairs(DecodedTable) do
            if (game.PlaceId == tonumber(i) and v.name and v.Working) then
                local connection = pcall(function() 
                    settings.Executable = game:HttpGet(v.Script) 
                end);
                
                GAME_NAME = v.name
            end
        end
    end

local LoadFrame = Instance.new("Frame")
local Barload = Instance.new("Frame")
local BarloadCorner = Instance.new("UICorner")
local LoadText = Instance.new("TextLabel")
local LoadTitle = Instance.new("TextLabel")
local UICorner1 = Instance.new("UICorner")
local WindowStroke1 = Instance.new("UIStroke")

local LocalizationService = game:GetService("LocalizationService")
local player = game.Players.LocalPlayer

local result, code = pcall(function()
 return LocalizationService:GetCountryRegionForPlayerAsync(player)
 end)

LoadFrame.Name = "LoadFrame"
LoadFrame.Parent = knixhub
LoadFrame.AnchorPoint = Vector2.new(0.5, 0.5)
LoadFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
LoadFrame.BorderSizePixel = 0
LoadFrame.ClipsDescendants = true
LoadFrame.Position = UDim2.new(0.499739647, 0, 0.499451756, 0)
LoadFrame.Size = UDim2.new(0, 0, 0, 0)

UICorner1.Parent = LoadFrame
UICorner1.CornerRadius = UDim.new(0, 5)

WindowStroke1.Name = "WindowStroke1"
WindowStroke1.Parent = LoadFrame
WindowStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStroke1.Color = Color3.fromRGB(255,255,255)
WindowStroke1.LineJoinMode = Enum.LineJoinMode.Round
WindowStroke1.Thickness = 1
WindowStroke1.Transparency = 0
WindowStroke1.Enabled = true
WindowStroke1.Archivable = true


Barload.Name = "Barload"
Barload.Parent = LoadFrame
Barload.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Barload.Position = UDim2.new(0.0436137058, 0, 0.776658118, 0)
Barload.Size = UDim2.new(0, 0, 0, 2)
Barload.BackgroundTransparency = 0

BarloadCorner.Name = "BarloadCorner"
BarloadCorner.Parent = Barload

LoadText.Name = "LoadText"
LoadText.Parent = LoadFrame
LoadText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadText.BackgroundTransparency = 1.000
LoadText.Position = UDim2.new(0.186915889, 0, 0.261682242, 0)
LoadText.Size = UDim2.new(0, 200, 0, 50)
LoadText.Font = Enum.Font.SourceSansItalic
LoadText.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadText.TextSize = 18.000
LoadText.TextTransparency = 0
LoadText.Text = "Loading..."

LoadTitle.Name = "LoadTitle"
LoadTitle.Parent = LoadFrame
LoadTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadTitle.BackgroundTransparency = 1.000
LoadTitle.Position = UDim2.new(0.0432743616, 0, 0.1125011, 0)
LoadTitle.Size = UDim2.new(0, 200, 0, 23)
LoadTitle.Font = Enum.Font.GothamSemibold
LoadTitle.Text = name or "ZEN HUB | LOADER"
LoadTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadTitle.TextSize = 12.000
LoadTitle.TextXAlignment = Enum.TextXAlignment.Left
LoadTitle.TextTransparency = 0

LoadFrame:TweenSize(UDim2.new(0, 321,0, 107), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .6, true)

wait(.6)

TweenService:Create(
 Barload,
 TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
 {
  BackgroundTransparency = 0
 }
):Play()
TweenService:Create(
 LoadText,
 TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
 {
  TextTransparency = 0
 }
):Play()
TweenService:Create(
 LoadTitle,
 TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
 {
  TextTransparency = 0
 }
):Play()

wait(.6)

Barload:TweenSize(UDim2.new(0, 50,0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
LoadText.Text = "Getting Data..."

Wait(1.5)

Barload:TweenSize(UDim2.new(0, 100,0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
LoadText.Text = "Hello " ..game.Players.LocalPlayer.DisplayName.. " From: ".. code

wait(1.5)

Barload:TweenSize(UDim2.new(0, 130,0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
LoadText.Text = "Checking Device.."

Wait(1.5)

if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
Barload:TweenSize(UDim2.new(0, 150,0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
LoadText.Text = "Your Device is Pc"
else
 Barload:TweenSize(UDim2.new(0, 150,0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
LoadText.Text = "Your Device is Mobile"
end
Wait(1.5)

Barload:TweenSize(UDim2.new(0, 200,0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
LoadText.Text = "Checking Game..."
wait(1.5)
LoadText.Text = GAME_NAME
wait(1.5)
Barload:TweenSize(UDim2.new(0, 250,0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
LoadText.Text = "Loading Ui"

Wait(1.5)

Barload:TweenSize(UDim2.new(0, 295,0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
LoadText.Text = "Getting ready.."

Wait(1.5)

Barload:TweenSize(UDim2.new(0, 295,0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
LoadText.Text = "Ready!"

Wait(1.5)

TweenService:Create(
 Barload,
 TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
 {
  BackgroundTransparency = 1
 }
):Play()
TweenService:Create(
 LoadText,
 TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
 {
  TextTransparency = 1
 }
):Play()
TweenService:Create(
 LoadTitle,
 TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
 {
  TextTransparency = 1
 }
):Play()

wait(.6)
WindowStroke1:Destroy()
LoadFrame:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .6, true)
loadstring(settings.Executable)()
end
return RUN_FUNCTION;
