 local HttpService					 = game:GetService("HttpService"); 
 
local function HttpEnabled()
    local s = pcall(function()
        HttpService:GetAsync("https://www.google.com/")
    end);
    return s
end;
 
return function(url)
    if HttpEnabled() then
        return function(name, message, img)
            HttpService:PostAsync(url, HttpService:JSONEncode({content = message})) -- (plr and "https://www.roblox.com/headshot-thumbnail/image?userId=".. plr.userId  .."&width=420&height=420&format=png" or "")
        end;
    end;
end;

--HoodedBlack
