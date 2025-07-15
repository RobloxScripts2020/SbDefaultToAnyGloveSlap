local Players = game:GetService("Players")
local player = Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local playerGui = player:WaitForChild("PlayerGui")

-- Clean old tool if exists
local old = backpack:FindFirstChild("KRNL_Gun")
if old then old:Destroy() end

-- Create Tool
local tool = Instance.new("Tool")
tool.Name = "KRNL_Gun"
tool.RequiresHandle = true

-- Create Handle (MeshPart)
local handle = Instance.new("MeshPart")
handle.Name = "Handle"
handle.Size = Vector3.new(1,1,1)
handle.CanCollide = false
handle.Anchored = false
handle.MeshId = "rbxassetid://9423503029"
handle.TextureID = "rbxassetid://9423503690"
handle.Material = Enum.Material.Metal
handle.Parent = tool

-- Fire Sound
local fireSound = Instance.new("Sound")
fireSound.Name = "FireSound"
fireSound.SoundId = "rbxassetid://138186576"
fireSound.Volume = 1
fireSound.Parent = handle

-- Muzzle Flash
local muzzleFlash = Instance.new("ParticleEmitter")
muzzleFlash.Name = "MuzzleFlash"
muzzleFlash.Enabled = false
muzzleFlash.Lifetime = NumberRange.new(0.1)
muzzleFlash.Speed = NumberRange.new(25, 40)
muzzleFlash.Rate = 0
muzzleFlash.LightEmission = 1
muzzleFlash.Texture = "rbxassetid://483479223"
muzzleFlash.Parent = handle

-- LocalScript source with UI and cooldowns
local localScriptSource = [[
local tool = script.Parent
local player = game.Players.LocalPlayer
local mouse = nil
local UserInputService = game:GetService("UserInputService")

local gun = tool:WaitForChild("Handle")
local fireSound = gun:WaitForChild("FireSound")
local muzzleFlash = gun:WaitForChild("MuzzleFlash")

local DEATH_SOUND_ID = "rbxassetid://75422753773695"
local WAVE_ANIM_ID = "rbxassetid://128777973"

local animTrack = nil

local shootCooldown = 2
local shootEveryoneCooldown = 10
local canShoot = true
local canShootEveryone = true

local playerGui = player:WaitForChild("PlayerGui")

-- Create UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GunUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local function createButton(name, position, text)
	local btn = Instance.new("TextButton")
	btn.Name = name
	btn.Size = UDim2.new(0, 150, 0, 50)
	btn.Position = position
	btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.Font = Enum.Font.SourceSansBold
	btn.TextSize = 22
	btn.Text = text
	btn.Parent = screenGui
	return btn
end

local shootBtn = createButton("ShootBtn", UDim2.new(0.05,0,0.8,0), "Shoot")
local shootEveryoneBtn = createButton("ShootEveryoneBtn", UDim2.new(0.25,0,0.8,0), "Shoot Everyone")

local function createBullet(origin, direction)
	local bullet = Instance.new("Part")
	bullet.Size = Vector3.new(0.2, 0.2, 2)
	bullet.Anchored = true
	bullet.CanCollide = false
	bullet.Material = Enum.Material.Neon
	bullet.BrickColor = BrickColor.new("Bright yellow")
	bullet.CFrame = CFrame.new(origin, origin + direction) * CFrame.new(0, 0, -1)
	bullet.Parent = workspace
	game:GetService("Debris"):AddItem(bullet, 0.1)
end

local function fakeKill(targetCharacter)
	local humanoid = targetCharacter:FindFirstChildOfClass("Humanoid")
	local root = targetCharacter:FindFirstChild("HumanoidRootPart")
	if humanoid and root then
		local savedPosition = root.Position
		humanoid.Health = 0

		local deathSound = Instance.new("Sound")
		deathSound.SoundId = DEATH_SOUND_ID
		deathSound.Volume = 1
		deathSound.Parent = targetCharacter.PrimaryPart or root
		deathSound:Play()
		game:GetService("Debris"):AddItem(deathSound, 3)

		task.delay(0.5, function()
			local newRoot = targetCharacter:FindFirstChild("HumanoidRootPart")
			if newRoot then
				newRoot.CFrame = CFrame.new(save
