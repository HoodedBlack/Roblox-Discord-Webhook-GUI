	local MessageEvent 				= game.ReplicatedStorage.Events.DiscordShoutEvent;
local Hook 			= require(game.ReplicatedStorage.DiscordHook)("YOUR DISCORD WEBHOOK");
 
script.Parent.MouseButton1Click:Connect(function()
    MessageEvent:FireServer(script.Parent.Parent.TextBox.Text)
end);

--HoodedBlack
