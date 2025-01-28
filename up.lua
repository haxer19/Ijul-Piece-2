loadstring(game:HttpGet("https://raw.githubusercontent.com/haxer19/Ijul-Piece-2/refs/heads/main/AntiLag"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/haxer19/Ijul-Piece-2/refs/heads/main/Anti-AFK"))()
local info = loadstring(game:HttpGet("https://raw.githubusercontent.com/haxer19/Ijul-Piece-2/refs/heads/main/check"))()
local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()

local gname = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local function getopsize()
    local screenSize = workspace.CurrentCamera.ViewportSize
    if screenSize.X <= 720 then
        return UDim2.fromOffset(240, 180) 
    elseif screenSize.X <= 1080 then
        return UDim2.fromOffset(360, 280)
    else
        return UDim2.fromOffset(480, 360) 
    end
end

local config = {
    IconWin = "rbxassetid://115335820751971",
    IconOpenWin = "rbxassetid://74835846528618", 
    IconTabInfo = "rbxassetid://104263640761388",
}

local username = game:GetService("Players").LocalPlayer.Name

wait(2)

local Window = WindUI:CreateWindow({
    Title = gname .. " | Username: " .. username, 
    Icon = config.IconWin, 
    Author = ".tienthanh", 
    Folder = "UPIjul", 
    Size = getopsize(), 
    Transparent = true,
    Theme = "Dark", 
    SideBarWidth = 200, 
    HasOutline = false,
})

WindUI:SetNotificationLower(false)

Window:EditOpenButton({
    Title = "Open",
    Icon = config.IconOpenWin, 
    CornerRadius = UDim.new(0,10),
    StrokeThickness = 3,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    )
})

WindUI.TransparencyValue = .1

local Tabs = {
    Info = Window:Tab({ Title = "Info", Icon = config.IconTabInfo }),
}

Window:SelectTab(1)

Tabs.Info:Section({ 
    Title = "Soon !!",
    TextSize = 22,
})

Tabs.Info:Paragraph({
    Title = info.Title,
    Desc = info.Desc,
})
