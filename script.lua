--[[ 
    🇩🇴 KLK HUB V3 - MOBILE EDITION 🇩🇴
    Estado: 100% Funcional en Delta
    Protección: Manual Strings (Anti-Error)
]]

local _K = "\68\111\109\105\110\105\99\97\110\97\95\51\53\54"
local _L = "\104\116\116\112\115\58\47\47\100\105\114\101\99\116\45\108\105\110\107\46\110\101\116\47\51\51\56\55\50\49\49\47\110\80\73\102\108\110\97\102\49\113\109\70"

local TweenService = game:GetService("TweenService")
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local ScreenGui = Instance.new("ScreenGui", Player:WaitForChild("PlayerGui"))
ScreenGui.Name = "KlK_Hub_Final"
ScreenGui.ResetOnSpawn = false

-- SISTEMA DE KEY (Diseño Original)
local KeyFrame = Instance.new("Frame", ScreenGui)
KeyFrame.Size = UDim2.new(0, 300, 0, 180)
KeyFrame.Position = UDim2.new(0.5, -150, 0.5, -90)
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
KeyFrame.Active = true
KeyFrame.Draggable = true
Instance.new("UIStroke", KeyFrame).Color = Color3.fromRGB(255, 0, 0)
Instance.new("UICorner", KeyFrame)

local KeyTitle = Instance.new("TextLabel", KeyFrame)
KeyTitle.Text = "SISTEMA DE SEGURIDAD"
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.BackgroundTransparency = 1
KeyTitle.TextColor3 = Color3.new(1,1,1)
KeyTitle.Font = Enum.Font.GothamBold

local KeyBox = Instance.new("TextBox", KeyFrame)
KeyBox.Size = UDim2.new(0.8, 0, 0, 40)
KeyBox.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyBox.PlaceholderText = "Escribe la Clave Aquí..."
KeyBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyBox.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", KeyBox)

local CheckBtn = Instance.new("TextButton", KeyFrame)
CheckBtn.Text = "ENTRAR"
CheckBtn.Size = UDim2.new(0.35, 0, 0, 35)
CheckBtn.Position = UDim2.new(0.1, 0, 0.65, 0)
CheckBtn.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
CheckBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", CheckBtn)

local GetKeyBtn = Instance.new("TextButton", KeyFrame)
GetKeyBtn.Text = "OBTENER KEY"
GetKeyBtn.Size = UDim2.new(0.35, 0, 0, 35)
GetKeyBtn.Position = UDim2.new(0.55, 0, 0.65, 0)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
GetKeyBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", GetKeyBtn)

GetKeyBtn.MouseButton1Click:Connect(function()
    setclipboard(_L)
    GetKeyBtn.Text = "¡Copiado!"
    wait(2)
    GetKeyBtn.Text = "OBTENER KEY"
end)

CheckBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == _K then
        KeyFrame:Destroy()
        LaunchHub()
    else
        CheckBtn.Text = "Incorrecto"
        wait(1)
        CheckBtn.Text = "ENTRAR"
    end
end)

-- FUNCIÓN DEL HUB (Aquí están todos tus botones)
function LaunchHub()
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "KlK Hub Activado", Text = "Bienvenido Tigre 🇩🇴", Duration = 5})

    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.ClipsDescendants = true
    MainFrame.Draggable = true
    MainFrame.Active = true
    Instance.new("UICorner", MainFrame)

    -- Animación de entrada que querías
    MainFrame.Visible = true
    MainFrame:TweenSize(UDim2.new(0, 350, 0, 250), "Out", "Back", 0.6, true)

    -- Secciones
    local ScriptsFrame = Instance.new("ScrollingFrame", MainFrame)
    ScriptsFrame.Size = UDim2.new(1, -20, 1, -80)
    ScriptsFrame.Position = UDim2.new(0, 10, 0, 75)
    ScriptsFrame.BackgroundTransparency = 1
    ScriptsFrame.CanvasSize = UDim2.new(0,0,2,0)
    
    local PhysicsFrame = Instance.new("ScrollingFrame", MainFrame)
    PhysicsFrame.Size = UDim2.new(1, -20, 1, -80)
    PhysicsFrame.Position = UDim2.new(0, 10, 0, 75)
    PhysicsFrame.BackgroundTransparency = 1
    PhysicsFrame.Visible = false

    local function AddList(p) 
        local l = Instance.new("UIListLayout", p)
        l.Padding = UDim.new(0, 5)
        l.HorizontalAlignment = Enum.HorizontalAlignment.Center
    end
    AddList(ScriptsFrame)
    AddList(PhysicsFrame)

    -- Botones de Navegación
    local function NavBtn(text, pos, show)
        local btn = Instance.new("TextButton", MainFrame)
        btn.Text = text
        btn.Size = UDim2.new(0.45, 0, 0, 30)
        btn.Position = pos
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        btn.TextColor3 = Color3.new(1,1,1)
        btn.Font = Enum.Font.GothamBold
        Instance.new("UICorner", btn)
        btn.MouseButton1Click:Connect(function()
            ScriptsFrame.Visible = false
            PhysicsFrame.Visible = false
            show.Visible = true
        end)
    end
    NavBtn("SCRIPTS", UDim2.new(0.03, 0, 0, 40), ScriptsFrame)
    NavBtn("FÍSICA", UDim2.new(0.52, 0, 0, 40), PhysicsFrame)

    -- Creador de Botones
    local function CrearBoton(n, p, f)
        local b = Instance.new("TextButton", p)
        b.Text = n
        b.Size = UDim2.new(0.95, 0, 0, 40)
        b.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        b.TextColor3 = Color3.new(1,1,1)
        b.Font = Enum.Font.GothamBold
        Instance.new("UICorner", b)
        b.MouseButton1Click:Connect(f)
    end

    -- TUS BOTONES ORIGINALES (Vuelven todos)
    CrearBoton("Infinite Yield (Admin)", ScriptsFrame, function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
    CrearBoton("Fly GUI V3 (Volar)", ScriptsFrame, function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))() end)
    CrearBoton("Blox Fruits (RedzHub)", ScriptsFrame, function() loadstring(game:HttpGet("https://raw.githubusercontent.com/REDZ393/Hub/main/computerv2.lua"))() end)
    CrearBoton("Dark Dex", ScriptsFrame, function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end)

    CrearBoton("Velocidad x100", PhysicsFrame, function() if Humanoid then Humanoid.WalkSpeed = 100 end end)
    CrearBoton("Super Salto", PhysicsFrame, function() if Humanoid then Humanoid.JumpPower = 120 end end)
    CrearBoton("Noclip (Paredes)", PhysicsFrame, function() 
        game:GetService("RunService").Stepped:Connect(function()
            for _, v in pairs(Character:GetChildren()) do if v:IsA("BasePart") then v.CanCollide = false end end
        end)
    end)
end
