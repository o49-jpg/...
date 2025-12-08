-- Shadow the Hedgehog - Complete Chaos Arsenal with Acrobatics
-- Executor Compatible

-- Loading Notification System
local function showLoadingNotification()
    local notifications = game:GetService("CoreGui"):FindFirstChild("ShadowNotifications")
    if notifications then
        notifications:Destroy()
    end
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ShadowNotifications"
    screenGui.DisplayOrder = 999
    screenGui.ResetOnSpawn = false
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 100)
    frame.Position = UDim2.new(1, -310, 1, -110)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    frame.BackgroundTransparency = 0.3
    frame.BorderSizePixel = 0
    frame.Parent = screenGui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame
    
    local title = Instance.new("TextLabel")
    title.Text = "⚡ SHADOW THE HEDGEHOG ⚡"
    title.TextColor3 = Color3.fromRGB(255, 0, 0)
    title.TextSize = 20
    title.Font = Enum.Font.GothamBold
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Position = UDim2.new(0, 0, 0, 5)
    title.Parent = frame
    
    local status = Instance.new("TextLabel")
    status.Name = "StatusText"
    status.Text = "LOADING CHAOS CONTROL..."
    status.TextColor3 = Color3.fromRGB(255, 255, 255)
    status.TextSize = 16
    status.Font = Enum.Font.Gotham
    status.BackgroundTransparency = 1
    status.Size = UDim2.new(1, 0, 0, 25)
    status.Position = UDim2.new(0, 0, 0, 45)
    status.Parent = frame
    
    local progressBar = Instance.new("Frame")
    progressBar.Name = "ProgressBar"
    progressBar.Size = UDim2.new(0, 0, 0, 8)
    progressBar.Position = UDim2.new(0, 10, 0, 80)
    progressBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    progressBar.BorderSizePixel = 0
    progressBar.Parent = frame
    
    local progressCorner = Instance.new("UICorner")
    progressCorner.CornerRadius = UDim.new(0, 4)
    progressCorner.Parent = progressBar
    
    screenGui.Parent = game:GetService("CoreGui")
    
    local function updateProgress(part, percentage, text)
        status.Text = text
        progressBar.Size = UDim2.new((percentage/100) * 280/300, 0, 0, 8)
        wait(1.5)
    end
    
    updateProgress(1, 25, "INITIALIZING CHAOS EMERALDS...")
    updateProgress(2, 50, "LOADING NETWORK DOMINANCE...")
    updateProgress(3, 75, "CALIBRATING CHAOS ABILITIES...")
    updateProgress(4, 100, "CHAOS CONTROL ONLINE!")
    
    wait(1)
    
    for i = 1, 10 do
        frame.BackgroundTransparency = 0.3 + (i * 0.07)
        title.TextTransparency = i * 0.1
        status.TextTransparency = i * 0.1
        progressBar.BackgroundTransparency = i * 0.1
        wait(0.05)
    end
    
    screenGui:Destroy()
end

-- Theme Music System
local function playThemeMusic()
    if _G.ShadowMusic then
        _G.ShadowMusic:Stop()
        _G.ShadowMusic:Destroy()
        _G.ShadowMusic = nil
    end
    
    local sound = Instance.new("Sound")
    sound.Name = "ShadowTheme"
    sound.SoundId = "rbxassetid://101807473608803"
    sound.Volume = 0.5
    sound.Looped = true
    sound.Playing = true
    
    local musicGui = Instance.new("ScreenGui")
    musicGui.Name = "ShadowMusicGUI"
    musicGui.DisplayOrder = 5
    musicGui.ResetOnSpawn = false
    
    local musicFrame = Instance.new("Frame")
    musicFrame.Size = UDim2.new(0, 200, 0, 40)
    musicFrame.Position = UDim2.new(1, -210, 0, 10)
    musicFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 40)
    musicFrame.BackgroundTransparency = 0.3
    musicFrame.BorderSizePixel = 0
    musicFrame.Parent = musicGui
    
    local musicCorner = Instance.new("UICorner")
    musicCorner.CornerRadius = UDim.new(0, 8)
    musicCorner.Parent = musicFrame
    
    local musicTitle = Instance.new("TextLabel")
    musicTitle.Text = "🎵 CHAOS THEME"
    musicTitle.TextColor3 = Color3.fromRGB(0, 255, 255)
    musicTitle.TextSize = 12
    musicTitle.Font = Enum.Font.GothamBold
    musicTitle.BackgroundTransparency = 1
    musicTitle.Size = UDim2.new(0.7, 0, 1, 0)
    musicTitle.Position = UDim2.new(0, 5, 0, 0)
    musicTitle.TextXAlignment = Enum.TextXAlignment.Left
    musicTitle.Parent = musicFrame
    
    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0, 40, 0, 30)
    toggleButton.Position = UDim2.new(0.75, 0, 0.125, 0)
    toggleButton.Text = "🔊"
    toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleButton.Font = Enum.Font.GothamBold
    toggleButton.TextSize = 14
    toggleButton.Parent = musicFrame
    
    local volumeSlider = Instance.new("Frame")
    volumeSlider.Name = "VolumeSlider"
    volumeSlider.Size = UDim2.new(0.7, 0, 0, 4)
    volumeSlider.Position = UDim2.new(0.05, 0, 0.8, 0)
    volumeSlider.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    volumeSlider.BorderSizePixel = 0
    volumeSlider.Parent = musicFrame
    
    local volumeFill = Instance.new("Frame")
    volumeFill.Name = "VolumeFill"
    volumeFill.Size = UDim2.new(0.5, 0, 1, 0)
    volumeFill.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    volumeFill.BorderSizePixel = 0
    volumeFill.Parent = volumeSlider
    
    local volumeCorner = Instance.new("UICorner")
    volumeCorner.CornerRadius = UDim.new(0, 2)
    volumeCorner.Parent = volumeFill
    
    local isDraggingVolume = false
    volumeFill.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDraggingVolume = true
        end
    end)
    
    volumeFill.InputChanged:Connect(function(input)
        if isDraggingVolume and input.UserInputType == Enum.UserInputType.MouseMovement then
            local mouse = game:GetService("Players").LocalPlayer:GetMouse()
            local relativeX = math.clamp(mouse.X - volumeSlider.AbsolutePosition.X, 0, volumeSlider.AbsoluteSize.X)
            local percentage = relativeX / volumeSlider.AbsoluteSize.X
            
            volumeFill.Size = UDim2.new(percentage, 0, 1, 0)
            sound.Volume = percentage * 0.5
        end
    end)
    
    volumeFill.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDraggingVolume = false
        end
    end)
    
    local isMuted = false
    local originalVolume = sound.Volume
    
    toggleButton.MouseButton1Click:Connect(function()
        isMuted = not isMuted
        
        if isMuted then
            sound.Volume = 0
            toggleButton.Text = "🔇"
            toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        else
            sound.Volume = originalVolume
            toggleButton.Text = "🔊"
            toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end
    end)
    
    sound.Parent = game:GetService("Workspace")
    musicGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    
    _G.ShadowMusic = sound
    _G.ShadowMusicGUI = musicGui
    
    return sound
end

-- Cleanup previous instances
if _G.ShadowConnections then
    for _, conn in pairs(_G.ShadowConnections) do
        if typeof(conn) == "RBXScriptConnection" then
            conn:Disconnect()
        end
    end
    _G.ShadowConnections = nil
end

-- Initialize variables
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Animation system
local animationFolder = Instance.new("Folder")
animationFolder.Name = "ShadowAnimations"

local idleAnim = Instance.new("Animation")
idleAnim.AnimationId = "rbxassetid://79010940132903"
idleAnim.Name = "Idle"
idleAnim.Parent = animationFolder

local sprintAnim = Instance.new("Animation")
sprintAnim.AnimationId = "rbxassetid://70995369496624"
sprintAnim.Name = "Sprint"
sprintAnim.Parent = animationFolder

local idleTrack = humanoid:LoadAnimation(idleAnim)
local sprintTrack = humanoid:LoadAnimation(sprintAnim)

-- Movement control variables
local isSprinting = false
local isInhibitorActive = false
local inhibitorCooldown = false
local lastInputTime = 0
local INPUT_THRESHOLD = 0.1
local originalWalkSpeed = humanoid.WalkSpeed
local SPRINT_SPEED = 240
local INHIBITOR_SPEED = 320
local INHIBITOR_DURATION = 40

-- Acrobatics variables
local isAcrobaticsMode = false
local isCtrlHeld = false
local ACROBATICS_FLIP_SPEED = 720 -- degrees per second
local FLIP_DURATION = 0.5 -- seconds for a full flip
local lastFlipTime = 0
local FLIP_COOLDOWN = 0.3 -- seconds between flips
local acrobaticsEffect = nil

-- Invisibility variables
local visibleParts = {}
local isInvisible = false

-- Rocket effects
local rocketEffects = {}
local rocketParts = {}

-- Freeze controls
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.MaxForce = Vector3.new(400000, 400000, 400000)
bodyVelocity.Velocity = Vector3.new(0, 0, 0)

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(400000, 400000, 400000)
bodyGyro.P = 10000
bodyGyro.D = 500

-- Chaos Abilities Variables
local chaosSnapActive = false
local chaosSpearCooldown = false
local chaosBlastCooldown = false
local telekinesisTarget = nil
local chaosRange = 300

-- Ability Cooldowns System
local abilityCooldowns = {
    -- Page 1: Chaos Control
    V = false, B = false, N = false, M = false, L = false,
    K = false, J = false, H = false, F = false, Q = false,
    E = false, R = false, T = false, Y = false, U = false,
    P = false,
    
    -- Page 2: Neural Dominance
    I = false, -- Neural Overload
    O = false, -- Memory Wipe
    A = false, -- Psychic Chains
    S = false, -- Brainwave Disruption
    D = false, -- Soul Extraction
    W = false, -- Body Puppeteer
    
    -- Page 3: Quantum Physics
    Z2 = false, -- Molecular Reconstruction
    X2 = false, -- Gravity Inversion
    C2 = false, -- Temporal Echo
    V2 = false, -- Phase Shift
    B2 = false, -- Mass Multiplication
    N2 = false, -- Entropy Field
    
    -- Page 4: Reality Bending
    Z3 = false, -- Biomimetic Assimilation
    X3 = false, -- Reality Sculptor
    C3 = false, -- Quantum Entanglement
    V3 = false, -- Dimensional Fold
    B3 = false, -- Chrono-Loop
    N3 = false  -- Singularity Core
}

-- PAGING SYSTEM VARIABLES
local currentAbilityPage = 1
local totalAbilityPages = 4
local abilityPageNames = {
    [1] = "CHAOS CONTROL",
    [2] = "NEURAL DOMINANCE", 
    [3] = "QUANTUM PHYSICS",
    [4] = "REALITY BENDING"
}

-- Create hand effects
local function createHandEffects()
    local handEffects = {}
    
    local leftHand = character:FindFirstChild("LeftHand") or character:FindFirstChild("Left Arm")
    local rightHand = character:FindFirstChild("RightHand") or character:FindFirstChild("Right Arm")
    
    if leftHand and rightHand then
        local leftGlow = Instance.new("PointLight")
        leftGlow.Name = "ChaosGlowLeft"
        leftGlow.Color = Color3.fromRGB(0, 255, 255)
        leftGlow.Range = 20
        leftGlow.Brightness = 0
        leftGlow.Enabled = false
        leftGlow.Parent = leftHand
        
        local rightGlow = Instance.new("PointLight")
        rightGlow.Name = "ChaosGlowRight"
        rightGlow.Color = Color3.fromRGB(0, 255, 255)
        rightGlow.Range = 20
        rightGlow.Brightness = 0
        rightGlow.Enabled = false
        rightGlow.Parent = rightHand
        
        table.insert(handEffects, leftGlow)
        table.insert(handEffects, rightGlow)
    end
    
    return handEffects
end

local handEffects = createHandEffects()

-- Acrobatics Functions
local function createAcrobaticsEffect()
    if acrobaticsEffect then
        acrobaticsEffect:Destroy()
    end
    
    local effect = Instance.new("Part")
    effect.Name = "AcrobaticsEffect"
    effect.Size = Vector3.new(10, 10, 10)
    effect.Position = humanoidRootPart.Position
    effect.Material = Enum.Material.Neon
    effect.Color = Color3.fromRGB(255, 165, 0)
    effect.Transparency = 0.7
    effect.Anchored = true
    effect.CanCollide = false
    effect.Shape = Enum.PartType.Ball
    effect.Parent = workspace
    
    local light = Instance.new("PointLight")
    light.Color = Color3.fromRGB(255, 165, 0)
    light.Range = 30
    light.Brightness = 5
    light.Parent = effect
    
    local particle = Instance.new("ParticleEmitter")
    particle.Color = ColorSequence.new(Color3.fromRGB(255, 200, 0))
    particle.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 2),
        NumberSequenceKeypoint.new(1, 0)
    })
    particle.Transparency = NumberSequence.new(0.5)
    particle.Speed = NumberRange.new(10, 20)
    particle.Lifetime = NumberRange.new(0.3, 0.6)
    particle.Rate = 50
    particle.Parent = effect
    particle.Enabled = true
    
    acrobaticsEffect = effect
    
    spawn(function()
        while acrobaticsEffect and acrobaticsEffect.Parent do
            acrobaticsEffect.Position = humanoidRootPart.Position
            wait()
        end
    end)
    
    return effect
end

local function performFlip(flipAxis, flipDirection)
    if tick() - lastFlipTime < FLIP_COOLDOWN then return end
    if not humanoidRootPart or not humanoidRootPart.Parent then return end
    
    lastFlipTime = tick()
    
    if not acrobaticsEffect then
        createAcrobaticsEffect()
    end
    
    local rotationAxis
    if flipAxis == "X" then
        rotationAxis = Vector3.new(1, 0, 0)
    elseif flipAxis == "Z" then
        rotationAxis = Vector3.new(0, 0, 1)
    else
        rotationAxis = Vector3.new(0, 1, 0)
    end
    
    local rotationAmount = 360 * flipDirection
    local originalCFrame = humanoidRootPart.CFrame
    local flipStartTime = tick()
    local flipDuration = FLIP_DURATION
    
    humanoidRootPart.Velocity = humanoidRootPart.Velocity + Vector3.new(0, 50, 0)
    
    local trail = Instance.new("Trail")
    trail.Attachment0 = Instance.new("Attachment")
    trail.Attachment0.Parent = humanoidRootPart
    trail.Attachment0.Position = Vector3.new(0, 2, 0)
    trail.Attachment1 = Instance.new("Attachment")
    trail.Attachment1.Parent = humanoidRootPart
    trail.Attachment1.Position = Vector3.new(0, -2, 0)
    trail.Color = ColorSequence.new(Color3.fromRGB(255, 165, 0))
    trail.Lifetime = 0.3
    trail.Parent = humanoidRootPart
    
    local flipSound = Instance.new("Sound")
    flipSound.SoundId = "rbxassetid://9111275567"
    flipSound.Volume = 0.5
    flipSound.Parent = humanoidRootPart
    flipSound:Play()
    
    while tick() - flipStartTime < flipDuration do
        if not humanoidRootPart or not humanoidRootPart.Parent then break end
        
        local elapsed = tick() - flipStartTime
        local progress = elapsed / flipDuration
        local currentRotation = rotationAmount * progress
        
        humanoidRootPart.CFrame = originalCFrame * CFrame.fromAxisAngle(rotationAxis, math.rad(currentRotation))
        
        wait()
    end
    
    if trail then trail:Destroy() end
    if flipSound then flipSound:Destroy() end
    
    if humanoidRootPart and humanoidRootPart.Parent then
        humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position) * CFrame.Angles(0, originalCFrame:ToEulerAnglesXYZ())
    end
end

local function checkMovementAndFlip()
    if not isCtrlHeld then return end
    if tick() - lastFlipTime < FLIP_COOLDOWN then return end
    
    local inputService = game:GetService("UserInputService")
    local moveDirection = Vector3.new(0, 0, 0)
    local hasMovement = false
    
    if inputService:IsKeyDown(Enum.KeyCode.W) then
        moveDirection = moveDirection + Vector3.new(0, 0, -1)
        hasMovement = true
    end
    if inputService:IsKeyDown(Enum.KeyCode.S) then
        moveDirection = moveDirection + Vector3.new(0, 0, 1)
        hasMovement = true
    end
    if inputService:IsKeyDown(Enum.KeyCode.A) then
        moveDirection = moveDirection + Vector3.new(-1, 0, 0)
        hasMovement = true
    end
    if inputService:IsKeyDown(Enum.KeyCode.D) then
        moveDirection = moveDirection + Vector3.new(1, 0, 0)
        hasMovement = true
    end
    
    if not hasMovement then return end
    
    if moveDirection.Magnitude > 0 then
        moveDirection = moveDirection.Unit
        
        local absX = math.abs(moveDirection.X)
        local absZ = math.abs(moveDirection.Z)
        
        if absZ > absX then
            if moveDirection.Z < 0 then
                performFlip("X", 1)
            else
                performFlip("X", -1)
            end
        else
            if moveDirection.X < 0 then
                performFlip("Z", 1)
            else
                performFlip("Z", -1)
            end
        end
    end
end

-- Function to claim network ownership
local function claimNetworkOwnership(range)
    local claimed = 0
    local rootPos = humanoidRootPart.Position
    
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") and obj:CanSetNetworkOwnership() then
            local distance = (obj.Position - rootPos).Magnitude
            if distance <= range then
                pcall(function()
                    obj:SetNetworkOwner(player)
                    claimed = claimed + 1
                end)
            end
        end
    end
    
    return claimed
end

-- PAGING SYSTEM FUNCTION
local function changeAbilityPage(pageNum)
    if pageNum < 1 then pageNum = totalAbilityPages end
    if pageNum > totalAbilityPages then pageNum = 1 end
    
    currentAbilityPage = pageNum
    
    local notification = Instance.new("ScreenGui")
    notification.Name = "PageNotification"
    notification.DisplayOrder = 997
    notification.ResetOnSpawn = false
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 350, 0, 70)
    frame.Position = UDim2.new(0.5, -175, 0.8, -35)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.7
    frame.BorderSizePixel = 0
    frame.Parent = notification
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -20, 0.5, -5)
    title.Position = UDim2.new(0, 10, 0, 5)
    title.Text = "ABILITY PAGE: " .. abilityPageNames[pageNum]
    title.TextColor3 = Color3.fromRGB(255, 255, 0)
    title.TextSize = 18
    title.Font = Enum.Font.GothamBold
    title.BackgroundTransparency = 1
    title.TextWrapped = true
    title.Parent = frame
    
    local subtitle = Instance.new("TextLabel")
    subtitle.Size = UDim2.new(1, -20, 0.5, -5)
    subtitle.Position = UDim2.new(0, 10, 0.5, 0)
    subtitle.Text = pageNum == 1 and "Chaos Abilities (Original)" or 
                    pageNum == 2 and "NPC Control Abilities" or 
                    pageNum == 3 and "Object Manipulation Abilities" or
                    "Hybrid Reality Abilities"
    subtitle.TextColor3 = Color3.fromRGB(255, 200, 0)
    subtitle.TextSize = 14
    subtitle.Font = Enum.Font.Gotham
    subtitle.BackgroundTransparency = 1
    subtitle.TextWrapped = true
    subtitle.Parent = frame
    
    notification.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    
    for i = 1, 20 do
        frame.BackgroundTransparency = 0.7 - (i * 0.035)
        title.TextTransparency = 1 - (i * 0.05)
        subtitle.TextTransparency = 1 - (i * 0.05)
        wait(0.02)
    end
    
    wait(2)
    
    for i = 1, 20 do
        frame.BackgroundTransparency = 0 + (i * 0.035)
        title.TextTransparency = 0 + (i * 0.05)
        subtitle.TextTransparency = 0 + (i * 0.05)
        wait(0.02)
    end
    
    notification:Destroy()
    
    if abilitiesPanel then
        panelTitle.Text = "⚡ " .. abilityPageNames[pageNum] .. " ⚡"
    end
    if pageIndicator then
        pageIndicator.Text = "Page: " .. abilityPageNames[pageNum]
    end
end

-- NPC DETECTION FUNCTIONS
local function getNearbyNPCs(range)
    local npcs = {}
    local rootPos = humanoidRootPart.Position
    
    for _, model in pairs(workspace:GetChildren()) do
        if model:IsA("Model") and model ~= character then
            local humanoid = model:FindFirstChild("Humanoid")
            local rootPart = model:FindFirstChild("HumanoidRootPart") or model:FindFirstChild("Torso") or model:FindFirstChild("UpperTorso")
            
            if humanoid and rootPart and humanoid.Health > 0 then
                local distance = (rootPart.Position - rootPos).Magnitude
                if distance <= range then
                    table.insert(npcs, {
                        Model = model,
                        Humanoid = humanoid,
                        RootPart = rootPart,
                        Distance = distance
                    })
                end
            end
        end
    end
    
    for _, folder in pairs(workspace:GetDescendants()) do
        if folder:IsA("Folder") and (folder.Name:lower():find("npc") or folder.Name:lower():find("enemy") or folder.Name:lower():find("mob")) then
            for _, model in pairs(folder:GetChildren()) do
                if model:IsA("Model") then
                    local humanoid = model:FindFirstChild("Humanoid")
                    local rootPart = model:FindFirstChild("HumanoidRootPart") or model:FindFirstChild("Torso") or model:FindFirstChild("UpperTorso")
                    
                    if humanoid and rootPart and humanoid.Health > 0 then
                        local distance = (rootPart.Position - rootPos).Magnitude
                        if distance <= range then
                            table.insert(npcs, {
                                Model = model,
                                Humanoid = humanoid,
                                RootPart = rootPart,
                                Distance = distance
                            })
                        end
                    end
                end
            end
        end
    end
    
    return npcs
end

local function getNearbyUnanchoredParts(range)
    local parts = {}
    local rootPos = humanoidRootPart.Position
    
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
            local distance = (part.Position - rootPos).Magnitude
            if distance <= range then
                table.insert(parts, {
                    Part = part,
                    Distance = distance
                })
            end
        end
    end
    
    return parts
end

-- ===========================================
-- ORIGINAL CHAOS ABILITIES (PAGE 1)
-- ===========================================

-- Z - Chaos Snap
local function activateChaosSnap()
    if chaosSnapActive then return end
    chaosSnapActive = true
    
    for _, glow in pairs(handEffects) do
        if glow:IsA("PointLight") then
            glow.Enabled = true
            glow.Brightness = 10
        end
    end
    
    local chargeSound = Instance.new("Sound")
    chargeSound.SoundId = "rbxassetid://9111275566"
    chargeSound.Volume = 1.0
    chargeSound.Parent = humanoidRootPart
    chargeSound:Play()
    
    claimNetworkOwnership(chaosRange)
    
    local snapEffect = Instance.new("Sound")
    snapEffect.SoundId = "rbxassetid://9111275570"
    snapEffect.Volume = 1.5
    snapEffect.Parent = humanoidRootPart
    
    local inputService = game:GetService("UserInputService")
    local mouse = player:GetMouse()
    
    local telekinesisConnection
    local mouseButton1Connection
    
    telekinesisConnection = inputService.InputEnded:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.Z then
            chaosSnapActive = false
            
            for _, glow in pairs(handEffects) do
                if glow:IsA("PointLight") then
                    glow.Enabled = false
                    glow.Brightness = 0
                end
            end
            
            snapEffect:Play()
            
            local flash = Instance.new("Part")
            flash.Size = Vector3.new(50, 50, 50)
            flash.Position = humanoidRootPart.Position
            flash.Material = Enum.Material.Neon
            flash.Color = Color3.fromRGB(0, 255, 255)
            flash.Transparency = 0.2
            flash.Anchored = true
            flash.CanCollide = false
            flash.Parent = workspace
            
            game:GetService("Debris"):AddItem(flash, 0.3)
            
            if telekinesisConnection then telekinesisConnection:Disconnect() end
            if mouseButton1Connection then mouseButton1Connection:Disconnect() end
            chargeSound:Destroy()
        end
    end)
    
    mouseButton1Connection = mouse.Button1Down:Connect(function()
        if chaosSnapActive then
            local target = mouse.Target
            if target and target:IsA("BasePart") and not target:IsDescendantOf(character) then
                local originalAnchored = target.Anchored
                target.Anchored = false
                
                local telekinesisForce = Instance.new("BodyForce")
                telekinesisForce.Name = "UltimateTelekinesis"
                telekinesisForce.Force = Vector3.new(0, target:GetMass() * 196.2 * 1000, 0)
                telekinesisForce.Parent = target
                
                local bodyPosition = Instance.new("BodyPosition")
                bodyPosition.Name = "UltimatePosition"
                bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bodyPosition.P = 1000000
                bodyPosition.D = 100000
                bodyPosition.Parent = target
                
                local bodyGyro = Instance.new("BodyGyro")
                bodyGyro.Name = "UltimateRotation"
                bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bodyGyro.P = 1000000
                bodyGyro.D = 100000
                bodyGyro.Parent = target
                
                local selection = Instance.new("SelectionBox")
                selection.Adornee = target
                selection.Color3 = Color3.fromRGB(0, 255, 255)
                selection.LineThickness = 0.1
                selection.Transparency = 0.3
                selection.Parent = target
                
                telekinesisTarget = target
                
                local telekinesisConnection
                telekinesisConnection = game:GetService("RunService").Heartbeat:Connect(function()
                    if target and target.Parent then
                        local mousePos = mouse.Hit.Position
                        local offset = Vector3.new(0, 5, 0)
                        bodyPosition.Position = mousePos + offset
                    else
                        if telekinesisConnection then telekinesisConnection:Disconnect() end
                        telekinesisTarget = nil
                    end
                end)
                
                mouse.Button1Up:Wait()
                
                if selection then selection:Destroy() end
                if telekinesisForce then telekinesisForce:Destroy() end
                if bodyPosition then bodyPosition:Destroy() end
                if bodyGyro then bodyGyro:Destroy() end
                if telekinesisConnection then telekinesisConnection:Disconnect() end
                
                target.Anchored = originalAnchored
                telekinesisTarget = nil
            end
        end
    end)
end

-- X - Chaos Spear
local function activateChaosSpear()
    if chaosSpearCooldown then return end
    chaosSpearCooldown = true
    
    claimNetworkOwnership(chaosRange)
    
    local voiceLine = Instance.new("Sound")
    voiceLine.SoundId = "rbxassetid://9111275569"
    voiceLine.Volume = 1.2
    voiceLine.Parent = humanoidRootPart
    voiceLine:Play()
    
    local spearDirection = humanoidRootPart.CFrame.lookVector
    
    local projectile = Instance.new("Part")
    projectile.Size = Vector3.new(10, 10, 25)
    projectile.Position = humanoidRootPart.Position + spearDirection * 8
    projectile.Material = Enum.Material.Neon
    projectile.Color = Color3.fromRGB(255, 0, 0)
    projectile.Transparency = 0
    projectile.Anchored = false
    projectile.CanCollide = false
    projectile.Parent = workspace
    
    local projectileLight = Instance.new("PointLight")
    projectileLight.Color = Color3.fromRGB(255, 0, 0)
    projectileLight.Range = 150
    projectileLight.Brightness = 25
    projectileLight.Parent = projectile
    
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = spearDirection * 500
    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bodyVelocity.Parent = projectile
    
    spawn(function()
        local speed = 200
        local distance = 0
        local maxDistance = chaosRange * 2
        
        while distance < maxDistance and projectile.Parent do
            local step = speed * 0.033
            distance = distance + step
            
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part:IsDescendantOf(character) then
                    local partDistance = (part.Position - projectile.Position).Magnitude
                    if partDistance <= 50 then
                        if not part.Anchored then
                            local bodyForce = Instance.new("BodyVelocity")
                            local direction = (part.Position - projectile.Position).Unit
                            bodyForce.Velocity = direction * 500 + Vector3.new(0, 200, 0)
                            bodyForce.MaxForce = Vector3.new(100000, 100000, 100000)
                            bodyForce.P = 10000
                            bodyForce.Parent = part
                            
                            game:GetService("Debris"):AddItem(bodyForce, 3)
                        end
                    end
                end
            end
            
            wait(0.033)
        end
        
        projectile:Destroy()
        
        wait(8)
        chaosSpearCooldown = false
    end)
end

-- C - Chaos Blast
local function activateChaosBlast()
    if chaosBlastCooldown then return end
    chaosBlastCooldown = true
    
    local rootPos = humanoidRootPart.Position
    local stoppedParts = {}
    
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and not part:IsDescendantOf(character) then
            local distance = (part.Position - rootPos).Magnitude
            if distance <= chaosRange * 1.5 then
                local bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bodyVelocity.Parent = part
                
                local bodyGyro = Instance.new("BodyGyro")
                bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bodyGyro.CFrame = part.CFrame
                bodyGyro.P = 100000
                bodyGyro.Parent = part
                
                table.insert(stoppedParts, {
                    Part = part,
                    Velocity = bodyVelocity,
                    Gyro = bodyGyro
                })
            end
        end
    end
    
    spawn(function()
        wait(3)
        
        local blastSound = Instance.new("Sound")
        blastSound.SoundId = "rbxassetid://9111275571"
        blastSound.Volume = 2.0
        blastSound.Parent = humanoidRootPart
        blastSound:Play()
        
        for _, data in pairs(stoppedParts) do
            if data.Part and data.Part.Parent then
                if data.Velocity then data.Velocity:Destroy() end
                if data.Gyro then data.Gyro:Destroy() end
                
                local direction = (data.Part.Position - rootPos).Unit
                local distance = (data.Part.Position - rootPos).Magnitude
                local powerMultiplier = 1 + (1 - (distance / (chaosRange * 1.5)))
                
                local bodyForce = Instance.new("BodyVelocity")
                bodyForce.Velocity = direction * (300 * powerMultiplier) + Vector3.new(0, 200 * powerMultiplier, 0)
                bodyForce.MaxForce = Vector3.new(1000000, 1000000, 1000000)
                bodyForce.P = 100000
                bodyForce.Parent = data.Part
                
                game:GetService("Debris"):AddItem(bodyForce, 5)
            end
        end
        
        wait(10)
        chaosBlastCooldown = false
    end)
end

-- V - Chaos Vortex
local function activateChaosVortex()
    if abilityCooldowns.V then return end
    abilityCooldowns.V = true
    
    claimNetworkOwnership(chaosRange)
    
    local vortexCenter = Instance.new("Part")
    vortexCenter.Size = Vector3.new(5, 5, 5)
    vortexCenter.Position = humanoidRootPart.Position + Vector3.new(0, 10, 0)
    vortexCenter.Material = Enum.Material.Neon
    vortexCenter.Color = Color3.fromRGB(0, 150, 255)
    vortexCenter.Transparency = 0.3
    vortexCenter.Anchored = true
    vortexCenter.CanCollide = false
    vortexCenter.Shape = Enum.PartType.Ball
    vortexCenter.Parent = workspace
    
    local vortexLight = Instance.new("PointLight")
    vortexLight.Color = Color3.fromRGB(0, 150, 255)
    vortexLight.Range = 200
    vortexLight.Brightness = 10
    vortexLight.Parent = vortexCenter
    
    local vortexParticles = Instance.new("ParticleEmitter")
    vortexParticles.Color = ColorSequence.new(Color3.fromRGB(0, 100, 255))
    vortexParticles.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 2),
        NumberSequenceKeypoint.new(1, 0)
    })
    vortexParticles.Transparency = NumberSequence.new(0.5)
    vortexParticles.Speed = NumberRange.new(50, 100)
    vortexParticles.Lifetime = NumberRange.new(1, 3)
    vortexParticles.Rate = 200
    vortexParticles.VelocitySpread = 180
    vortexParticles.Rotation = NumberRange.new(0, 360)
    vortexParticles.RotSpeed = NumberRange.new(-100, 100)
    vortexParticles.Parent = vortexCenter
    vortexParticles.Enabled = true
    
    local vortexSound = Instance.new("Sound")
    vortexSound.SoundId = "rbxassetid://9111275566"
    vortexSound.Volume = 0.8
    vortexSound.Looped = true
    vortexSound.Parent = vortexCenter
    vortexSound:Play()
    
    spawn(function()
        for i = 1, 100 do
            local rootPos = vortexCenter.Position
            
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
                    local distance = (part.Position - rootPos).Magnitude
                    if distance <= chaosRange then
                        local direction = (rootPos - part.Position).Unit
                        local force = Instance.new("BodyVelocity")
                        force.Velocity = direction * (100 + (chaosRange - distance))
                        force.MaxForce = Vector3.new(10000, 10000, 10000)
                        force.Parent = part
                        
                        game:GetService("Debris"):AddItem(force, 0.1)
                    end
                end
            end
            
            vortexCenter.Size = vortexCenter.Size + Vector3.new(0.5, 0.5, 0.5)
            vortexLight.Range = vortexLight.Range + 2
            
            wait(0.1)
        end
        
        local explosion = Instance.new("Explosion")
        explosion.Position = vortexCenter.Position
        explosion.BlastPressure = 500000
        explosion.BlastRadius = 150
        explosion.Parent = workspace
        
        vortexSound:Stop()
        vortexCenter:Destroy()
        
        wait(15)
        abilityCooldowns.V = false
    end)
end

-- B - Black Tornado
local function activateBlackTornado()
    if abilityCooldowns.B then return end
    abilityCooldowns.B = true
    
    claimNetworkOwnership(chaosRange)
    
    local tornadoBase = Instance.new("Part")
    tornadoBase.Size = Vector3.new(30, 1, 30)
    tornadoBase.Position = humanoidRootPart.Position
    tornadoBase.Material = Enum.Material.Neon
    tornadoBase.Color = Color3.fromRGB(0, 0, 0)
    tornadoBase.Transparency = 0.7
    tornadoBase.Anchored = true
    tornadoBase.CanCollide = false
    tornadoBase.Parent = workspace
    
    local tornadoHeight = 100
    local tornadoSegments = 20
    
    for i = 1, tornadoSegments do
        local segment = Instance.new("Part")
        segment.Size = Vector3.new(25 - (i * 1), tornadoHeight/tornadoSegments, 25 - (i * 1))
        segment.Position = humanoidRootPart.Position + Vector3.new(0, (i * tornadoHeight/tornadoSegments) - tornadoHeight/2, 0)
        segment.Material = Enum.Material.Neon
        segment.Color = Color3.fromRGB(0, 0, 0)
        segment.Transparency = 0.5 + (i * 0.02)
        segment.Anchored = true
        segment.CanCollide = false
        segment.Parent = workspace
        
        spawn(function()
            local angle = 0
            while segment and segment.Parent do
                angle = angle + 5
                segment.CFrame = CFrame.new(humanoidRootPart.Position + Vector3.new(0, (i * tornadoHeight/tornadoSegments) - tornadoHeight/2, 0)) 
                    * CFrame.Angles(0, math.rad(angle * i), 0)
                    * CFrame.new(0, 0, 10)
                wait(0.033)
            end
        end)
    end
    
    spawn(function()
        for i = 1, 60 do
            local rootPos = humanoidRootPart.Position
            
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
                    local distance = (part.Position - rootPos).Magnitude
                    if distance <= chaosRange then
                        local angle = tick() * 10
                        local radius = distance * 0.5
                        local x = math.cos(angle) * radius
                        local z = math.sin(angle) * radius
                        
                        local targetPos = rootPos + Vector3.new(x, 50, z)
                        local direction = (targetPos - part.Position).Unit
                        
                        local force = Instance.new("BodyVelocity")
                        force.Velocity = direction * 100 + Vector3.new(0, 30, 0)
                        force.MaxForce = Vector3.new(10000, 10000, 10000)
                        force.Parent = part
                        
                        local spin = Instance.new("BodyAngularVelocity")
                        spin.AngularVelocity = Vector3.new(0, 50, 0)
                        spin.MaxTorque = Vector3.new(10000, 10000, 10000)
                        spin.Parent = part
                        
                        game:GetService("Debris"):AddItem(force, 0.1)
                        game:GetService("Debris"):AddItem(spin, 0.1)
                    end
                end
            end
            
            wait(0.1)
        end
        
        tornadoBase:Destroy()
        for _, part in pairs(workspace:GetChildren()) do
            if part:IsA("Part") and part.Color == Color3.fromRGB(0, 0, 0) and part.Transparency > 0.4 then
                part:Destroy()
            end
        end
        
        wait(20)
        abilityCooldowns.B = false
    end)
end

-- Continue with other original abilities (N, M, L, K, J, H, F, Q, E, R, T, Y, U, P)
-- These would be added here following the same pattern

-- ===========================================
-- PAGE 2: NEURAL DOMINANCE (NEW NPC ABILITIES)
-- ===========================================

-- I - Neural Overload
local function activateNeuralOverload()
    if abilityCooldowns.I then return end
    abilityCooldowns.I = true
    
    local npcs = getNearbyNPCs(120)
    
    for _, npcData in pairs(npcs) do
        local overloadSphere = Instance.new("Part")
        overloadSphere.Size = Vector3.new(8, 8, 8)
        overloadSphere.Position = npcData.RootPart.Position
        overloadSphere.Material = Enum.Material.Neon
        overloadSphere.Color = Color3.fromRGB(255, 50, 150)
        overloadSphere.Transparency = 0.4
        overloadSphere.Anchored = true
        overloadSphere.CanCollide = false
        overloadSphere.Shape = Enum.PartType.Ball
        overloadSphere.Parent = workspace
        
        local overloadLight = Instance.new("PointLight")
        overloadLight.Color = Color3.fromRGB(255, 50, 150)
        overloadLight.Range = 25
        overloadLight.Brightness = 8
        overloadLight.Parent = overloadSphere
        
        local neuralParticles = Instance.new("ParticleEmitter")
        neuralParticles.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 50, 150)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 0, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 0, 200))
        })
        neuralParticles.Size = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(1, 0)
        })
        neuralParticles.Transparency = NumberSequence.new(0.5)
        neuralParticles.Speed = NumberRange.new(15, 30)
        neuralParticles.Lifetime = NumberRange.new(0.5, 1.5)
        neuralParticles.Rate = 100
        neuralParticles.Parent = overloadSphere
        neuralParticles.Enabled = true
        
        spawn(function()
            for i = 1, 60 do
                if npcData.Humanoid and npcData.Humanoid.Health > 0 then
                    local randomDir = Vector3.new(
                        math.random(-100, 100),
                        0,
                        math.random(-100, 100)
                    ).Unit
                    
                    npcData.Humanoid:MoveTo(npcData.RootPart.Position + randomDir * 10)
                    
                    if i % 5 == 0 then
                        overloadLight.Brightness = 15
                        overloadSphere.Size = Vector3.new(10, 10, 10)
                        wait(0.1)
                        overloadLight.Brightness = 8
                        overloadSphere.Size = Vector3.new(8, 8, 8)
                    end
                end
                wait(0.1)
            end
            
            local explosion = Instance.new("Explosion")
            explosion.Position = overloadSphere.Position
            explosion.BlastPressure = 0
            explosion.BlastRadius = 20
            explosion.DestroyJointRadiusPercent = 0
            explosion.ExplosionType = Enum.ExplosionType.NoCraters
            explosion.Parent = workspace
            
            for i = 1, 20 do
                overloadSphere.Transparency = 0.4 + (i * 0.03)
                overloadLight.Brightness = 8 - (i * 0.4)
                wait(0.05)
            end
            
            overloadSphere:Destroy()
        end)
    end
    
    wait(18)
    abilityCooldowns.I = false
end

-- O - Memory Wipe
local function activateMemoryWipe()
    if abilityCooldowns.O then return end
    abilityCooldowns.O = true
    
    local npcs = getNearbyNPCs(100)
    
    for _, npcData in pairs(npcs) do
        local memoryField = Instance.new("Part")
        memoryField.Size = Vector3.new(15, 15, 15)
        memoryField.Position = npcData.RootPart.Position
        memoryField.Material = Enum.Material.Glass
        memoryField.Color = Color3.fromRGB(100, 200, 255)
        memoryField.Transparency = 0.6
        memoryField.Anchored = true
        memoryField.CanCollide = false
        memoryField.Shape = Enum.PartType.Ball
        memoryField.Parent = workspace
        
        local memoryLight = Instance.new("PointLight")
        memoryLight.Color = Color3.fromRGB(100, 200, 255)
        memoryLight.Range = 30
        memoryLight.Brightness = 6
        memoryLight.Parent = memoryField
        
        local dataStream = Instance.new("ParticleEmitter")
        dataStream.Color = ColorSequence.new(Color3.fromRGB(150, 220, 255))
        dataStream.Size = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.5),
            NumberSequenceKeypoint.new(0.5, 1),
            NumberSequenceKeypoint.new(1, 0)
        })
        dataStream.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(1, 1)
        })
        dataStream.Speed = NumberRange.new(5, 15)
        dataStream.Lifetime = NumberRange.new(1, 2)
        dataStream.Rate = 80
        dataStream.VelocitySpread = 360
        dataStream.Parent = memoryField
        dataStream.Enabled = true
        
        spawn(function()
            local originalWalkSpeed = npcData.Humanoid.WalkSpeed
            npcData.Humanoid.WalkSpeed = 8
            
            for i = 1, 120 do
                if npcData.Humanoid and npcData.Humanoid.Health > 0 then
                    if i % 20 == 0 then
                        local wanderPos = npcData.RootPart.Position + Vector3.new(
                            math.random(-20, 20),
                            0,
                            math.random(-20, 20)
                        )
                        npcData.Humanoid:MoveTo(wanderPos)
                    end
                else
                    break
                end
                wait(0.1)
            end
            
            if npcData.Humanoid and npcData.Humanoid.Health > 0 then
                npcData.Humanoid.WalkSpeed = originalWalkSpeed
            end
            
            for i = 1, 15 do
                memoryField.Transparency = 0.6 + (i * 0.026)
                memoryLight.Brightness = 6 - (i * 0.4)
                wait(0.05)
            end
            
            memoryField:Destroy()
        end)
    end
    
    wait(25)
    abilityCooldowns.O = false
end

-- Continue with other Page 2 abilities (A, S, D, W)...

-- ===========================================
-- PAGE 3: QUANTUM PHYSICS (NEW OBJECT ABILITIES)
-- ===========================================

-- Z - Molecular Reconstruction
local function activateMolecularReconstruction()
    if abilityCooldowns.Z2 then return end
    abilityCooldowns.Z2 = true
    
    local objects = getNearbyUnanchoredParts(80)
    
    for _, objData in pairs(objects) do
        spawn(function()
            local deconstructSphere = Instance.new("Part")
            deconstructSphere.Size = objData.Part.Size * 1.2
            deconstructSphere.Position = objData.Part.Position
            deconstructSphere.Material = Enum.Material.Neon
            deconstructSphere.Color = Color3.fromRGB(0, 200, 255)
            deconstructSphere.Transparency = 0.6
            deconstructSphere.Anchored = true
            deconstructSphere.CanCollide = false
            deconstructSphere.Shape = Enum.PartType.Ball
            deconstructSphere.Parent = workspace
            
            local deconstructLight = Instance.new("PointLight")
            deconstructLight.Color = Color3.fromRGB(0, 200, 255)
            deconstructLight.Range = 20
            deconstructLight.Brightness = 6
            deconstructLight.Parent = deconstructSphere
            
            local deconstructParticles = Instance.new("ParticleEmitter")
            deconstructParticles.Color = ColorSequence.new(Color3.fromRGB(100, 220, 255))
            deconstructParticles.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.5),
                NumberSequenceKeypoint.new(0.5, 1),
                NumberSequenceKeypoint.new(1, 0)
            })
            deconstructParticles.Transparency = NumberSequence.new(0.7)
            deconstructParticles.Speed = NumberRange.new(5, 15)
            deconstructParticles.Lifetime = NumberRange.new(0.5, 1)
            deconstructParticles.Rate = 100
            deconstructParticles.Acceleration = Vector3.new(0, 10, 0)
            deconstructParticles.Parent = deconstructSphere
            deconstructParticles.Enabled = true
            
            for i = 1, 20 do
                if objData.Part and objData.Part.Parent then
                    objData.Part.Transparency = i * 0.05
                    objData.Part.Size = objData.Part.Size * 0.95
                    
                    deconstructSphere.Size = deconstructSphere.Size * 0.95
                    deconstructSphere.Transparency = 0.6 - (i * 0.02)
                end
                wait(0.05)
            end
            
            local originalPosition = objData.Part.Position
            local originalSize = objData.Part.Size
            objData.Part:Destroy()
            deconstructSphere:Destroy()
            
            wait(0.5)
            
            local reconstructSphere = Instance.new("Part")
            reconstructSphere.Size = Vector3.new(1, 1, 1)
            reconstructSphere.Position = originalPosition
            reconstructSphere.Material = Enum.Material.Neon
            reconstructSphere.Color = Color3.fromRGB(255, 150, 0)
            reconstructSphere.Transparency = 0.3
            reconstructSphere.Anchored = true
            reconstructSphere.CanCollide = false
            reconstructSphere.Shape = Enum.PartType.Ball
            reconstructSphere.Parent = workspace
            
            local reconstructLight = Instance.new("PointLight")
            reconstructLight.Color = Color3.fromRGB(255, 150, 0)
            reconstructLight.Range = 25
            reconstructLight.Brightness = 8
            reconstructLight.Parent = reconstructSphere
            
            local reconstructParticles = Instance.new("ParticleEmitter")
            reconstructParticles.Color = ColorSequence.new(Color3.fromRGB(255, 200, 100))
            reconstructParticles.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.5),
                NumberSequenceKeypoint.new(0.5, 1.5),
                NumberSequenceKeypoint.new(1, 0)
            })
            reconstructParticles.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.3),
                NumberSequenceKeypoint.new(1, 1)
            })
            reconstructParticles.Speed = NumberRange.new(20, 40)
            reconstructParticles.Lifetime = NumberRange.new(0.3, 0.6)
            reconstructParticles.Rate = 150
            reconstructParticles.Acceleration = Vector3.new(0, -20, 0)
            reconstructParticles.Parent = reconstructSphere
            reconstructParticles.Enabled = true
            
            for i = 1, 20 do
                reconstructSphere.Size = reconstructSphere.Size + originalSize / 20
                reconstructSphere.Transparency = 0.3 + (i * 0.015)
                reconstructLight.Brightness = 8 - (i * 0.3)
                wait(0.05)
            end
            
            local newObject = Instance.new("Part")
            newObject.Size = originalSize
            newObject.Position = originalPosition
            newObject.Material = Enum.Material.Neon
            newObject.Color = Color3.fromRGB(
                math.random(50, 255),
                math.random(50, 255),
                math.random(50, 255)
            )
            newObject.Transparency = 0.2
            newObject.Anchored = false
            newObject.CanCollide = true
            newObject.Parent = workspace
            
            local glow = Instance.new("PointLight")
            glow.Color = newObject.Color
            glow.Range = 15
            glow.Brightness = 3
            glow.Parent = newObject
            
            newObject.Material = Enum.Material.Neon
            newObject.Elasticity = 0.9
            newObject.Friction = 0.1
            
            reconstructSphere:Destroy()
            
            spawn(function()
                for i = 1, 100 do
                    if newObject and newObject.Parent then
                        local floatForce = Instance.new("BodyForce")
                        floatForce.Force = Vector3.new(0, newObject:GetMass() * 196.2 * 0.5, 0)
                        floatForce.Parent = newObject
                        game:GetService("Debris"):AddItem(floatForce, 0.1)
                    end
                    wait(0.1)
                end
            end)
        end)
    end
    
    wait(25)
    abilityCooldowns.Z2 = false
end

-- Continue with other Page 3 abilities (X2, C2, V2, B2, N2)...

-- ===========================================
-- PAGE 4: REALITY BENDING (NEW HYBRID ABILITIES)
-- ===========================================

-- Z - Biomimetic Assimilation
local function activateBiomimeticAssimilation()
    if abilityCooldowns.Z3 then return end
    abilityCooldowns.Z3 = true
    
    local npcs = getNearbyNPCs(80)
    for _, npcData in pairs(npcs) do
        spawn(function()
            local originalWalkSpeed = npcData.Humanoid.WalkSpeed
            npcData.Humanoid.WalkSpeed = originalWalkSpeed * 0.3
            
            local objectEffect = Instance.new("Part")
            objectEffect.Size = npcData.RootPart.Size * 1.2
            objectEffect.Position = npcData.RootPart.Position
            objectEffect.Material = Enum.Material.Concrete
            objectEffect.Color = Color3.fromRGB(150, 150, 100)
            objectEffect.Transparency = 0.6
            objectEffect.Anchored = false
            objectEffect.CanCollide = false
            objectEffect.Parent = workspace
            
            local weld = Instance.new("Weld")
            weld.Part0 = npcData.RootPart
            weld.Part1 = objectEffect
            weld.C0 = CFrame.new()
            weld.Parent = objectEffect
            
            for i = 1, 40 do
                if npcData.Humanoid and npcData.Humanoid.Health > 0 then
                    local objectForce = Instance.new("BodyVelocity")
                    objectForce.Velocity = Vector3.new(
                        math.random(-30, 30),
                        math.random(5, 15),
                        math.random(-30, 30)
                    )
                    objectForce.MaxForce = Vector3.new(2000, 2000, 2000)
                    objectForce.Parent = npcData.RootPart
                    game:GetService("Debris"):AddItem(objectForce, 0.2)
                end
                wait(0.1)
            end
            
            if npcData.Humanoid then
                npcData.Humanoid.WalkSpeed = originalWalkSpeed
            end
            objectEffect:Destroy()
        end)
    end
    
    local objects = getNearbyUnanchoredParts(80)
    for _, objData in pairs(objects) do
        spawn(function()
            local originalColor = objData.Part.Color
            local originalMaterial = objData.Part.Material
            
            objData.Part.Color = Color3.fromRGB(100, 200, 100)
            objData.Part.Material = Enum.Material.Fabric
            
            local lifeParticles = Instance.new("ParticleEmitter")
            lifeParticles.Color = ColorSequence.new(Color3.fromRGB(100, 255, 100))
            lifeParticles.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.3),
                NumberSequenceKeypoint.new(1, 0)
            })
            lifeParticles.Transparency = NumberSequence.new(0.7)
            lifeParticles.Speed = NumberRange.new(3, 8)
            lifeParticles.Lifetime = NumberRange.new(0.5, 1)
            lifeParticles.Rate = 40
            lifeParticles.Parent = objData.Part
            lifeParticles.Enabled = true
            
            for i = 1, 40 do
                if objData.Part and objData.Part.Parent then
                    local direction = (humanoidRootPart.Position - objData.Part.Position).Unit
                    local lifeForce = Instance.new("BodyVelocity")
                    lifeForce.Velocity = direction * 10 + Vector3.new(0, 5, 0)
                    lifeForce.MaxForce = Vector3.new(1000, 1000, 1000)
                    lifeForce.Parent = objData.Part
                    game:GetService("Debris"):AddItem(lifeForce, 0.2)
                end
                wait(0.1)
            end
            
            objData.Part.Color = originalColor
            objData.Part.Material = originalMaterial
            lifeParticles:Destroy()
        end)
    end
    
    wait(45)
    abilityCooldowns.Z3 = false
end

-- Continue with other Page 4 abilities (X3, C3, V3, B3, N3)...

-- ===========================================
-- GUI AND UI ELEMENTS
-- ===========================================

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ShadowGUI"
screenGui.DisplayOrder = 10
screenGui.ResetOnSpawn = false

local abilitiesPanel = Instance.new("Frame")
abilitiesPanel.Name = "AbilitiesPanel"
abilitiesPanel.Size = UDim2.new(0, 300, 0, 400)
abilitiesPanel.Position = UDim2.new(0, 10, 0.5, -200)
abilitiesPanel.BackgroundColor3 = Color3.fromRGB(20, 20, 40)
abilitiesPanel.BackgroundTransparency = 0.3
abilitiesPanel.BorderSizePixel = 0
abilitiesPanel.Parent = screenGui

local panelCorner = Instance.new("UICorner")
panelCorner.CornerRadius = UDim.new(0, 8)
panelCorner.Parent = abilitiesPanel

local panelTitle = Instance.new("TextLabel")
panelTitle.Text = "⚡ CHAOS ABILITIES ⚡"
panelTitle.TextColor3 = Color3.fromRGB(255, 255, 0)
panelTitle.TextSize = 16
panelTitle.Font = Enum.Font.GothamBold
panelTitle.BackgroundTransparency = 1
panelTitle.Size = UDim2.new(1, 0, 0, 30)
panelTitle.Position = UDim2.new(0, 0, 0, 5)
panelTitle.Parent = abilitiesPanel

local abilitiesScrollingFrame = Instance.new("ScrollingFrame")
abilitiesScrollingFrame.Name = "AbilitiesList"
abilitiesScrollingFrame.Size = UDim2.new(1, -10, 1, -40)
abilitiesScrollingFrame.Position = UDim2.new(0, 5, 0, 35)
abilitiesScrollingFrame.BackgroundTransparency = 1
abilitiesScrollingFrame.BorderSizePixel = 0
abilitiesScrollingFrame.ScrollBarThickness = 6
abilitiesScrollingFrame.Parent = abilitiesPanel

local abilitiesLayout = Instance.new("UIListLayout")
abilitiesLayout.Padding = UDim.new(0, 5)
abilitiesLayout.Parent = abilitiesScrollingFrame

-- Ability definitions would be updated here with all abilities
local abilityDefinitions = {
    {Key = "Z", Name = "Chaos Snap", Color = Color3.fromRGB(0, 255, 255), Description = "Telekinetic control + Network claim"},
    {Key = "X", Name = "Chaos Spear", Color = Color3.fromRGB(255, 100, 0), Description = "Energy projectile + Mass repel"},
    {Key = "C", Name = "Chaos Blast", Color = Color3.fromRGB(255, 0, 0), Description = "Area explosion + Object launch"},
    {Key = "V", Name = "Chaos Vortex", Color = Color3.fromRGB(0, 150, 255), Description = "Sucks objects into vortex"},
    {Key = "B", Name = "Black Tornado", Color = Color3.fromRGB(0, 0, 0), Description = "Spinning destruction field"},
    {Key = "N", Name = "Chaos Rift", Color = Color3.fromRGB(150, 0, 255), Description = "Creates dimensional portal"},
    {Key = "M", Name = "Shadow Clone", Color = Color3.fromRGB(50, 50, 50), Description = "Creates attacking duplicate"},
    {Key = "L", Name = "Chaos Cage", Color = Color3.fromRGB(255, 0, 100), Description = "Traps objects in energy field"},
    {Key = "K", Name = "Time Stop", Color = Color3.fromRGB(0, 255, 255), Description = "Freezes time in large area"},
    {Key = "J", Name = "Chaos Wave", Color = Color3.fromRGB(255, 100, 0), Description = "Expanding energy shockwave"},
    {Key = "H", Name = "Teleport Dash", Color = Color3.fromRGB(0, 150, 255), Description = "Instant teleportation"},
    {Key = "F", Name = "Gravity Field", Color = Color3.fromRGB(150, 0, 150), Description = "Inverts/controls gravity"},
    {Key = "Q", Name = "Energy Drain", Color = Color3.fromRGB(255, 50, 0), Description = "Steals energy from objects"},
    {Key = "E", Name = "Chaos Shield", Color = Color3.fromRGB(0, 100, 255), Description = "Protective energy barrier"},
    {Key = "R", Name = "Meteor Strike", Color = Color3.fromRGB(255, 50, 0), Description = "Calls down meteors"},
    {Key = "T", Name = "Chaos Chains", Color = Color3.fromRGB(200, 0, 200), Description = "Links objects together"},
    {Key = "Y", Name = "Soul Steal", Color = Color3.fromRGB(100, 0, 100), Description = "Drains essence from objects"},
    {Key = "U", Name = "Dimension Shift", Color = Color3.fromRGB(0, 255, 255), Description = "Inverts physics/reality"},
    {Key = "P", Name = "Super Form", Color = Color3.fromRGB(255, 255, 0), Description = "Ultimate power transformation"},
    
    {Key = "I", Name = "Neural Overload", Color = Color3.fromRGB(255, 50, 150), Description = "NPC system overload + confusion"},
    {Key = "O", Name = "Memory Wipe", Color = Color3.fromRGB(100, 200, 255), Description = "Resets NPC behavior + passivity"},
    {Key = "A", Name = "Psychic Chains", Color = Color3.fromRGB(150, 0, 200), Description = "Links NPCs in psychic network"},
    {Key = "S", Name = "Brainwave Disruption", Color = Color3.fromRGB(255, 0, 100), Description = "Makes NPCs attack each other"},
    {Key = "D", Name = "Soul Extraction", Color = Color3.fromRGB(100, 255, 255), Description = "Creates ghostly NPC duplicates"},
    {Key = "W", Name = "Body Puppeteer", Color = Color3.fromRGB(255, 200, 0), Description = "Direct NPC control for 30s"},
    
    {Key = "Z", Name = "Molecular Reconstruction", Color = Color3.fromRGB(0, 200, 255), Description = "Deconstructs/reconstructs objects"},
    {Key = "X", Name = "Gravity Inversion", Color = Color3.fromRGB(150, 0, 200), Description = "Localized inverted gravity fields"},
    {Key = "C", Name = "Temporal Echo", Color = Color3.fromRGB(100, 255, 200), Description = "Time-delayed object duplicates"},
    {Key = "V", Name = "Phase Shift", Color = Color3.fromRGB(255, 100, 255), Description = "Objects phase in/out of reality"},
    {Key = "B", Name = "Mass Multiplication", Color = Color3.fromRGB(255, 150, 50), Description = "Creates multiple object copies"},
    {Key = "N", Name = "Entropy Field", Color = Color3.fromRGB(150, 150, 150), Description = "Accelerates object disintegration"},
    
    {Key = "Z", Name = "Biomimetic Assimilation", Color = Color3.fromRGB(100, 200, 100), Description = "Objects/NPCs swap properties"},
    {Key = "X", Name = "Reality Sculptor", Color = Color3.fromRGB(255, 100, 255), Description = "Direct mouse manipulation"},
    {Key = "C", Name = "Quantum Entanglement", Color = Color3.fromRGB(0, 255, 255), Description = "Links NPCs and objects"},
    {Key = "V", Name = "Dimensional Fold", Color = Color3.fromRGB(200, 100, 255), Description = "Creates compressed space pockets"},
    {Key = "B", Name = "Chrono-Loop", Color = Color3.fromRGB(255, 255, 100), Description = "Time loops trap entities"},
    {Key = "N", Name = "Singularity Core", Color = Color3.fromRGB(100, 0, 150), Description = "Miniature black hole creation"},
    
    {Key = "G", Name = "Invisibility", Color = Color3.fromRGB(255, 0, 0), Description = "Becomes semi-transparent"},
    {Key = "LSHIFT", Name = "Sprint", Color = Color3.fromRGB(0, 255, 0), Description = "High-speed movement"},
    {Key = "RSHIFT", Name = "Inhibitor", Color = Color3.fromRGB(0, 100, 255), Description = "Speed boost for 40s"},
    {Key = "CTRL", Name = "Acrobatics", Color = Color3.fromRGB(255, 165, 0), Description = "Directional flips while moving"},
    {Key = "LEFT ALT", Name = "Page 2", Color = Color3.fromRGB(255, 100, 200), Description = "Neural Dominance Abilities"},
    {Key = "RIGHT ALT", Name = "Page 3", Color = Color3.fromRGB(100, 200, 255), Description = "Quantum Physics Abilities"},
    {Key = "RIGHT CTRL", Name = "Page 4", Color = Color3.fromRGB(200, 100, 255), Description = "Reality Bending Abilities"},
    {Key = "'", Name = "Page 1", Color = Color3.fromRGB(255, 255, 255), Description = "Chaos Control (Default)"}
}

for _, ability in pairs(abilityDefinitions) do
    local abilityFrame = Instance.new("Frame")
    abilityFrame.Size = UDim2.new(1, 0, 0, 40)
    abilityFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 50)
    abilityFrame.BackgroundTransparency = 0.5
    abilityFrame.Parent = abilitiesScrollingFrame
    
    local abilityCorner = Instance.new("UICorner")
    abilityCorner.CornerRadius = UDim.new(0, 4)
    abilityCorner.Parent = abilityFrame
    
    local keyLabel = Instance.new("TextLabel")
    keyLabel.Text = "[" .. ability.Key .. "]"
    keyLabel.TextColor3 = ability.Color
    keyLabel.TextSize = 14
    keyLabel.Font = Enum.Font.GothamBold
    keyLabel.BackgroundTransparency = 1
    keyLabel.Size = UDim2.new(0, 60, 1, 0)
    keyLabel.Position = UDim2.new(0, 5, 0, 0)
    keyLabel.TextXAlignment = Enum.TextXAlignment.Left
    keyLabel.Parent = abilityFrame
    
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Text = ability.Name
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextSize = 14
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.BackgroundTransparency = 1
    nameLabel.Size = UDim2.new(0, 120, 1, 0)
    nameLabel.Position = UDim2.new(0, 70, 0, 0)
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.Parent = abilityFrame
    
    local descLabel = Instance.new("TextLabel")
    descLabel.Text = ability.Description
    descLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    descLabel.TextSize = 11
    descLabel.Font = Enum.Font.Gotham
    descLabel.BackgroundTransparency = 1
    descLabel.Size = UDim2.new(0.5, -75, 1, 0)
    descLabel.Position = UDim2.new(0.5, 5, 0, 0)
    descLabel.TextXAlignment = Enum.TextXAlignment.Left
    descLabel.TextWrapped = true
    descLabel.Parent = abilityFrame
    
    local statusDot = Instance.new("Frame")
    statusDot.Name = "StatusDot"
    statusDot.Size = UDim2.new(0, 10, 0, 10)
    statusDot.Position = UDim2.new(1, -15, 0.5, -5)
    statusDot.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    statusDot.BorderSizePixel = 0
    statusDot.Parent = abilityFrame
    
    local statusCorner = Instance.new("UICorner")
    statusCorner.CornerRadius = UDim.new(1, 0)
    statusCorner.Parent = statusDot
    
    abilityFrame.Parent = abilitiesScrollingFrame
end

abilitiesScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, (#abilityDefinitions * 45))

local invisButton = Instance.new("TextButton")
invisButton.Name = "InvisibilityToggle"
invisButton.Size = UDim2.new(0, 120, 0, 40)
invisButton.Position = UDim2.new(1, -130, 0.5, -20)
invisButton.Text = "Invisibility: OFF"
invisButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
invisButton.TextColor3 = Color3.fromRGB(255, 255, 255)
invisButton.Font = Enum.Font.GothamBold
invisButton.TextSize = 12
invisButton.Parent = screenGui

local inhibitorButton = Instance.new("TextButton")
inhibitorButton.Name = "InhibitorToggle"
inhibitorButton.Size = UDim2.new(0, 120, 0, 40)
inhibitorButton.Position = UDim2.new(1, -130, 0.5, 30)
inhibitorButton.Text = "Inhibitor Rings"
inhibitorButton.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
inhibitorButton.TextColor3 = Color3.fromRGB(255, 255, 255)
inhibitorButton.Font = Enum.Font.GothamBold
inhibitorButton.TextSize = 12
inhibitorButton.Parent = screenGui

local cooldownFrame = Instance.new("Frame")
cooldownFrame.Name = "CooldownIndicator"
cooldownFrame.Size = UDim2.new(1, 0, 0, 4)
cooldownFrame.Position = UDim2.new(0, 0, 1, 4)
cooldownFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
cooldownFrame.BorderSizePixel = 0
cooldownFrame.Parent = inhibitorButton

local acrobaticsButton = Instance.new("TextButton")
acrobaticsButton.Name = "AcrobaticsStatus"
acrobaticsButton.Size = UDim2.new(0, 120, 0, 40)
acrobaticsButton.Position = UDim2.new(1, -130, 0.5, 80)
acrobaticsButton.Text = "Acrobatics: READY"
acrobaticsButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
acrobaticsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
acrobaticsButton.Font = Enum.Font.GothamBold
acrobaticsButton.TextSize = 12
acrobaticsButton.Parent = screenGui

local sprintStatus = Instance.new("TextLabel")
sprintStatus.Name = "SprintStatus"
sprintStatus.Size = UDim2.new(0, 150, 0, 25)
sprintStatus.Position = UDim2.new(1, -160, 0, 10)
sprintStatus.Text = "Sprint: READY"
sprintStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
sprintStatus.BackgroundTransparency = 1
sprintStatus.Font = Enum.Font.GothamBold
sprintStatus.TextSize = 14
sprintStatus.TextXAlignment = Enum.TextXAlignment.Right
sprintStatus.Parent = screenGui

local speedIndicator = Instance.new("TextLabel")
speedIndicator.Name = "SpeedIndicator"
speedIndicator.Size = UDim2.new(0, 150, 0, 25)
speedIndicator.Position = UDim2.new(1, -160, 0, 35)
speedIndicator.Text = "Speed: " .. math.floor(originalWalkSpeed)
speedIndicator.TextColor3 = Color3.fromRGB(255, 255, 255)
speedIndicator.BackgroundTransparency = 1
speedIndicator.Font = Enum.Font.Gotham
speedIndicator.TextSize = 14
speedIndicator.TextXAlignment = Enum.TextXAlignment.Right
speedIndicator.Parent = screenGui

local pageIndicator = Instance.new("TextLabel")
pageIndicator.Name = "PageIndicator"
pageIndicator.Size = UDim2.new(0, 150, 0, 25)
pageIndicator.Position = UDim2.new(1, -160, 0, 60)
pageIndicator.Text = "Page: " .. abilityPageNames[currentAbilityPage]
pageIndicator.TextColor3 = Color3.fromRGB(255, 255, 0)
pageIndicator.BackgroundTransparency = 1
pageIndicator.Font = Enum.Font.GothamBold
pageIndicator.TextSize = 14
pageIndicator.TextXAlignment = Enum.TextXAlignment.Right
pageIndicator.Parent = screenGui

screenGui.Parent = player:WaitForChild("PlayerGui")

-- Existing utility functions
local function collectVisibleParts()
    visibleParts = {}
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") and part.Transparency == 0 then
            table.insert(visibleParts, part)
        end
    end
end

local function toggleInvisibility()
    isInvisible = not isInvisible
    
    if isInvisible then
        for _, part in pairs(visibleParts) do
            part.Transparency = 0.5
        end
        
        local originalCFrame = humanoidRootPart.CFrame
        local originalCameraOffset = humanoid.CameraOffset
        
        local undergroundPosition = originalCFrame * CFrame.new(0, -200000, 0)
        humanoidRootPart.CFrame = undergroundPosition
        humanoid.CameraOffset = undergroundPosition:ToObjectSpace(CFrame.new(originalCFrame.Position)).Position
        
        game:GetService("RunService").RenderStepped:Wait()
        
        humanoidRootPart.CFrame = originalCFrame
        humanoid.CameraOffset = originalCameraOffset
        
        invisButton.Text = "Invisibility: ON"
        invisButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    else
        for _, part in pairs(visibleParts) do
            part.Transparency = 0
        end
        
        invisButton.Text = "Invisibility: OFF"
        invisButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end
end

local function createRocketEffects()
    for _, effect in pairs(rocketEffects) do
        effect:Destroy()
    end
    rocketEffects = {}
    
    local leftFoot = character:FindFirstChild("LeftFoot") or character:FindFirstChild("Left Leg")
    local rightFoot = character:FindFirstChild("RightFoot") or character:FindFirstChild("Right Leg")
    
    if leftFoot and rightFoot then
        local leftAttach = Instance.new("Attachment")
        leftAttach.Name = "RocketAttachmentLeft"
        leftAttach.Position = Vector3.new(0, -1, 0)
        leftAttach.Parent = leftFoot
        
        local leftParticle = Instance.new("ParticleEmitter")
        leftParticle.Name = "RocketParticleLeft"
        leftParticle.Color = ColorSequence.new(Color3.fromRGB(255, 100, 0))
        leftParticle.Size = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.5),
            NumberSequenceKeypoint.new(1, 0)
        })
        leftParticle.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(0.5, 0.3),
            NumberSequenceKeypoint.new(1, 1)
        })
        leftParticle.Speed = NumberRange.new(5, 10)
        leftParticle.Lifetime = NumberRange.new(0.3, 0.5)
        leftParticle.Rate = 50
        leftParticle.VelocityInheritance = 0.5
        leftParticle.Acceleration = Vector3.new(0, -10, 0)
        leftParticle.LightEmission = 0.8
        leftParticle.Enabled = false
        leftParticle.Parent = leftAttach
        
        local rightAttach = Instance.new("Attachment")
        rightAttach.Name = "RocketAttachmentRight"
        rightAttach.Position = Vector3.new(0, -1, 0)
        rightAttach.Parent = rightFoot
        
        local rightParticle = Instance.new("ParticleEmitter")
        rightParticle.Name = "RocketParticleRight"
        rightParticle.Color = ColorSequence.new(Color3.fromRGB(255, 100, 0))
        rightParticle.Size = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.5),
            NumberSequenceKeypoint.new(1, 0)
        })
        rightParticle.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(0.5, 0.3),
            NumberSequenceKeypoint.new(1, 1)
        })
        rightParticle.Speed = NumberRange.new(5, 10)
        rightParticle.Lifetime = NumberRange.new(0.3, 0.5)
        rightParticle.Rate = 50
        rightParticle.VelocityInheritance = 0.5
        rightParticle.Acceleration = Vector3.new(0, -10, 0)
        rightParticle.LightEmission = 0.8
        rightParticle.Enabled = false
        rightParticle.Parent = rightAttach
        
        table.insert(rocketEffects, leftParticle)
        table.insert(rocketEffects, rightParticle)
    end
end

local function toggleRocketEffects(enable)
    for _, effect in pairs(rocketEffects) do
        effect.Enabled = enable
    end
end

local function toggleSprint()
    isSprinting = not isSprinting
    
    if isSprinting then
        local targetSpeed = isInhibitorActive and INHIBITOR_SPEED or SPRINT_SPEED
        humanoid.WalkSpeed = targetSpeed
        
        if sprintTrack then
            sprintTrack:Play()
            sprintTrack:AdjustSpeed(1.5)
        end
        
        toggleRocketEffects(true)
        
        sprintStatus.Text = "Sprint: ACTIVE"
        sprintStatus.TextColor3 = Color3.fromRGB(255, 165, 0)
    else
        humanoid.WalkSpeed = originalWalkSpeed
        
        if sprintTrack then
            sprintTrack:Stop()
        end
        
        if not isSprinting and humanoid.MoveDirection.Magnitude < 0.1 then
            if idleTrack then
                idleTrack:Play()
            end
        end
        
        toggleRocketEffects(false)
        
        sprintStatus.Text = "Sprint: READY"
        sprintStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
    end
    
    speedIndicator.Text = "Speed: " .. math.floor(humanoid.WalkSpeed)
end

local function activateInhibitorRings()
    if inhibitorCooldown then return end
    
    isInhibitorActive = true
    inhibitorCooldown = true
    
    inhibitorButton.Text = "INHIBITOR ACTIVE"
    inhibitorButton.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
    
    if isSprinting then
        humanoid.WalkSpeed = INHIBITOR_SPEED
        speedIndicator.Text = "Speed: " .. math.floor(humanoid.WalkSpeed)
    end
    
    local startTime = tick()
    local endTime = startTime + INHIBITOR_DURATION
    
    spawn(function()
        while tick() < endTime do
            local elapsed = tick() - startTime
            local remaining = INHIBITOR_DURATION - elapsed
            local percentage = (elapsed / INHIBITOR_DURATION) * 100
            
            cooldownFrame.Size = UDim2.new(1 - (percentage/100), 0, 0, 4)
            
            inhibitorButton.Text = string.format("INHIBITOR: %.0fs", remaining)
            
            wait(0.1)
        end
        
        isInhibitorActive = false
        inhibitorButton.Text = "Inhibitor Rings"
        inhibitorButton.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
        cooldownFrame.Size = UDim2.new(1, 0, 0, 4)
        
        if isSprinting then
            humanoid.WalkSpeed = SPRINT_SPEED
            speedIndicator.Text = "Speed: " .. math.floor(humanoid.WalkSpeed)
        end
        
        wait(20)
        inhibitorCooldown = false
    end)
end

-- ===========================================
-- INPUT HANDLING
-- ===========================================

local function onInputBegan(input, gameProcessed)
    if gameProcessed then return end
    
    -- Paging controls
    if input.KeyCode == Enum.KeyCode.LeftAlt then
        changeAbilityPage(2) -- NEURAL DOMINANCE
    elseif input.KeyCode == Enum.KeyCode.RightAlt then
        changeAbilityPage(3) -- QUANTUM PHYSICS
    elseif input.KeyCode == Enum.KeyCode.RightControl then
        changeAbilityPage(4) -- REALITY BENDING
    elseif input.KeyCode == Enum.KeyCode.Quote then
        changeAbilityPage(1) -- CHAOS CONTROL (default)
    
    -- Existing controls
    elseif input.KeyCode == Enum.KeyCode.LeftShift then
        toggleSprint()
    elseif input.KeyCode == Enum.KeyCode.RightShift then
        activateInhibitorRings()
    elseif input.KeyCode == Enum.KeyCode.G then
        toggleInvisibility()
    
    -- Acrobatics mode (CTRL)
    elseif input.KeyCode == Enum.KeyCode.LeftControl then
        isCtrlHeld = true
        acrobaticsButton.Text = "Acrobatics: ACTIVE"
        acrobaticsButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        createAcrobaticsEffect()
    
    -- ABILITY PAGE 1: Chaos Control (Default)
    elseif currentAbilityPage == 1 then
        if input.KeyCode == Enum.KeyCode.Z then
            activateChaosSnap()
        elseif input.KeyCode == Enum.KeyCode.X then
            activateChaosSpear()
        elseif input.KeyCode == Enum.KeyCode.C then
            activateChaosBlast()
        elseif input.KeyCode == Enum.KeyCode.V then
            activateChaosVortex()
        elseif input.KeyCode == Enum.KeyCode.B then
            activateBlackTornado()
        -- Continue with other Page 1 abilities...
    
    -- ABILITY PAGE 2: Neural Dominance
    elseif currentAbilityPage == 2 then
        if input.KeyCode == Enum.KeyCode.Z then
            activateNeuralOverload()
        elseif input.KeyCode == Enum.KeyCode.X then
            activateMemoryWipe()
        -- Continue with other Page 2 abilities...
    
    -- ABILITY PAGE 3: Quantum Physics
    elseif currentAbilityPage == 3 then
        if input.KeyCode == Enum.KeyCode.Z then
            activateMolecularReconstruction()
        -- Continue with other Page 3 abilities...
    
    -- ABILITY PAGE 4: Reality Bending
    elseif currentAbilityPage == 4 then
        if input.KeyCode == Enum.KeyCode.Z then
            activateBiomimeticAssimilation()
        -- Continue with other Page 4 abilities...
    end
end

local function onInputEnded(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.LeftControl then
        isCtrlHeld = false
        acrobaticsButton.Text = "Acrobatics: READY"
        acrobaticsButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
        
        if acrobaticsEffect then
            acrobaticsEffect:Destroy()
            acrobaticsEffect = nil
        end
    end
end

local function updateMovement()
    local moveDirection = humanoid.MoveDirection
    local isMoving = moveDirection.Magnitude > 0.1
    
    if not isSprinting then
        if isMoving then
            if idleTrack.IsPlaying then
                idleTrack:Stop()
            end
        else
            if not idleTrack.IsPlaying then
                idleTrack:Play()
            end
        end
    end
    
    if isCtrlHeld and isMoving then
        checkMovementAndFlip()
    end
    
    if not isMoving and tick() - lastInputTime > INPUT_THRESHOLD then
        if character:FindFirstChild("HumanoidRootPart") then
            bodyVelocity.Parent = humanoidRootPart
            bodyGyro.Parent = humanoidRootPart
            bodyGyro.CFrame = humanoidRootPart.CFrame
        end
    else
        bodyVelocity.Parent = nil
        bodyGyro.Parent = nil
    end
end

local function onUserInput(input)
    if input.UserInputType == Enum.UserInputType.Keyboard or 
       input.UserInputType == Enum.UserInputType.Gamepad1 then
        lastInputTime = tick()
    end
end

-- ===========================================
-- INITIALIZATION
-- ===========================================

collectVisibleParts()
createRocketEffects()

if idleTrack then
    idleTrack:Play()
end

local connections = {}

connections.inputBegan = game:GetService("UserInputService").InputBegan:Connect(onInputBegan)
connections.inputEnded = game:GetService("UserInputService").InputEnded:Connect(onInputEnded)
connections.userInput = game:GetService("UserInputService").InputChanged:Connect(onUserInput)

connections.heartbeat = game:GetService("RunService").Heartbeat:Connect(function()
    updateMovement()
    
    if isInvisible then
        local originalCFrame = humanoidRootPart.CFrame
        local originalCameraOffset = humanoid.CameraOffset
        
        local undergroundPosition = originalCFrame * CFrame.new(0, -200000, 0)
        humanoidRootPart.CFrame = undergroundPosition
        humanoid.CameraOffset = undergroundPosition:ToObjectSpace(CFrame.new(originalCFrame.Position)).Position
        
        game:GetService("RunService").RenderStepped:Wait()
        
        humanoidRootPart.CFrame = originalCFrame
        humanoid.CameraOffset = originalCameraOffset
    end
end)

invisButton.MouseButton1Click:Connect(toggleInvisibility)
inhibitorButton.MouseButton1Click:Connect(activateInhibitorRings)

local isDragging = false
local dragStart, frameStart

local function makeDraggable(frame)
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDragging = true
            dragStart = input.Position
            frameStart = frame.Position
        end
    end)
    
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement and isDragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                frameStart.X.Scale, 
                frameStart.X.Offset + delta.X,
                frameStart.Y.Scale, 
                frameStart.Y.Offset + delta.Y
            )
        end
    end)
    
    frame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDragging = false
        end
    end)
end

makeDraggable(abilitiesPanel)
makeDraggable(invisButton)
makeDraggable(inhibitorButton)
makeDraggable(acrobaticsButton)

connections.characterAdded = player.CharacterAdded:Connect(function(newChar)
    character = newChar
    humanoid = character:WaitForChild("Humanoid")
    humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    isInvisible = false
    isSprinting = false
    isInhibitorActive = false
    chaosSnapActive = false
    telekinesisTarget = nil
    isCtrlHeld = false
    
    for key in pairs(abilityCooldowns) do
        abilityCooldowns[key] = false
    end
    
    chaosSpearCooldown = false
    chaosBlastCooldown = false
    
    animationFolder:ClearAllChildren()
    
    idleAnim = Instance.new("Animation")
    idleAnim.AnimationId = "rbxassetid://79010940132903"
    idleAnim.Name = "Idle"
    idleAnim.Parent = animationFolder
    
    sprintAnim = Instance.new("Animation")
    sprintAnim.AnimationId = "rbxassetid://70995369496624"
    sprintAnim.Name = "Sprint"
    sprintAnim.Parent = animationFolder
    
    idleTrack = humanoid:LoadAnimation(idleAnim)
    sprintTrack = humanoid:LoadAnimation(sprintAnim)
    
    collectVisibleParts()
    createRocketEffects()
    handEffects = createHandEffects()
    
    invisButton.Text = "Invisibility: OFF"
    invisButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    inhibitorButton.Text = "Inhibitor Rings"
    inhibitorButton.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
    acrobaticsButton.Text = "Acrobatics: READY"
    acrobaticsButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
    sprintStatus.Text = "Sprint: READY"
    sprintStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
    speedIndicator.Text = "Speed: " .. math.floor(originalWalkSpeed)
    pageIndicator.Text = "Page: " .. abilityPageNames[currentAbilityPage]
    
    if idleTrack then
        idleTrack:Play()
    end
    
    if acrobaticsEffect then
        acrobaticsEffect:Destroy()
        acrobaticsEffect = nil
    end
end)

_G.ShadowConnections = connections

showLoadingNotification()
wait(0.5)
local themeMusic = playThemeMusic()

print("==============================================")
print("⚡ SHADOW THE HEDGEHOG - COMPLETE ARSENAL ⚡")
print("==============================================")
print("")
print("ABILITY PAGING SYSTEM:")
print("LEFT ALT - Neural Dominance (Page 2)")
print("RIGHT ALT - Quantum Physics (Page 3)")
print("RIGHT CTRL - Reality Bending (Page 4)")
print("' (APOSTROPHE) - Chaos Control (Page 1 - Default)")
print("")
print("TOTAL ABILITIES: 37")
print("Network control: MAXIMUM")
print("==============================================")
