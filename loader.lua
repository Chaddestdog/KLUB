local games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaddestdog/KLUB/refs/heads/main/games.lua",true))();
local place = (games[tostring(game.PlaceId)] or nil);
local local_player = game:GetService("Players").LocalPlayer;

if (place == nil) then
    local_player:Kick("KLUB does not support this game.");
    return;
end;

if (game.PlaceVersion ~= place.pid) then
    local_player:Kick("KLUB is out of date for " .. place.name .. "\n pls wait patiently.");
    return;
end;

place.load();
