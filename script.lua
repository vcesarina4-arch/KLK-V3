--[[ 
    🇩🇴 KLK HUB V3 - MOBILE EDITION 🇩🇴
    Creado por: [Limon] - Versión Protegida
]]

-- Clave y Link escondidos (No los modifiques)
local _C = "\68\111\109\105\110\105\99\97\110\97\95\51\53\54" 
local _L = "\104\116\116\112\115\58\47\47\100\105\114\101\99\116\45\108\105\110\107\46\110\101\116\47\51\51\56\55\50\49\49\47\110\80\73\102\108\110\97\102\49\113\109\70"

local TweenService = game:GetService("TweenService")
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KlK_Hub_Final"
ScreenGui.Parent = Player:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

--------------------------------------------------------- 
-- SISTEMA DE SEGURIDAD (KEY)
---------------------------------------------------------
local KeyFrame = Instance.new("Frame", ScreenGui)
KeyFrame.Size = UDim2.new(0, 300, 0, 180)
KeyFrame.Position = UDim2.new(0.5, -150, 0.5, -90)
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
KeyFrame.BorderSizePixel = 0
KeyFrame.Active = true
KeyFrame.Draggable = true

local KeyStroke = Instance.new("UIStroke", KeyFrame)
KeyStroke.Color = Color3.fromRGB(255, 0, 0)
KeyStroke.Thickness = 2

local KeyTitle = Instance.new("TextLabel", KeyFrame)
KeyTitle.Text = "SISTEMA DE SEGURIDAD"
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.BackgroundTransparency = 1
KeyTitle.TextColor3 = Color3.new(1,1,1)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextSize = 16

local KeyBox = Instance.new("TextBox", KeyFrame)
KeyBox.Size = UDim2.new(0.8, 0, 0, 40)
KeyBox.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyBox.PlaceholderText = "Escribe la Clave Aquí..."
KeyBox.Text = ""
KeyBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyBox.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", KeyBox).CornerRadius = UDim.new(0, 6)

local CheckBtn = Instance.new("TextButton", KeyFrame)
CheckBtn.Text = "ENTRAR"
CheckBtn.Size = UDim2.new(0.35, 0, 0, 35)
CheckBtn.Position = UDim2.new(0.1, 0, 0.65, 0)
CheckBtn.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
CheckBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", CheckBtn).CornerRadius = UDim.new(0, 6)

local GetKeyBtn = Instance.new("TextButton", KeyFrame)
GetKeyBtn.Text = "GET KEY (Link)"
GetKeyBtn.Size = UDim2.new(0.35, 0, 0, 35)
GetKeyBtn.Position = UDim2.new(0.55, 0, 0.65, 0)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
GetKeyBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", GetKeyBtn).CornerRadius = UDim.new(0, 6)

GetKeyBtn.MouseButton1Click:Connect(function()
    setclipboard(_L)
    GetKeyBtn.Text = "¡Copiado!"
    wait(2)
    GetKeyBtn.Text = "GET KEY (Link)"
end)

CheckBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == _C then
        CheckBtn.Text = "¡Correcto!"
        KeyStroke.Color = Color3.fromRGB(0, 255, 0)
        wait(1)
        KeyFrame:Destroy()
        LaunchHub()
    else
        CheckBtn.Text = "Incorrecto"
        KeyBox.Text = ""
        wait(1)
        CheckBtn.Text = "ENTRAR"
    end
end)

---------------------------------------------------------
-- HUB PRINCIPAL
---------------------------------------------------------
function LaunchHub()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "KlK Hub Activado";
        Text = "Bienvenido Tigre 🇩🇴";
        Duration = 5;
    })

    -- Botón de Abrir (Bola Azul "M")
    local ToggleBtn = Instance.new("ImageButton", ScreenGui)
    ToggleBtn.Name = "BotonAbrir"
    ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
    ToggleBtn.Position = UDim2.new(0.1, 0, 0.2, 0)
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    ToggleBtn.Draggable = true 
    ToggleBtn.Active = true
    Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(1, 0)
    Instance.new("UIStroke", ToggleBtn).Color = Color3.fromRGB(0, 255, 255)
    Instance.new("UIStroke", ToggleBtn).Thickness = 2
    
    local Icono = Instance.new("TextLabel", ToggleBtn)
    Icono.Size = UDim2.new(1,0,1,0)
    Icono.BackgroundTransparency = 1
    Icono.Text = "M"
    Icono.TextColor3 = Color3.fromRGB(0, 255, 255)
    Icono.Font = Enum.Font.FredokaOne
    Icono.TextSize = 24

    -- Marco Principal
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.ClipsDescendants = true
    MainFrame.Visible = false
    MainFrame.Draggable = true 
    MainFrame.Active = true
    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)

    local Abierto = false
    ToggleBtn.MouseButton1Click:Connect(function()
        if not Abierto then
            MainFrame.Visible = true
            MainFrame:TweenSize(UDim2.new(0, 350, 0, 250), "Out", "Back", 0.5, true)
            Abierto = true
        else
            MainFrame:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Back", 0.3, true, function()
                MainFrame.Visible = false
            end)
            Abierto = false
        end
    end)

    local TopBar = Instance.new("Frame", MainFrame)
    TopBar.Size = UDim2.new(1, 0, 0, 40)
    TopBar.BackgroundTransparency = 1
    local Title = Instance.new("TextLabel", TopBar)
    Title.Text = "KlK HUB PREMIUM"
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 18
    
    local CloseX = Instance.new("TextButton", TopBar)
    CloseX.Text = "X"
    CloseX.Size = UDim2.new(0, 30, 0, 30)
    CloseX.Position = UDim2.new(1, -35, 0, 5)
    CloseX.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    CloseX.TextColor3 = Color3.new(1,1,1)
    Instance.new("UICorner", CloseX).CornerRadius = UDim.new(0, 6)
    CloseX.MouseButton1Click:Connect(function()
        MainFrame:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Back", 0.3, true, function() MainFrame.Visible = false end)
        Abierto = false
    end)

    local NavBar = Instance.new("Frame", MainFrame)
    NavBar.Size = UDim2.new(1, 0, 0, 30)
    NavBar.Position = UDim2.new(0, 0, 0, 40)
    NavBar.BackgroundTransparency = 1

    local ScriptsFrame = Instance.new("ScrollingFrame", MainFrame)
    ScriptsFrame.Size = UDim2.new(1, -20, 1, -80)
    ScriptsFrame.Position = UDim2.new(0, 10, 0, 75)
    ScriptsFrame.BackgroundTransparency = 1
    ScriptsFrame.CanvasSize = UDim2.new(0,0,2.5,0)
    
    local PhysicsFrame = Instance.new("ScrollingFrame", MainFrame)
    PhysicsFrame.Size = UDim2.new(1, -20, 1, -80)
    PhysicsFrame.Position = UDim2.new(0, 10, 0, 75)
    PhysicsFrame.BackgroundTransparency = 1
    PhysicsFrame.CanvasSize = UDim2.new(0,0,8,0)
    PhysicsFrame.Visible = false

    local function AddList(p) 
        local l = Instance.new("UIListLayout", p)
        l.Padding = UDim.new(0, 5)
        l.HorizontalAlignment = Enum.HorizontalAlignment.Center
    end
    AddList(ScriptsFrame)
    AddList(PhysicsFrame)

    local function NavBtn(text, pos, show)
        local btn = Instance.new("TextButton", NavBar)
        btn.Text = text
        btn.Size = UDim2.new(0.45, 0, 1, 0)
        btn.Position = pos
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        btn.TextColor3 = Color3.new(1,1,1)
        btn.Font = Enum.Font.GothamBold
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
        btn.MouseButton1Click:Connect(function()
            ScriptsFrame.Visible = false
            PhysicsFrame.Visible = false
            show.Visible = true
        end)
    end
    NavBtn("SCRIPTS", UDim2.new(0.03, 0, 0, 0), ScriptsFrame)
    NavBtn("FÍSICA", UDim2.new(0.52, 0, 0, 0), PhysicsFrame)

    ---------------------------------------------------------
    -- FUNCIONES CREADORAS
    ---------------------------------------------------------
    local function CrearBotonNormal(nombre, parent, funcion)
        local btn = Instance.new("TextButton", parent)
        btn.Text = nombre
        btn.Size = UDim2.new(0.95, 0, 0, 40)
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.Font = Enum.Font.GothamBold
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
        btn.MouseButton1Click:Connect(funcion)
    end

    local function CrearInterruptor(nombre, parent, funcionOn, funcionOff)
        local btn = Instance.new("TextButton", parent)
        btn.Text = nombre .. " [OFF]"
        btn.Size = UDim2.new(0.95, 0, 0, 40)
        btn.BackgroundColor3 = Color3.fromRGB(150, 50, 50)
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.Font = Enum.Font.GothamBold
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
        local Encendido = false
        btn.MouseButton1Click:Connect(function()
            Encendido = not Encendido
            if Encendido then
                btn.Text = nombre .. " [ON]"
                btn.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
                funcionOn()
            else
                btn.Text = nombre .. " [OFF]"
                btn.BackgroundColor3 = Color3.fromRGB(150, 50, 50)
                funcionOff()
            end
        end)
    end

    ---------------------------------------------------------
    -- SECCIÓN FÍSICA
    ---------------------------------------------------------
    CrearInterruptor("Velocidad x100", PhysicsFrame, 
        function() if Humanoid then Humanoid.WalkSpeed = 100 end end,
        function() if Humanoid then Humanoid.WalkSpeed = 16 end end
    )

    CrearInterruptor("Super Salto", PhysicsFrame,
        function() 
            if Humanoid then 
                Humanoid.UseJumpPower = true 
                Humanoid.JumpPower = 120 
            end 
        end,
        function() 
            if Humanoid then Humanoid.JumpPower = 50 end 
        end
    )
    
    CrearBotonNormal("Atravesar Paredes (Noclip)", PhysicsFrame, function()
        game:GetService("RunService").Stepped:Connect(function()
            if Character then
                for _, part in pairs(Character:GetChildren()) do
                    if part:IsA("BasePart") then part.CanCollide = false end
                end
            end
        end)
    end)

    ---------------------------------------------------------
    -- SECCIÓN SCRIPTS
    ---------------------------------------------------------
    CrearBotonNormal("Infinite Yield (Admin)", ScriptsFrame, function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)

    CrearBotonNormal("Fly GUI V3 (Volar)", ScriptsFrame, function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end)
        -- EL MEJOR SCRIPT DE BLOX FRUITS (GravityHub)
    
    CrearBotonNormal("Gravity Hub (Blox Fruits)", ScriptsFrame, function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
    end)
    

    CrearBotonNormal("Dark Dex (Ver Archivos)", ScriptsFrame, function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end)

    CrearBotonNormal("Teclado Virtual", ScriptsFrame, function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GGH52lan/GGH52lan/main/keyboard.txt"))()
    end)

        -- SCRIPTS ACTUALIZADOS POR LIMÓN (FUNCIONANDO)
    
        -- SCRIPTS QUE SE AUTO-ACTUALIZAN (Probados para Delta)
    
        -- SCRIPTS VERIFICADOS POR LIMÓN (FUNCIONAN 100%)
    
    CrearBotonNormal("Hexagon Hub (Brookhaven)", ScriptsFrame, function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nxvap/Hexagon/refs/heads/main/brookhaven"))()
    end)

    CrearBotonNormal("RatX Hub (Loader)", ScriptsFrame, function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ratkinator/RatX/refs/heads/main/Loader.lua", true))()
    end)

    CrearBotonNormal("Jmods Universal", ScriptsFrame, function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Jmods-Universal-38764"))()
    end)
    
    CrearBotonNormal("Doors Hub (MSPAINT)", ScriptsFrame, function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))()
    end)
    
    -- Abrir con animación al iniciar tras la Key
    MainFrame.Visible = true
    MainFrame:TweenSize(UDim2.new(0, 350, 0, 250), "Out", "Back", 0.6, true)
    Abierto = true
end
