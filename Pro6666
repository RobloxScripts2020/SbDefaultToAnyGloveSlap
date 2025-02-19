loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
local GameName = "Ultimate Badge Hub Launcher ✨"
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Pro666Pro/DraggableOrionLib/main/main.lua")))()
local Window = OrionLib:MakeWindow({IntroText = "UBH v3 LAUNCHER", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

local function DestroyLauncher()
OrionLib:Destroy()
wait(0.5)
end

local Launcher = Window:MakeTab({
	Name = "Setup",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Launcher:AddParagraph("Warning!!!", "Ultimate Badge Hub doesn't support low level executors!")
Launcher:AddParagraph("Choose Localization", "Default = English")

_G.Localization = "English"
Launcher:AddDropdown({
	Name = "Choose Localization",
	Default = "English",
	Options = {"English", "Русский", "Español"},
	Callback = function(Value)
if Value == "English" then
_G.Localization = "English"
elseif Value == "Русский" then
_G.Localization = "Русский"
elseif Value == "Español" then
_G.Localization = "Español"
end
	end    
})

Launcher:AddParagraph("Choose Version", "Default = Latest Version")
Launcher:AddParagraph("WARNING!", "Versions that lower than 3.2, don't support localizations! & Versions that higher than 3.3, don't support spanish localization! & Versions that higher than 3.7, don't support russian localization!")

Launcher:AddDropdown({
	Name = "Choose Version",
	Default = "v4.0",
	Options = {"v4.0", "v3.9", "v3.8", "v3.7", "v3.6", "v3.5", "v3.4", "v3.3", "v3.2", "v3.1", "v3.0"},
	Callback = function(Value)
-- using _G.Version = Value ?? LOL nah I'd like use something like this
if Value == "v4.0" then
_G.Version = "v4.0"
elseif Value == "v3.9" then
_G.Version = "v3.9"
elseif Value == "v3.8" then
_G.Version = "v3.8"		
elseif Value == "v3.7" then
_G.Version = "v3.7"
elseif Value == "v3.6" then
_G.Version = "v3.6"
elseif Value == "v3.5" then
_G.Version = "v3.5"
elseif Value == "v3.4" then
_G.Version = "v3.4"
elseif Value == "v3.3" then
_G.Version = "v3.3"
elseif Value == "v3.2" then
_G.Version = "v3.2"
elseif Value == "v3.1" then
_G.Version = "v3.1"
elseif Value == "v3.0" then
_G.Version = "v3.0"
end
	end    
})

Launcher:AddParagraph("Launch Script", "Edit settings above if you want to, and then launch script!")

Launcher:AddButton({
	Name = "Launch Ultimate Badge Hub",
	Callback = function()
if _G.Version == "v4.0" then
DestroyLauncher()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/ubh-v4-finallylol/refs/heads/main/Protected_3213696534361476.txt"))()
elseif _G.Version == "v3.9" then
DestroyLauncher()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/BroCanIUseYourUBH-v3.9/refs/heads/main/Protected_2278331425323228.txt"))()
elseif _G.Version == "v3.8" then
DestroyLauncher()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/ubh_version-3.8/refs/heads/main/Protected_3569183483631142.txt"))()
elseif _G.Version == "v3.7" then
DestroyLauncher()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/ubh-v3.7-debug-beta/refs/heads/main/Protected_7577930750591352.txt"))()			
elseif _G.Version == "v3.6" then
DestroyLauncher()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/ubh-v3.6/refs/heads/main/Protected_9683456133622327.txt"))()
elseif _G.Version == "v3.5" then
DestroyLauncher()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Pro666Pro/f9fbdcf69a215e728f70617839e91e6d/raw/8eea0b32d7a3dd75d4557c128026d8aad88b0e3b/main.lua"))()
elseif _G.Version == "v3.4" then
DestroyLauncher()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Pro666Pro/17ad21691c1d4ab925ebe505e5a3f5bb/raw/88a23e5c7300a4d1e8a92b9d15e837a7bba61bad/main.lua"))()
elseif _G.Version == "v3.3" then
DestroyLauncher()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Pro666Pro/7867d21551ffc0bd8a00585e81453cbd/raw/5a129ad08b07b5965535541a1e7fcbfb9fbbe0a1/main.lua"))()
elseif _G.Version == "v3.2" then
DestroyLauncher()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Pro666Pro/c13f44444bd20a832dff2210740d9e1a/raw/69b9eba96decf12ecd64cda70d7f25c03d76d959/main.lua"))()
elseif _G.Version == "v3.1" then
DestroyLauncher()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Pro666Pro/45ff97383d7be43009d0aa3f0c7b7469/raw/d3dfb5b9c2fb349db0de560f40932d027c41978f/main.lua"))()
elseif _G.Version == "v3.0" then
DestroyLauncher()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Pro666Pro/91f7440959e518704d2c5782bc9f54f9/raw/1476447638cd466b95c3c2ec99be0c8c8667ecdc/main.lua"))()
end
	 end
})
