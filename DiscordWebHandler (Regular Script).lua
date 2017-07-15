local MessageEvent		 = game.ReplicatedStorage.Events.DiscordShoutEvent; 
local Hook 			= require(game.ReplicatedStorage.DiscordHook)("YOUR DISCORD WEBHOOK HERE");
 
MessageEvent.OnServerEvent:Connect(function(Player, Message)
    Hook(Player.Name, Message)
end);

--HoodedBlack
