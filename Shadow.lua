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
    title.Text = "âš¡ SHADOW THE HEDGEHOG âš¡"
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
    musicTitle.Text = "ðŸŽµ CHAOS THEME"
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
    toggleButton.Text = "ðŸ”‡"
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
            toggleButton.Text = "ðŸ”ˆ"
            toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        else
            sound.Volume = originalVolume
            toggleButton.Text = "ðŸ”Š"
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

-- NEW ABILITY COOLDOWNS
local abilityCooldowns = {
    V = false, -- Chaos Vortex
    B = false, -- Black Tornado
    N = false, -- Chaos Rift
    M = false, -- Shadow Clone
    L = false, -- Chaos Cage
    K = false, -- Time Stop
    J = false, -- Chaos Wave
    H = false, -- Teleport Dash
    F = false, -- Gravity Field
    Q = false, -- Energy Drain
    E = false, -- Chaos Shield
    R = false, -- Meteor Strike
    T = false, -- Chaos Chains
    Y = false, -- Soul Steal
    U = false, -- Dimension Shift
    P = false  -- Super Form
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
    effect.Color = Color3.fromRGB(255, 165, 0) -- Orange for acrobatics
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
    
    -- Weld effect to character
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
    
    -- Create acrobatics effect if not exists
    if not acrobaticsEffect then
        createAcrobaticsEffect()
    end
    
    -- Calculate rotation axis based on movement direction
    local rotationAxis
    if flipAxis == "X" then
        rotationAxis = Vector3.new(1, 0, 0) -- Forward/backward flip
    elseif flipAxis == "Z" then
        rotationAxis = Vector3.new(0, 0, 1) -- Side flip
    else
        rotationAxis = Vector3.new(0, 1, 0) -- Default: side flip
    end
    
    -- Calculate rotation amount (360 degrees = full flip)
    local rotationAmount = 360 * flipDirection
    
    -- Store original CFrame
    local originalCFrame = humanoidRootPart.CFrame
    
    -- Perform flip animation
    local flipStartTime = tick()
    local flipDuration = FLIP_DURATION
    
    -- Apply upward force for jump effect
    humanoidRootPart.Velocity = humanoidRootPart.Velocity + Vector3.new(0, 50, 0)
    
    -- Create flip trail effect
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
    
    -- Add flip sound effect
    local flipSound = Instance.new("Sound")
    flipSound.SoundId = "rbxassetid://9111275567" -- Whoosh sound
    flipSound.Volume = 0.5
    flipSound.Parent = humanoidRootPart
    flipSound:Play()
    
    -- Rotation loop
    while tick() - flipStartTime < flipDuration do
        if not humanoidRootPart or not humanoidRootPart.Parent then break end
        
        local elapsed = tick() - flipStartTime
        local progress = elapsed / flipDuration
        
        -- Calculate current rotation
        local currentRotation = rotationAmount * progress
        
        -- Apply rotation
        humanoidRootPart.CFrame = originalCFrame * CFrame.fromAxisAngle(rotationAxis, math.rad(currentRotation))
        
        wait()
    end
    
    -- Cleanup
    if trail then trail:Destroy() end
    if flipSound then flipSound:Destroy() end
    
    -- Restore original rotation (snap back to upright)
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
    
    -- Check which movement keys are pressed
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
    
    -- If no movement keys are pressed, don't flip
    if not hasMovement then return end
    
    -- Normalize direction
    if moveDirection.Magnitude > 0 then
        moveDirection = moveDirection.Unit
        
        -- Determine flip type based on dominant direction
        local absX = math.abs(moveDirection.X)
        local absZ = math.abs(moveDirection.Z)
        
        if absZ > absX then
            -- Forward/backward movement - do forward/backward flip
            if moveDirection.Z < 0 then
                -- W pressed - forward flip
                performFlip("X", 1)
            else
                -- S pressed - backward flip
                performFlip("X", -1)
            end
        else
            -- Side movement - do side flip
            if moveDirection.X < 0 then
                -- A pressed - left side flip
                performFlip("Z", 1)
            else
                -- D pressed - right side flip
                performFlip("Z", -1)
            end
        end
    end
end

-- Function to claim network ownership
-- Advanced Network Ownership System
-- Pure object manipulation with touch-release mechanics

-- Network tracking system
local claimedParts = {}
local touchConnections = {}
local claimTimestamps = {}
local MAX_CLAIMS = 150
local CLAIM_DURATION = 180 -- 3 minutes
local RELEASE_RANGE = 75 -- Release if object gets this far
local CLAIM_PRIORITY = {
    CAN_COLLIDE = 1,
    UNANCHORED = 2,
    SMALL_SIZE = 3,
    CLOSE_RANGE = 4
}

-- Enhanced claim function with priority system
local function claimNetworkOwnership(range)
    local claimed = 0
    local rootPos = humanoidRootPart.Position
    
    -- Clean up old claims first
    cleanupOldClaims()
    
    -- Don't exceed max claims
    if countActiveClaims() >= MAX_CLAIMS then
        return 0
    end
    
    -- Priority queue for objects
    local priorityQueue = {}
    
    -- First pass: collect and score objects
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") and obj:CanSetNetworkOwnership() then
            local distance = (obj.Position - rootPos).Magnitude
            
            if distance <= range then
                -- Skip if already claimed by us
                if claimedParts[obj] then
                    claimed = claimed + 1
                    continue
                end
                
                -- Skip player's own parts
                if obj:IsDescendantOf(character) then
                    continue
                end
                
                -- Skip anchored map parts (but not all anchored)
                if obj.Anchored and (obj.Name == "Baseplate" or obj.Name == "Terrain") then
                    continue
                end
                
                -- Calculate priority score
                local score = 0
                
                -- Higher priority for collidable objects
                if obj.CanCollide then
                    score = score + CLAIM_PRIORITY.CAN_COLLIDE
                end
                
                -- Higher priority for unanchored objects
                if not obj.Anchored then
                    score = score + CLAIM_PRIORITY.UNANCHORED
                end
                
                -- Higher priority for smaller objects
                local volume = obj.Size.X * obj.Size.Y * obj.Size.Z
                if volume < 100 then
                    score = score + CLAIM_PRIORITY.SMALL_SIZE
                end
                
                -- Higher priority for closer objects
                local distanceRatio = 1 - (distance / range)
                score = score + (distanceRatio * CLAIM_PRIORITY.CLOSE_RANGE)
                
                -- Add to priority queue
                table.insert(priorityQueue, {
                    part = obj,
                    score = score,
                    distance = distance
                })
            end
        end
    end
    
    -- Sort by priority score (highest first)
    table.sort(priorityQueue, function(a, b)
        return a.score > b.score
    end)
    
    -- Claim top priority objects
    for _, data in pairs(priorityQueue) do
        if claimed >= MAX_CLAIMS - countActiveClaims() then
            break
        end
        
        local obj = data.part
        
        -- Attempt to claim ownership
        local success = pcall(function()
            local currentOwner = obj:GetNetworkOwner()
            
            -- Only claim if not already owned by another player
            if not currentOwner or currentOwner == player or currentOwner == nil then
                obj:SetNetworkOwner(player)
                
                -- Store claim data
                claimedParts[obj] = {
                    claimTime = tick(),
                    originalOwner = currentOwner,
                    distance = data.distance,
                    priority = data.score
                }
                
                -- Setup touch detection
                setupTouchRelease(obj)
                
                -- Setup distance monitoring
                setupDistanceMonitoring(obj)
                
                claimed = claimed + 1
                
                -- Print debug info
                print(string.format("[Network] Claimed: %s (Score: %d, Dist: %.1f)", 
                    obj.Name, data.score, data.distance))
            end
        end)
        
        if not success then
            claimedParts[obj] = nil
        end
    end
    
    -- Setup periodic cleanup
    if not _G.NetworkCleanupRunning then
        startCleanupRoutine()
    end
    
    return claimed
end

-- Setup touch release mechanism
local function setupTouchRelease(part)
    if touchConnections[part] then
        touchConnections[part]:Disconnect()
    end
    
    local connection = part.Touched:Connect(function(otherPart)
        if not part or not part.Parent then
            if touchConnections[part] then
                touchConnections[part]:Disconnect()
                touchConnections[part] = nil
            end
            return
        end
        
        -- Check if touched by another player
        local otherModel = otherPart.Parent
        if otherModel and otherModel:IsA("Model") then
            local otherPlayer = game:GetService("Players"):GetPlayerFromCharacter(otherModel)
            
            if otherPlayer and otherPlayer ~= player then
                -- Release ownership
                releaseOwnership(part, "touched by " .. otherPlayer.Name)
            end
        end
    end)
    
    touchConnections[part] = connection
end

-- Monitor distance and release if too far
local function setupDistanceMonitoring(part)
    local claimData = claimedParts[part]
    if not claimData then return end
    
    claimData.monitoring = true
    
    spawn(function()
        while claimData and claimData.monitoring and part and part.Parent do
            wait(2) -- Check every 2 seconds
            
            local currentDistance = (part.Position - humanoidRootPart.Position).Magnitude
            
            -- Release if object gets too far
            if currentDistance > RELEASE_RANGE * 2 then
                releaseOwnership(part, "too far away")
                break
            end
        end
    end)
end

-- Release ownership of a specific part
local function releaseOwnership(part, reason)
    if not part or not claimedParts[part] then return end
    
    pcall(function()
        if part:CanSetNetworkOwnership() then
            -- Try to return to original owner
            local originalOwner = claimedParts[part].originalOwner
            if originalOwner and originalOwner ~= player then
                part:SetNetworkOwner(originalOwner)
            else
                part:SetNetworkOwner(nil)
            end
        end
    end)
    
    -- Clean up connections
    if touchConnections[part] then
        touchConnections[part]:Disconnect()
        touchConnections[part] = nil
    end
    
    -- Stop monitoring
    if claimedParts[part] then
        claimedParts[part].monitoring = false
    end
    
    -- Remove from tracking
    claimedParts[part] = nil
    
    -- Debug output
    print(string.format("[Network] Released: %s (Reason: %s)", part.Name, reason or "unknown"))
end

-- Count active claims
local function countActiveClaims()
    local count = 0
    for part, data in pairs(claimedParts) do
        if part and part.Parent then
            count = count + 1
        end
    end
    return count
end

-- Clean up old or invalid claims
local function cleanupOldClaims()
    local currentTime = tick()
    local cleaned = 0
    
    for part, data in pairs(claimedParts) do
        if not part or not part.Parent then
            -- Part no longer exists
            if touchConnections[part] then
                touchConnections[part]:Disconnect()
                touchConnections[part] = nil
            end
            claimedParts[part] = nil
            cleaned = cleaned + 1
        elseif currentTime - data.claimTime > CLAIM_DURATION then
            -- Claim expired
            releaseOwnership(part, "claim expired")
            cleaned = cleaned + 1
        end
    end
    
    if cleaned > 0 then
        print(string.format("[Network] Cleaned up %d old claims", cleaned))
    end
    
    return cleaned
end

-- Release all claims
local function releaseAllClaims()
    local released = 0
    
    for part, _ in pairs(claimedParts) do
        if part and part.Parent then
            releaseOwnership(part, "manual release")
            released = released + 1
        end
    end
    
    print(string.format("[Network] Released all %d claims", released))
    return released
end

-- Start periodic cleanup routine
local function startCleanupRoutine()
    if _G.NetworkCleanupRunning then return end
    
    _G.NetworkCleanupRunning = true
    
    spawn(function()
        while _G.NetworkCleanupRunning do
            wait(30) -- Cleanup every 30 seconds
            cleanupOldClaims()
        end
    end)
end

-- Monitor for player interactions globally
local function monitorPlayerInteractions()
    for _, otherPlayer in pairs(game:GetService("Players"):GetPlayers()) do
        if otherPlayer ~= player then
            -- Monitor character changes
            otherPlayer.CharacterAdded:Connect(function(char)
                wait(1) -- Wait for character to load
                
                -- Setup touch detection for all claimed parts with new character
                for part, _ in pairs(claimedParts) do
                    if part and part.Parent then
                        setupTouchRelease(part)
                    end
                end
            end)
        end
    end
end

-- Initialize monitoring
spawn(function()
    wait(3) -- Wait a bit for everything to load
    monitorPlayerInteractions()
    startCleanupRoutine()
end)

-- Handle new players joining
game:GetService("Players").PlayerAdded:Connect(function(newPlayer)
    if newPlayer ~= player then
        if newPlayer.Character then
            -- Setup touch detection for existing claims
            for part, _ in pairs(claimedParts) do
                if part and part.Parent then
                    setupTouchRelease(part)
                end
            end
        end
    end
end)

-- Character respawn handling
player.CharacterAdded:Connect(function()
    wait(1) -- Wait for character to load
    
    -- Re-establish touch detection for all claims
    for part, _ in pairs(claimedParts) do
        if part and part.Parent then
            setupTouchRelease(part)
            setupDistanceMonitoring(part)
        end
    end
end)

-- Initialize global connections table if it doesn't exist
if not _G.ShadowConnections then
    _G.ShadowConnections = {}
end

-- Add cleanup to global connections
table.insert(_G.ShadowConnections, {
    Name = "NetworkSystemCleanup",
    Disconnect = function()
        _G.NetworkCleanupRunning = false
        releaseAllClaims()
    end
})

-- Utility function to get claim statistics
local function getClaimStats()
    local stats = {
        total = countActiveClaims(),
        byDistance = {close = 0, medium = 0, far = 0},
        byType = {collidable = 0, anchored = 0, unanchored = 0}
    }
    
    for part, data in pairs(claimedParts) do
        if part and part.Parent then
            -- Categorize by distance
            if data.distance <= 25 then
                stats.byDistance.close = stats.byDistance.close + 1
            elseif data.distance <= 75 then
                stats.byDistance.medium = stats.byDistance.medium + 1
            else
                stats.byDistance.far = stats.byDistance.far + 1
            end
            
            -- Categorize by type
            if part.CanCollide then
                stats.byType.collidable = stats.byType.collidable + 1
            end
            
            if part.Anchored then
                stats.byType.anchored = stats.byType.anchored + 1
            else
                stats.byType.unanchored = stats.byType.unanchored + 1
            end
        end
    end
    
    return stats
end

-- Debug command to show claim stats
local function debugClaimStats()
    local stats = getClaimStats()
    print("=== Network Claim Statistics ===")
    print(string.format("Total Claims: %d/%d", stats.total, MAX_CLAIMS))
    print(string.format("By Distance - Close: %d, Medium: %d, Far: %d", 
        stats.byDistance.close, stats.byDistance.medium, stats.byDistance.far))
    print(string.format("By Type - Collidable: %d, Anchored: %d, Unanchored: %d",
        stats.byType.collidable, stats.byType.anchored, stats.byType.unanchored))
    print("================================")
end

print("[Network] Advanced ownership system loaded")
print(string.format("Features: Priority claiming, Touch-release, %ds expiry, Max %d claims", 
    CLAIM_DURATION, MAX_CLAIMS))
print("Type 'debugClaimStats()' for claim statistics")

-- Function to unanchor everything in range
local function unanchorInRange(range)
    local unanchored = 0
    local rootPos = humanoidRootPart.Position
    
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") then
            local distance = (obj.Position - rootPos).Magnitude
            if distance <= range then
                pcall(function()
                    obj.Anchored = false
                    unanchored = unanchored + 1
                end)
            end
        end
    end
    
    return unanchored
end

-- Function to anchor everything in range
local function anchorInRange(range)
    local anchored = 0
    local rootPos = humanoidRootPart.Position
    
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") then
            local distance = (obj.Position - rootPos).Magnitude
            if distance <= range then
                pcall(function()
                    obj.Anchored = true
                    anchored = anchored + 1
                end)
            end
        end
    end
    
    return anchored
end

-- NEW ABILITY: V - Chaos Vortex
local function activateChaosVortex()
    if abilityCooldowns.V then return end
    abilityCooldowns.V = true
    
    claimNetworkOwnership(chaosRange)
    
    -- Create vortex center
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
    
    -- Create vortex particles
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
    
    -- Vortex sound
    local vortexSound = Instance.new("Sound")
    vortexSound.SoundId = "rbxassetid://9111275566"
    vortexSound.Volume = 0.8
    vortexSound.Looped = true
    vortexSound.Parent = vortexCenter
    vortexSound:Play()
    
    -- Suck objects into vortex
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
            
            -- Expand vortex
            vortexCenter.Size = vortexCenter.Size + Vector3.new(0.5, 0.5, 0.5)
            vortexLight.Range = vortexLight.Range + 2
            
            wait(0.1)
        end
        
        -- Explode vortex
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

-- NEW ABILITY: B - Black Tornado
local function activateBlackTornado()
    if abilityCooldowns.B then return end
    abilityCooldowns.B = true
    
    claimNetworkOwnership(chaosRange)
    
    -- Create tornado base
    local tornadoBase = Instance.new("Part")
    tornadoBase.Size = Vector3.new(30, 1, 30)
    tornadoBase.Position = humanoidRootPart.Position
    tornadoBase.Material = Enum.Material.Neon
    tornadoBase.Color = Color3.fromRGB(0, 0, 0)
    tornadoBase.Transparency = 0.7
    tornadoBase.Anchored = true
    tornadoBase.CanCollide = false
    tornadoBase.Parent = workspace
    
    -- Create tornado column
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
        
        -- Rotating effect
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
    
    -- Suck and spin objects
    spawn(function()
        for i = 1, 60 do
            local rootPos = humanoidRootPart.Position
            
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
                    local distance = (part.Position - rootPos).Magnitude
                    if distance <= chaosRange then
                        -- Spiral upward motion
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
                        
                        -- Add spin
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
        
        -- Cleanup
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

-- NEW ABILITY: N - Chaos Rift
local function activateChaosRift()
    if abilityCooldowns.N then return end
    abilityCooldowns.N = true
    
    local mouse = player:GetMouse()
    local targetPosition = mouse.Hit.Position
    
    -- Create rift
    local rift = Instance.new("Part")
    rift.Size = Vector3.new(20, 30, 5)
    rift.Position = targetPosition
    rift.Material = Enum.Material.Neon
    rift.Color = Color3.fromRGB(150, 0, 255)
    rift.Transparency = 0.3
    rift.Anchored = true
    rift.CanCollide = false
    rift.Parent = workspace
    
    local riftLight = Instance.new("PointLight")
    riftLight.Color = Color3.fromRGB(150, 0, 255)
    riftLight.Range = 100
    riftLight.Brightness = 8
    riftLight.Parent = rift
    
    -- Create portal effect
    local surfaceGui = Instance.new("SurfaceGui")
    surfaceGui.Face = Enum.NormalId.Front
    surfaceGui.Parent = rift
    
    local portalFrame = Instance.new("Frame")
    portalFrame.Size = UDim2.new(1, 0, 1, 0)
    portalFrame.BackgroundColor3 = Color3.fromRGB(100, 0, 200)
    portalFrame.BackgroundTransparency = 0.5
    portalFrame.Parent = surfaceGui
    
    -- Claim ownership around rift
    claimNetworkOwnership(150)
    
    -- Suck objects into rift
    spawn(function()
        for i = 1, 30 do
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
                    local distance = (part.Position - targetPosition).Magnitude
                    if distance <= 100 then
                        local direction = (targetPosition - part.Position).Unit
                        local force = Instance.new("BodyVelocity")
                        force.Velocity = direction * 150
                        force.MaxForce = Vector3.new(10000, 10000, 10000)
                        force.Parent = part
                        
                        game:GetService("Debris"):AddItem(force, 0.1)
                    end
                end
            end
            
            wait(0.1)
        end
        
        -- Rift collapse
        for i = 1, 20 do
            rift.Transparency = 0.3 + (i * 0.035)
            riftLight.Brightness = 8 - (i * 0.4)
            rift.Size = rift.Size - Vector3.new(1, 1.5, 0.25)
            wait(0.05)
        end
        
        rift:Destroy()
        
        wait(12)
        abilityCooldowns.N = false
    end)
end

-- NEW ABILITY: M - Shadow Clone
local function activateShadowClone()
    if abilityCooldowns.M then return end
    abilityCooldowns.M = true
    
    -- Create clone
    local clone = character:Clone()
    clone.Name = "ShadowClone"
    
    -- Position clone
    local offset = humanoidRootPart.CFrame.lookVector * 10
    clone:SetPrimaryPartCFrame(humanoidRootPart.CFrame + offset)
    
    -- Make clone black/red
    for _, part in pairs(clone:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Color = Color3.fromRGB(50, 50, 50)
            if part:IsA("MeshPart") then
                part.TextureID = ""
            end
        end
    end
    
    -- Add clone glow
    local cloneGlow = Instance.new("PointLight")
    cloneGlow.Color = Color3.fromRGB(255, 0, 0)
    cloneGlow.Range = 20
    cloneGlow.Brightness = 3
    cloneGlow.Parent = clone:FindFirstChild("HumanoidRootPart")
    
    clone.Parent = workspace
    
    -- Make clone mimic movements
    spawn(function()
        local cloneRoot = clone:WaitForChild("HumanoidRootPart")
        local cloneHumanoid = clone:WaitForChild("Humanoid")
        
        for i = 1, 100 do
            if clone and clone.Parent then
                -- Follow player with slight delay
                local targetPos = humanoidRootPart.Position + (humanoidRootPart.CFrame.lookVector * -5)
                cloneRoot.CFrame = CFrame.new(targetPos) * CFrame.Angles(0, math.rad(i * 2), 0)
                
                -- Attack nearby objects
                for _, part in pairs(workspace:GetDescendants()) do
                    if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) and not part:IsDescendantOf(clone) then
                        local distance = (part.Position - cloneRoot.Position).Magnitude
                        if distance <= 30 then
                            local direction = (part.Position - cloneRoot.Position).Unit
                            local force = Instance.new("BodyVelocity")
                            force.Velocity = direction * 100
                            force.MaxForce = Vector3.new(5000, 5000, 5000)
                            force.Parent = part
                            game:GetService("Debris"):AddItem(force, 0.5)
                        end
                    end
                end
            end
            wait(0.1)
        end
        
        -- Clone vanish
        if clone and clone.Parent then
            for i = 1, 20 do
                for _, part in pairs(clone:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.Transparency = i * 0.05
                    end
                end
                wait(0.05)
            end
            clone:Destroy()
        end
        
        wait(25)
        abilityCooldowns.M = false
    end)
end

-- NEW ABILITY: L - Chaos Cage
local function activateChaosCage()
    if abilityCooldowns.L then return end
    abilityCooldowns.L = true
    
    -- Create cage walls
    local cageSize = 50
    local cageParts = {}
    
    -- Bottom
    local bottom = Instance.new("Part")
    bottom.Size = Vector3.new(cageSize, 2, cageSize)
    bottom.Position = humanoidRootPart.Position - Vector3.new(0, 25, 0)
    bottom.Material = Enum.Material.Neon
    bottom.Color = Color3.fromRGB(255, 0, 100)
    bottom.Transparency = 0.7
    bottom.Anchored = true
    bottom.CanCollide = true
    bottom.Parent = workspace
    table.insert(cageParts, bottom)
    
    -- Top
    local top = bottom:Clone()
    top.Position = humanoidRootPart.Position + Vector3.new(0, 25, 0)
    top.Parent = workspace
    table.insert(cageParts, top)
    
    -- Walls
    local wallPositions = {
        Vector3.new(cageSize/2, 0, 0),
        Vector3.new(-cageSize/2, 0, 0),
        Vector3.new(0, 0, cageSize/2),
        Vector3.new(0, 0, -cageSize/2)
    }
    
    local wallSizes = {
        Vector3.new(2, 50, cageSize),
        Vector3.new(2, 50, cageSize),
        Vector3.new(cageSize, 50, 2),
        Vector3.new(cageSize, 50, 2)
    }
    
    for i = 1, 4 do
        local wall = Instance.new("Part")
        wall.Size = wallSizes[i]
        wall.Position = humanoidRootPart.Position + wallPositions[i]
        wall.Material = Enum.Material.Neon
        wall.Color = Color3.fromRGB(255, 0, 100)
        wall.Transparency = 0.7
        wall.Anchored = true
        wall.CanCollide = true
        wall.Parent = workspace
        table.insert(cageParts, wall)
    end
    
    -- Force field inside cage
    spawn(function()
        for i = 1, 30 do
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
                    local distance = (part.Position - humanoidRootPart.Position).Magnitude
                    if distance <= cageSize/2 then
                        -- Push toward center with oscillation
                        local direction = (humanoidRootPart.Position - part.Position).Unit
                        local force = Instance.new("BodyVelocity")
                        force.Velocity = direction * (50 + math.sin(tick() * 10) * 20)
                        force.MaxForce = Vector3.new(5000, 5000, 5000)
                        force.Parent = part
                        game:GetService("Debris"):AddItem(force, 0.1)
                    end
                end
            end
            wait(0.1)
        end
        
        -- Cage collapse
        for i = 1, 20 do
            for _, cagePart in pairs(cageParts) do
                if cagePart and cagePart.Parent then
                    cagePart.Transparency = 0.7 + (i * 0.015)
                    cagePart.Color = Color3.fromRGB(255, 100 - (i * 5), 100 - (i * 5))
                end
            end
            wait(0.05)
        end
        
        for _, cagePart in pairs(cageParts) do
            cagePart:Destroy()
        end
        
        wait(18)
        abilityCooldowns.L = false
    end)
end

-- NEW ABILITY: K - Time Stop
local function activateTimeStop()
    if abilityCooldowns.K then return end
    abilityCooldowns.K = true
    
    claimNetworkOwnership(chaosRange * 2)
    
    -- Create time stop effect
    local timeSphere = Instance.new("Part")
    timeSphere.Size = Vector3.new(1, 1, 1)
    timeSphere.Position = humanoidRootPart.Position
    timeSphere.Material = Enum.Material.Neon
    timeSphere.Color = Color3.fromRGB(0, 255, 255)
    timeSphere.Transparency = 0.5
    timeSphere.Anchored = true
    timeSphere.CanCollide = false
    timeSphere.Shape = Enum.PartType.Ball
    timeSphere.Parent = workspace
    
    local timeLight = Instance.new("PointLight")
    timeLight.Color = Color3.fromRGB(0, 255, 255)
    timeLight.Range = 500
    timeLight.Brightness = 5
    timeLight.Parent = timeSphere
    
    -- Stop all objects
    local stoppedObjects = {}
    
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
            local distance = (part.Position - humanoidRootPart.Position).Magnitude
            if distance <= chaosRange * 2 then
                local velocity = Instance.new("BodyVelocity")
                velocity.Velocity = Vector3.new(0, 0, 0)
                velocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                velocity.Parent = part
                
                local gyro = Instance.new("BodyGyro")
                gyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                gyro.CFrame = part.CFrame
                gyro.Parent = part
                
                table.insert(stoppedObjects, {
                    Part = part,
                    Velocity = velocity,
                    Gyro = gyro
                })
                
                -- Time stop visual
                local timeGlow = Instance.new("PointLight")
                timeGlow.Color = Color3.fromRGB(0, 200, 255)
                timeGlow.Range = 10
                timeGlow.Brightness = 2
                timeGlow.Parent = part
                
                local timeBox = Instance.new("SelectionBox")
                timeBox.Adornee = part
                timeBox.Color3 = Color3.fromRGB(0, 200, 255)
                timeBox.Transparency = 0.7
                timeBox.Parent = part
            end
        end
    end
    
    -- Expand time sphere
    for i = 1, 40 do
        timeSphere.Size = timeSphere.Size + Vector3.new(chaosRange/20, chaosRange/20, chaosRange/20)
        timeSphere.Transparency = 0.5 - (i * 0.0125)
        timeLight.Brightness = 5 + (i * 0.25)
        wait(0.1)
    end
    
    wait(5) -- Time stop duration
    
    -- Release everything
    for _, data in pairs(stoppedObjects) do
        if data.Part and data.Part.Parent then
            if data.Velocity then data.Velocity:Destroy() end
            if data.Gyro then data.Gyro:Destroy() end
            
            -- Remove visual effects
            for _, child in pairs(data.Part:GetChildren()) do
                if child:IsA("PointLight") or child:IsA("SelectionBox") then
                    child:Destroy()
                end
            end
        end
    end
    
    -- Time sphere collapse
    for i = 1, 20 do
        timeSphere.Transparency = 0 + (i * 0.05)
        timeLight.Brightness = 15 - (i * 0.75)
        wait(0.05)
    end
    
    timeSphere:Destroy()
    
    wait(30) -- Long cooldown for time manipulation
    abilityCooldowns.K = false
end

-- NEW ABILITY: J - Chaos Wave
local function activateChaosWave()
    if abilityCooldowns.J then return end
    abilityCooldowns.J = true
    
    local waveDirection = humanoidRootPart.CFrame.lookVector
    
    -- Create expanding wave
    for wave = 1, 5 do
        local waveRing = Instance.new("Part")
        waveRing.Size = Vector3.new(10, 1, 10)
        waveRing.Position = humanoidRootPart.Position
        waveRing.Material = Enum.Material.Neon
        waveRing.Color = Color3.fromRGB(255, 100, 0)
        waveRing.Transparency = 0.3
        waveRing.Anchored = true
        waveRing.CanCollide = false
        waveRing.Shape = Enum.PartType.Cylinder
        waveRing.Parent = workspace
    
        local waveLight = Instance.new("PointLight")
        waveLight.Color = Color3.fromRGB(255, 100, 0)
        waveLight.Range = 100
        waveLight.Brightness = 5
        waveLight.Parent = waveRing
        
        -- Expand wave
        spawn(function()
            for i = 1, 40 do
                if waveRing and waveRing.Parent then
                    local sizeIncrease = i * 5
                    waveRing.Size = Vector3.new(sizeIncrease, 1, sizeIncrease)
                    waveRing.Transparency = 0.3 + (i * 0.0175)
                    waveLight.Range = waveLight.Range + 5
                    
                    -- Push objects with wave
                    for _, part in pairs(workspace:GetDescendants()) do
                        if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
                            local distance = (part.Position - humanoidRootPart.Position).Magnitude
                            if distance <= sizeIncrease/2 and distance > (sizeIncrease/2) - 20 then
                                local pushForce = Instance.new("BodyVelocity")
                                pushForce.Velocity = waveDirection * 200 + Vector3.new(0, 50, 0)
                                pushForce.MaxForce = Vector3.new(10000, 10000, 10000)
                                pushForce.Parent = part
                                game:GetService("Debris"):AddItem(pushForce, 0.5)
                            end
                        end
                    end
                end
                wait(0.05)
            end
            
            if waveRing and waveRing.Parent then
                waveRing:Destroy()
            end
        end)
        
        wait(0.3)
    end
    
    wait(10)
    abilityCooldowns.J = false
end

-- NEW ABILITY: H - Teleport Dash
local function activateTeleportDash()
    if abilityCooldowns.H then return end
    abilityCooldowns.H = true
    
    local mouse = player:GetMouse()
    local targetPosition = mouse.Hit.Position
    
    -- Create teleport effect at start
    local startEffect = Instance.new("Part")
    startEffect.Size = Vector3.new(10, 10, 10)
    startEffect.Position = humanoidRootPart.Position
    startEffect.Material = Enum.Material.Neon
    startEffect.Color = Color3.fromRGB(0, 200, 255)
    startEffect.Transparency = 0.3
    startEffect.Anchored = true
    startEffect.CanCollide = false
    startEffect.Shape = Enum.PartType.Ball
    startEffect.Parent = workspace
    
    -- Create teleport trail
    local trailPoints = 20
    local step = (targetPosition - humanoidRootPart.Position) / trailPoints
    
    for i = 1, trailPoints do
        local trailPart = Instance.new("Part")
        trailPart.Size = Vector3.new(3, 3, 3)
        trailPart.Position = humanoidRootPart.Position + (step * i)
        trailPart.Material = Enum.Material.Neon
        trailPart.Color = Color3.fromRGB(0, 150, 255)
        trailPart.Transparency = 0.5
        trailPart.Anchored = true
        trailPart.CanCollide = false
        trailPart.Parent = workspace
        
        game:GetService("Debris"):AddItem(trailPart, 0.5)
    end
    
    -- Teleport player
    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    
    -- Create arrival effect
    local endEffect = startEffect:Clone()
    endEffect.Position = targetPosition
    endEffect.Parent = workspace
    
    -- Claim ownership at new location
    claimNetworkOwnership(150)
    
    -- Cleanup effects
    game:GetService("Debris"):AddItem(startEffect, 1)
    game:GetService("Debris"):AddItem(endEffect, 1)
    
    wait(3)
    abilityCooldowns.H = false
end

-- NEW ABILITY: F - Gravity Field
local function activateGravityField()
    if abilityCooldowns.F then return end
    abilityCooldowns.F = true
    
    -- Create gravity well
    local gravityCenter = Instance.new("Part")
    gravityCenter.Size = Vector3.new(20, 20, 20)
    gravityCenter.Position = humanoidRootPart.Position + Vector3.new(0, 50, 0)
    gravityCenter.Material = Enum.Material.Neon
    gravityCenter.Color = Color3.fromRGB(150, 0, 150)
    gravityCenter.Transparency = 0.4
    gravityCenter.Anchored = true
    gravityCenter.CanCollide = false
    gravityCenter.Shape = Enum.PartType.Ball
    gravityCenter.Parent = workspace
    
    local gravityLight = Instance.new("PointLight")
    gravityLight.Color = Color3.fromRGB(150, 0, 150)
    gravityLight.Range = 300
    gravityLight.Brightness = 8
    gravityLight.Parent = gravityCenter
    
    -- Inverted gravity effect
    spawn(function()
        for i = 1, 60 do
            local centerPos = gravityCenter.Position
            
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
                    local distance = (part.Position - centerPos).Magnitude
                    if distance <= 200 then
                        -- Pull toward gravity center
                        local direction = (centerPos - part.Position).Unit
                        local force = Instance.new("BodyForce")
                        force.Force = direction * (part:GetMass() * 196.2 * 5) -- 5x gravity
                        force.Parent = part
                        game:GetService("Debris"):AddItem(force, 0.1)
                    end
                end
            end
            
            -- Rotate gravity center
            gravityCenter.CFrame = gravityCenter.CFrame * CFrame.Angles(0, math.rad(5), 0)
            
            wait(0.1)
        end
        
        -- Gravity collapse
        for i = 1, 20 do
            gravityCenter.Transparency = 0.4 + (i * 0.03)
            gravityLight.Brightness = 8 - (i * 0.4)
            gravityCenter.Size = gravityCenter.Size - Vector3.new(1, 1, 1)
            wait(0.05)
        end
        
        gravityCenter:Destroy()
        
        wait(15)
        abilityCooldowns.F = false
    end)
end

-- NEW ABILITY: Q - Energy Drain
local function activateEnergyDrain()
    if abilityCooldowns.Q then return end
    abilityCooldowns.Q = true
    
    -- Create drain particles
    local drainEmitter = Instance.new("ParticleEmitter")
    drainEmitter.Color = ColorSequence.new(Color3.fromRGB(255, 50, 0))
    drainEmitter.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 3),
        NumberSequenceKeypoint.new(1, 0)
    })
    drainEmitter.Transparency = NumberSequence.new(0.5)
    drainEmitter.Speed = NumberRange.new(50, 100)
    drainEmitter.Lifetime = NumberRange.new(0.5, 1)
    drainEmitter.Rate = 100
    drainEmitter.Acceleration = Vector3.new(0, -50, 0)
    drainEmitter.Parent = humanoidRootPart
    drainEmitter.Enabled = true
    
    -- Drain effect
    spawn(function()
        for i = 1, 30 do
            local rootPos = humanoidRootPart.Position
            
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
                    local distance = (part.Position - rootPos).Magnitude
                    if distance <= chaosRange then
                        -- Pull energy particles toward player
                        local energyPart = Instance.new("Part")
                        energyPart.Size = Vector3.new(1, 1, 1)
                        energyPart.Position = part.Position
                        energyPart.Material = Enum.Material.Neon
                        energyPart.Color = Color3.fromRGB(255, 100, 0)
                        energyPart.Transparency = 0.3
                        energyPart.Anchored = false
                        energyPart.CanCollide = false
                        energyPart.Parent = workspace
                        
                        local bodyVelocity = Instance.new("BodyVelocity")
                        bodyVelocity.Velocity = (rootPos - part.Position).Unit * 100
                        bodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
                        bodyVelocity.Parent = energyPart
                        
                        game:GetService("Debris"):AddItem(energyPart, 2)
                        game:GetService("Debris"):AddItem(bodyVelocity, 2)
                        
                        -- Weaken objects
                        local weakenForce = Instance.new("BodyVelocity")
                        weakenForce.Velocity = Vector3.new(0, -10, 0)
                        weakenForce.MaxForce = Vector3.new(1000, 1000, 1000)
                        weakenForce.Parent = part
                        game:GetService("Debris"):AddItem(weakenForce, 0.5)
                    end
                end
            end
            
            wait(0.1)
        end
        
        drainEmitter.Enabled = false
        drainEmitter:Destroy()
        
        wait(12)
        abilityCooldowns.Q = false
    end)
end

-- NEW ABILITY: E - Chaos Shield
local function activateChaosShield()
    if abilityCooldowns.E then return end
    abilityCooldowns.E = true
    
    -- Create shield sphere
    local shield = Instance.new("Part")
    shield.Size = Vector3.new(30, 30, 30)
    shield.Position = humanoidRootPart.Position
    shield.Material = Enum.Material.Neon
    shield.Color = Color3.fromRGB(0, 100, 255)
    shield.Transparency = 0.7
    shield.Anchored = false
    shield.CanCollide = false
    shield.Shape = Enum.PartType.Ball
    shield.Parent = workspace
    
    local weld = Instance.new("Weld")
    weld.Part0 = humanoidRootPart
    weld.Part1 = shield
    weld.C0 = CFrame.new()
    weld.Parent = shield
    
    local shieldLight = Instance.new("PointLight")
    shieldLight.Color = Color3.fromRGB(0, 100, 255)
    shieldLight.Range = 50
    shieldLight.Brightness = 5
    shieldLight.Parent = shield
    
    -- Shield particles
    local shieldParticles = Instance.new("ParticleEmitter")
    shieldParticles.Color = ColorSequence.new(Color3.fromRGB(0, 150, 255))
    shieldParticles.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 2),
        NumberSequenceKeypoint.new(1, 0)
    })
    shieldParticles.Transparency = NumberSequence.new(0.7)
    shieldParticles.Speed = NumberRange.new(5, 10)
    shieldParticles.Lifetime = NumberRange.new(0.5, 1)
    shieldParticles.Rate = 50
    shieldParticles.Parent = shield
    shieldParticles.Enabled = true
    
    -- Repel objects
    spawn(function()
        for i = 1, 45 do
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part:IsDescendantOf(character) and part ~= shield then
                    local distance = (part.Position - humanoidRootPart.Position).Magnitude
                    if distance <= 25 then
                        local direction = (part.Position - humanoidRootPart.Position).Unit
                        local repelForce = Instance.new("BodyVelocity")
                        repelForce.Velocity = direction * 100
                        repelForce.MaxForce = Vector3.new(5000, 5000, 5000)
                        repelForce.Parent = part
                        game:GetService("Debris"):AddItem(repelForce, 0.2)
                    end
                end
            end
            
            -- Pulsing shield effect
            if i % 10 == 0 then
                shieldLight.Brightness = 10
                shield.Transparency = 0.5
                wait(0.1)
                shieldLight.Brightness = 5
                shield.Transparency = 0.7
            end
            
            wait(0.1)
        end
        
        -- Shield fade
        for i = 1, 20 do
            shield.Transparency = 0.7 + (i * 0.015)
            shieldLight.Brightness = 5 - (i * 0.25)
            wait(0.05)
        end
        
        shield:Destroy()
        
        wait(15)
        abilityCooldowns.E = false
    end)
end

-- NEW ABILITY: R - Meteor Strike
local function activateMeteorStrike()
    if abilityCooldowns.R then return end
    abilityCooldowns.R = true
    
    local mouse = player:GetMouse()
    local targetPosition = mouse.Hit.Position + Vector3.new(0, 100, 0)
    
    -- Create meteors
    for meteorCount = 1, 8 do
        spawn(function()
            local meteor = Instance.new("Part")
            meteor.Size = Vector3.new(math.random(5, 15), math.random(5, 15), math.random(5, 15))
            meteor.Position = targetPosition + Vector3.new(
                math.random(-50, 50),
                math.random(50, 100),
                math.random(-50, 50)
            )
            meteor.Material = Enum.Material.Neon
            meteor.Color = Color3.fromRGB(255, 50, 0)
            meteor.Transparency = 0
            meteor.Anchored = false
            meteor.CanCollide = true
            meteor.Parent = workspace
            
            local meteorLight = Instance.new("PointLight")
            meteorLight.Color = Color3.fromRGB(255, 50, 0)
            meteorLight.Range = 30
            meteorLight.Brightness = 10
            meteorLight.Parent = meteor
            
            -- Meteor trail
            local trail = Instance.new("Trail")
            trail.Attachment0 = Instance.new("Attachment")
            trail.Attachment0.Parent = meteor
            trail.Attachment0.Position = Vector3.new(0, meteor.Size.Y/2, 0)
            trail.Attachment1 = Instance.new("Attachment")
            trail.Attachment1.Parent = meteor
            trail.Attachment1.Position = Vector3.new(0, -meteor.Size.Y/2, 0)
            trail.Color = ColorSequence.new(Color3.fromRGB(255, 100, 0))
            trail.Lifetime = 0.5
            trail.Parent = meteor
            
            -- Fall to ground
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Velocity = Vector3.new(0, -200, 0)
            bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bodyVelocity.Parent = meteor
            
            wait(math.random(1, 3))
            
            -- Impact explosion
            local explosion = Instance.new("Explosion")
            explosion.Position = meteor.Position
            explosion.BlastPressure = 500000
            explosion.BlastRadius = 30
            explosion.Parent = workspace
            
            meteor:Destroy()
            
            -- Claim ownership at impact site
            claimNetworkOwnership(50)
        end)
        
        wait(0.3)
    end
    
    wait(20)
    abilityCooldowns.R = false
end

-- NEW ABILITY: T - Chaos Chains
local function activateChaosChains()
    if abilityCooldowns.T then return end
    abilityCooldowns.T = true
    
    -- Create chains between nearby objects
    local chainConnections = {}
    local objects = {}
    
    -- Collect nearby objects
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
            local distance = (part.Position - humanoidRootPart.Position).Magnitude
            if distance <= chaosRange then
                table.insert(objects, part)
            end
        end
    end
    
    -- Create chains between objects
    for i = 1, math.min(20, #objects) do
        local obj1 = objects[math.random(1, #objects)]
        local obj2 = objects[math.random(1, #objects)]
        
        if obj1 ~= obj2 then
            -- Create chain part
            local chain = Instance.new("Part")
            local midpoint = (obj1.Position + obj2.Position) / 2
            local distance = (obj1.Position - obj2.Position).Magnitude
            
            chain.Size = Vector3.new(1, 1, distance)
            chain.Position = midpoint
            chain.Material = Enum.Material.Neon
            chain.Color = Color3.fromRGB(200, 0, 200)
            chain.Transparency = 0.5
            chain.Anchored = true
            chain.CanCollide = false
            chain.Parent = workspace
            
            -- Orient chain between objects
            chain.CFrame = CFrame.new(midpoint, obj2.Position) * CFrame.new(0, 0, -distance/2)
            
            -- Chain light
            local chainLight = Instance.new("PointLight")
            chainLight.Color = Color3.fromRGB(200, 0, 200)
            chainLight.Range = 20
            chainLight.Brightness = 3
            chainLight.Parent = chain
            
            table.insert(chainConnections, chain)
            
            -- Pull objects together
            spawn(function()
                for j = 1, 30 do
                    if obj1 and obj1.Parent and obj2 and obj2.Parent then
                        local direction = (obj2.Position - obj1.Position).Unit
                        local force1 = Instance.new("BodyVelocity")
                        force1.Velocity = direction * 20
                        force1.MaxForce = Vector3.new(1000, 1000, 1000)
                        force1.Parent = obj1
                        
                        local force2 = Instance.new("BodyVelocity")
                        force2.Velocity = -direction * 20
                        force2.MaxForce = Vector3.new(1000, 1000, 1000)
                        force2.Parent = obj2
                        
                        game:GetService("Debris"):AddItem(force1, 0.1)
                        game:GetService("Debris"):AddItem(force2, 0.1)
                    end
                    wait(0.1)
                end
            end)
        end
    end
    
    wait(10)
    
    -- Break chains
    for _, chain in pairs(chainConnections) do
        if chain and chain.Parent then
            chain:Destroy()
        end
    end
    
    abilityCooldowns.T = false
end

-- NEW ABILITY: Y - Soul Steal
local function activateSoulSteal()
    if abilityCooldowns.Y then return end
    abilityCooldowns.Y = true
    
    -- Create soul drain effect
    local drainCenter = Instance.new("Part")
    drainCenter.Size = Vector3.new(10, 10, 10)
    drainCenter.Position = humanoidRootPart.Position
    drainCenter.Material = Enum.Material.Neon
    drainCenter.Color = Color3.fromRGB(100, 0, 100)
    drainCenter.Transparency = 0.4
    drainCenter.Anchored = true
    drainCenter.CanCollide = false
    drainCenter.Shape = Enum.PartType.Ball
    drainCenter.Parent = workspace
    
    local drainLight = Instance.new("PointLight")
    drainLight.Color = Color3.fromRGB(100, 0, 100)
    drainLight.Range = 200
    drainLight.Brightness = 6
    drainLight.Parent = drainCenter
    
    -- Steal "souls" from objects
    spawn(function()
        for i = 1, 40 do
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part:IsDescendantOf(character) then
                    local distance = (part.Position - humanoidRootPart.Position).Magnitude
                    if distance <= chaosRange then
                        -- Create soul particle
                        local soul = Instance.new("Part")
                        soul.Size = Vector3.new(2, 2, 2)
                        soul.Position = part.Position
                        soul.Material = Enum.Material.Neon
                        soul.Color = Color3.fromRGB(150, 0, 150)
                        soul.Transparency = 0.3
                        soul.Anchored = false
                        soul.CanCollide = false
                        soul.Shape = Enum.PartType.Ball
                        soul.Parent = workspace
                        
                        -- Move soul to player
                        local bodyVelocity = Instance.new("BodyVelocity")
                        bodyVelocity.Velocity = (humanoidRootPart.Position - part.Position).Unit * 80
                        bodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
                        bodyVelocity.Parent = soul
                        
                        game:GetService("Debris"):AddItem(soul, 3)
                        game:GetService("Debris"):AddItem(bodyVelocity, 3)
                        
                        -- Weaken object
                        part.Color = Color3.fromRGB(
                            math.clamp(part.Color.R * 255 * 0.9, 0, 255),
                            math.clamp(part.Color.G * 255 * 0.9, 0, 255),
                            math.clamp(part.Color.B * 255 * 0.9, 0, 255)
                        )
                    end
                end
            end
            
            -- Pulsing drain effect
            if i % 5 == 0 then
                drainLight.Brightness = 10
                drainCenter.Size = Vector3.new(12, 12, 12)
                wait(0.1)
                drainLight.Brightness = 6
                drainCenter.Size = Vector3.new(10, 10, 10)
            end
            
            wait(0.1)
        end
        
        drainCenter:Destroy()
        
        wait(25)
        abilityCooldowns.Y = false
    end)
end

-- NEW ABILITY: U - Dimension Shift
local function activateDimensionShift()
    if abilityCooldowns.U then return end
    abilityCooldowns.U = true
    
    -- Create dimensional rift
    local dimensionRift = Instance.new("Part")
    dimensionRift.Size = Vector3.new(50, 50, 50)
    dimensionRift.Position = humanoidRootPart.Position
    dimensionRift.Material = Enum.Material.Glass
    dimensionRift.Color = Color3.fromRGB(0, 255, 255)
    dimensionRift.Transparency = 0.8
    dimensionRift.Anchored = true
    dimensionRift.CanCollide = false
    dimensionRift.Shape = Enum.PartType.Ball
    dimensionRift.Parent = workspace
    
    local dimensionLight = Instance.new("PointLight")
    dimensionLight.Color = Color3.fromRGB(0, 255, 255)
    dimensionLight.Range = 300
    dimensionLight.Brightness = 8
    dimensionLight.Parent = dimensionRift
    
    -- Invert colors and physics
    spawn(function()
        for i = 1, 30 do
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part:IsDescendantOf(character) then
                    local distance = (part.Position - humanoidRootPart.Position).Magnitude
                    if distance <= 150 then
                        -- Invert color
                        part.Color = Color3.fromRGB(
                            255 - (part.Color.R * 255),
                            255 - (part.Color.G * 255),
                            255 - (part.Color.B * 255)
                        )
                        
                        -- Apply anti-gravity
                        local antiGravity = Instance.new("BodyForce")
                        antiGravity.Force = Vector3.new(0, part:GetMass() * 196.2 * 2, 0)
                        antiGravity.Parent = part
                        game:GetService("Debris"):AddItem(antiGravity, 0.1)
                    end
                end
            end
            
            -- Rotating rift effect
            dimensionRift.CFrame = dimensionRift.CFrame * CFrame.Angles(0, math.rad(10), math.rad(5))
            
            wait(0.1)
        end
        
        -- Rift collapse
        for i = 1, 20 do
            dimensionRift.Transparency = 0.8 + (i * 0.01)
            dimensionLight.Brightness = 8 - (i * 0.4)
            wait(0.05)
        end
        
        dimensionRift:Destroy()
        
        wait(30)
        abilityCooldowns.U = false
    end)
end

-- NEW ABILITY: P - Super Form
local function activateSuperForm()
    if abilityCooldowns.P then return end
    abilityCooldowns.P = true
    
    -- Transform appearance
    local originalColors = {}
    
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            originalColors[part] = part.Color
            part.Color = Color3.fromRGB(255, 255, 0) -- Gold color for super form
            part.Material = Enum.Material.Neon
            
            -- Add glow
            local glow = Instance.new("PointLight")
            glow.Color = Color3.fromRGB(255, 255, 0)
            glow.Range = 15
            glow.Brightness = 5
            glow.Parent = part
        end
    end
    
    -- Power boost
    local originalSuperWalkSpeed = humanoid.WalkSpeed
    humanoid.WalkSpeed = 500
    isInhibitorActive = true
    
    -- Create aura
    local superAura = Instance.new("ParticleEmitter")
    superAura.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 200, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 150, 0))
    })
    superAura.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 5),
        NumberSequenceKeypoint.new(1, 0)
    })
    superAura.Transparency = NumberSequence.new(0.5)
    superAura.Speed = NumberRange.new(10, 20)
    superAura.Lifetime = NumberRange.new(0.5, 1)
    superAura.Rate = 100
    superAura.Parent = humanoidRootPart
    superAura.Enabled = true
    
    -- Enhanced abilities during super form
    spawn(function()
        for i = 1, 60 do -- 60 seconds of super form
            -- Auto-claim ownership
            claimNetworkOwnership(500)
            
            -- Auto-repel nearby objects
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(character) then
                    local distance = (part.Position - humanoidRootPart.Position).Magnitude
                    if distance <= 100 then
                        local direction = (part.Position - humanoidRootPart.Position).Unit
                        local force = Instance.new("BodyVelocity")
                        force.Velocity = direction * 50
                        force.MaxForce = Vector3.new(5000, 5000, 5000)
                        force.Parent = part
                        game:GetService("Debris"):AddItem(force, 0.1)
                    end
                end
            end
            
            wait(1)
        end
        
        -- Revert transformation
        humanoid.WalkSpeed = originalSuperWalkSpeed
        isInhibitorActive = false
        
        -- Remove aura if it exists
        if superAura and superAura.Parent then
            superAura.Enabled = false
            superAura:Destroy()
        end
        
        -- Restore original colors
        for part, color in pairs(originalColors) do
            if part and part.Parent then
                part.Color = color
                part.Material = Enum.Material.Plastic
                
                -- Remove glow
                for _, child in pairs(part:GetChildren()) do
                    if child:IsA("PointLight") then
                        child:Destroy()
                    end
                end
            end
        end
        
        wait(60) -- Long cooldown for ultimate form
        abilityCooldowns.P = false
    end)
end

-- EXISTING ABILITIES (Snap, Spear, Blast) - Keeping them as before but adding to cooldown system
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

-- GUI - Expanded for all abilities
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ShadowGUI"
screenGui.DisplayOrder = 10
screenGui.ResetOnSpawn = false

-- Create ability panels
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
panelTitle.Text = "âš¡ CHAOS ABILITIES âš¡"
panelTitle.TextColor3 = Color3.fromRGB(255, 255, 0)
panelTitle.TextSize = 16
panelTitle.Font = Enum.Font.GothamBold
panelTitle.BackgroundTransparency = 1
panelTitle.Size = UDim2.new(1, 0, 0, 30)
panelTitle.Position = UDim2.new(0, 0, 0, 5)
panelTitle.Parent = abilitiesPanel

-- Create scrollable ability list
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

-- Define all abilities with their keys and descriptions
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
    {Key = "G", Name = "Invisibility", Color = Color3.fromRGB(255, 0, 0), Description = "Becomes semi-transparent"},
    {Key = "LSHIFT", Name = "Sprint", Color = Color3.fromRGB(0, 255, 0), Description = "High-speed movement"},
    {Key = "RSHIFT", Name = "Inhibitor", Color = Color3.fromRGB(0, 100, 255), Description = "Speed boost for 40s"},
    {Key = "CTRL", Name = "Acrobatics", Color = Color3.fromRGB(255, 165, 0), Description = "Directional flips while moving"}
}

-- Create ability displays
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
    
    -- Status indicator
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

-- Update abilities list size
abilitiesScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, (#abilityDefinitions * 45))

-- Original GUI elements (invisibility, inhibitor, sprint)
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

-- Acrobatics button
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

screenGui.Parent = player:WaitForChild("PlayerGui")

-- Existing functions (collected from previous versions)
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

-- Input handling for ALL abilities
local function onInputBegan(input, gameProcessed)
    if gameProcessed then return end
    
    -- Existing controls
    if input.KeyCode == Enum.KeyCode.LeftShift then
        toggleSprint()
    elseif input.KeyCode == Enum.KeyCode.RightShift then
        activateInhibitorRings()
    elseif input.KeyCode == Enum.KeyCode.G then
        toggleInvisibility()
    
    -- Acrobatics mode (CTRL)
    elseif input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
        isCtrlHeld = true
        acrobaticsButton.Text = "Acrobatics: ACTIVE"
        acrobaticsButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        
        -- Create acrobatics effect
        createAcrobaticsEffect()
    
    -- Original chaos abilities
    elseif input.KeyCode == Enum.KeyCode.Z then
        activateChaosSnap()
    elseif input.KeyCode == Enum.KeyCode.X then
        activateChaosSpear()
    elseif input.KeyCode == Enum.KeyCode.C then
        activateChaosBlast()
    
    -- New chaos abilities (V through P)
    elseif input.KeyCode == Enum.KeyCode.V then
        activateChaosVortex()
    elseif input.KeyCode == Enum.KeyCode.B then
        activateBlackTornado()
    elseif input.KeyCode == Enum.KeyCode.N then
        activateChaosRift()
    elseif input.KeyCode == Enum.KeyCode.M then
        activateShadowClone()
    elseif input.KeyCode == Enum.KeyCode.L then
        activateChaosCage()
    elseif input.KeyCode == Enum.KeyCode.K then
        activateTimeStop()
    elseif input.KeyCode == Enum.KeyCode.J then
        activateChaosWave()
    elseif input.KeyCode == Enum.KeyCode.H then
        activateTeleportDash()
    elseif input.KeyCode == Enum.KeyCode.F then
        activateGravityField()
    elseif input.KeyCode == Enum.KeyCode.Q then
        activateEnergyDrain()
    elseif input.KeyCode == Enum.KeyCode.E then
        activateChaosShield()
    elseif input.KeyCode == Enum.KeyCode.R then
        activateMeteorStrike()
    elseif input.KeyCode == Enum.KeyCode.T then
        activateChaosChains()
    elseif input.KeyCode == Enum.KeyCode.Y then
        activateSoulSteal()
    elseif input.KeyCode == Enum.KeyCode.U then
        activateDimensionShift()
    elseif input.KeyCode == Enum.KeyCode.P then
        activateSuperForm()
    end
end

local function onInputEnded(input, gameProcessed)
    if gameProcessed then return end
    
    -- Acrobatics mode release
    if input.KeyCode == Enum.KeyCode.LeftControl or input.KeyCode == Enum.KeyCode.RightControl then
        isCtrlHeld = false
        acrobaticsButton.Text = "Acrobatics: READY"
        acrobaticsButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
        
        -- Remove acrobatics effect
        if acrobaticsEffect then
            acrobaticsEffect:Destroy()
            acrobaticsEffect = nil
        end
    end
end

-- Movement detection
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
    
    -- Check for acrobatics flips when CTRL is held
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

-- Track input for movement detection
local function onUserInput(input)
    if input.UserInputType == Enum.UserInputType.Keyboard or 
       input.UserInputType == Enum.UserInputType.Gamepad1 then
        lastInputTime = tick()
    end
end

-- Initialize
collectVisibleParts()
createRocketEffects()

if idleTrack then
    idleTrack:Play()
end

-- Setup connections
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

-- GUI button events
invisButton.MouseButton1Click:Connect(toggleInvisibility)
inhibitorButton.MouseButton1Click:Connect(activateInhibitorRings)

-- Make GUI draggable
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

-- Character respawn handling
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
    
    -- Reset cooldowns
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
    
    if idleTrack then
        idleTrack:Play()
    end
    
    -- Cleanup acrobatics effect
    if acrobaticsEffect then
        acrobaticsEffect:Destroy()
        acrobaticsEffect = nil
    end
end)

-- Store connections globally
_G.ShadowConnections = connections

-- Show loading notification and play theme music
showLoadingNotification()
wait(0.5)
local themeMusic = playThemeMusic()

print("==============================================")
print("âš¡ SHADOW THE HEDGEHOG - COMPLETE ARSENAL âš¡")
print("==============================================")
print("")
print("NETWORK DOMINANCE ABILITIES:")
print("All abilities claim network ownership within range")
print("Range: " .. chaosRange .. " studs (increased for some abilities)")
print("")
print("CHAOS ABILITIES KEYBINDINGS:")
print("Z - Chaos Snap (Telekinetic control)")
print("X - Chaos Spear (Energy projectile)")
print("C - Chaos Blast (Area explosion)")
print("V - Chaos Vortex (Sucks objects in)")
print("B - Black Tornado (Spinning destruction)")
print("N - Chaos Rift (Dimensional portal)")
print("M - Shadow Clone (Attacking duplicate)")
print("L - Chaos Cage (Trapping field)")
print("K - Time Stop (Freezes time)")
print("J - Chaos Wave (Shockwave)")
print("H - Teleport Dash (Instant movement)")
print("F - Gravity Field (Physics control)")
print("Q - Energy Drain (Steals energy)")
print("E - Chaos Shield (Protection)")
print("R - Meteor Strike (Orbital strike)")
print("T - Chaos Chains (Links objects)")
print("Y - Soul Steal (Essence drain)")
print("U - Dimension Shift (Reality warp)")
print("P - Super Form (Ultimate power)")
print("")
print("MOVEMENT ABILITIES:")
print("G - Invisibility")
print("Left Shift - Sprint (240 speed)")
print("Right Shift - Inhibitor Rings (+80 speed)")
print("CTRL - Acrobatics (Directional flips)")
print("")
print("Total abilities: 24")
print("Network control: MAXIMUM")
print("==============================================")

-- Ultimate notification
wait(1)
local ultimateGui = Instance.new("ScreenGui")
ultimateGui.Name = "UltimateNotification"
ultimateGui.DisplayOrder = 998
ultimateGui.ResetOnSpawn = false

local ultimateFrame = Instance.new("Frame")
ultimateFrame.Size = UDim2.new(0, 500, 0, 150)
ultimateFrame.Position = UDim2.new(0.5, -250, 0.3, -75)
ultimateFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ultimateFrame.BackgroundTransparency = 0.7
ultimateFrame.BorderSizePixel = 0
ultimateFrame.Parent = ultimateGui

local ultimateCorner = Instance.new("UICorner")
ultimateCorner.CornerRadius = UDim.new(0, 12)
ultimateCorner.Parent = ultimateFrame

local ultimateText = Instance.new("TextLabel")
ultimateText.Size = UDim2.new(1, -20, 1, -20)
ultimateText.Position = UDim2.new(0, 10, 0, 10)
ultimateText.Text = "CHAOS ARSENAL COMPLETE\n24 ABILITIES LOADED\nNETWORK DOMINANCE ESTABLISHED\nSHADOW: ULTIMATE CHAOS FORM!"
ultimateText.TextColor3 = Color3.fromRGB(255, 255, 0)
ultimateText.TextSize = 22
ultimateText.Font = Enum.Font.GothamBold
ultimateText.BackgroundTransparency = 1
ultimateText.TextWrapped = true
ultimateText.TextYAlignment = Enum.TextYAlignment.Center
ultimateText.Parent = ultimateFrame

ultimateGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

ultimateFrame.BackgroundTransparency = 1
ultimateText.TextTransparency = 1

-- Animate with chaos energy
for i = 1, 30 do
    ultimateFrame.BackgroundTransparency = 1 - (i * 0.033)
    ultimateText.TextTransparency = 1 - (i * 0.033)
    
    -- Chaos energy pulse
    if i % 3 == 0 then
        ultimateText.TextColor3 = Color3.fromRGB(255, 255, 0)
    elseif i % 3 == 1 then
        ultimateText.TextColor3 = Color3.fromRGB(255, 100, 0)
    else
        ultimateText.TextColor3 = Color3.fromRGB(255, 0, 100)
    end
    
    wait(0.05)
end

wait(5)

for i = 1, 30 do
    ultimateFrame.BackgroundTransparency = 0 + (i * 0.033)
    ultimateText.TextTransparency = 0 + (i * 0.033)
    wait(0.05)
end

ultimateGui:Destroy()
