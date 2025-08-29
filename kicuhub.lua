-- ✅ Debug test
print("Kicy Hub script loaded ✅")

-- Load UI Library
local success, Library = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
end)

if not success or not Library then
    warn("⚠️ Failed to load Kavo-UI-Library!")
    return
end

-- Create Window
local Window = Library.CreateLib("Kicy’s Instant Steal", "DarkTheme")

-- Main Tab
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Kicy Hub")

MainSection:NewButton("Load Kicy V1", "Execute Kicy V1 Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
end)

MainSection:NewButton("Load Kicy V2", "Execute Kicy V2 Script", function()
    loadstring(game:HttpGet("https://pastefy.app/NU4lqGZe/raw"))()
end)

MainSection:NewButton("Load Kicy Secret Hop", "Execute Secret Hop Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/murilolol/nslx-autojoiner/refs/heads/main/free.lua"))()
end)

MainSection:NewKeybind("Toggle UI", "Show/Hide UI", Enum.KeyCode.RightControl, function()
    Library:ToggleUI()
end)
