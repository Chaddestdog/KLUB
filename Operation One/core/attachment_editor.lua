local attachment_editor = {};
local attachment_modules = {};
local replicated_storage:  ReplicatedStorage;
local players:             Players;
local local_player:        Player;
local viewmodels:          Folder = workspace.Viewmodels;

local settings = {
    skin = "Default",
    scope = "Default",
    barrel = "Default",
    charm = "Default",
    mag = "Default",
    stock = "Default",
    grip = "Default"
};

local get_local_player_gun = function()
    local gun, local_player_char = nil, viewmodels:FindFirstChild("Viewmodels/" .. local_player.Name);
    if (not local_player_char) then return end;
    for i, v: Instance in (local_player_char:GetChildren()) do
        if (v:FindFirstChild("Gun")) then
            gun = {instance = v};
            break;
        end;
    end;
    return gun;
end;

rawset(attachment_editor, "set_skin", newcclosure(function()
    local gun = get_local_player_gun();
    if (not gun) then return end;

    if (settings.skin == "Default") then
        attachment_modules["Skin"].remove(attachment_modules["Skin"], gun);
    else
        attachment_modules["Skin"].remove(attachment_modules["Skin"], gun);
        task.wait();
        attachment_modules["Skin"].apply(require(attachment_modules["Skin"].module[settings.skin]), gun);
    end;
end));

rawset(attachment_editor, "set_scope", newcclosure(function()
    local gun = get_local_player_gun();
    if (not gun) then return end;

    if (settings.scope == "Default") then
        attachment_modules["Scope"].remove(attachment_modules["Scope"], gun);
    else
        local module;
        for i, v in next, (attachment_modules["Scope"].module:GetDescendants()) do
            if (v.Name == settings.scope) then
                module = v;
                break;
            end;
        end;
        attachment_modules["Scope"].remove(attachment_modules["Scope"], gun);
        task.wait();
        attachment_modules["Scope"].apply(require(module), gun);
    end;
end));

rawset(attachment_editor, "set_barrel", newcclosure(function()
    local gun = get_local_player_gun();
    if (not gun) then return end;

    if (settings.barrel == "Default") then
        attachment_modules["Barrel"].remove(attachment_modules["Barrel"], gun);
    else
        local module;
        for i, v in next, (attachment_modules["Barrel"].module:GetDescendants()) do
            if (v.Name == settings.barrel) then
                module = v;
                break;
            end;
        end;
        attachment_modules["Barrel"].remove(attachment_modules["Barrel"], gun);
        task.wait();
        attachment_modules["Barrel"].apply(require(module), gun);
    end;
end));

rawset(attachment_editor, "set_charm", newcclosure(function()
    local gun = get_local_player_gun();
    if (not gun) then return end;

    if (settings.charm == "Default") then
        attachment_modules["Charm"].remove(attachment_modules["Charm"], gun);
    else
        local module;
        for i, v in next, (attachment_modules["Charm"].module:GetDescendants()) do
            if (v.Name == settings.charm) then
                module = v;
                break;
            end;
        end;
        attachment_modules["Charm"].remove(attachment_modules["Charm"], gun);
        task.wait();
        attachment_modules["Charm"].apply(require(module), gun);
    end;
end));

rawset(attachment_editor, "set_mag", newcclosure(function()
    local gun = get_local_player_gun();
    if not gun then return end;

    if (settings.mag == "Default") then
        attachment_modules["Mag"].remove(attachment_modules["Mag"], gun);
    else
        local module;
        for i, v in next, (attachment_modules["Mag"].module:GetDescendants()) do
            if (v.Name == settings.mag) then
                module = v;
                break;
            end;
        end;
        attachment_modules["Mag"].remove(attachment_modules["Mag"], gun);
        task.wait();
        attachment_modules["Mag"].apply(require(module), gun);
    end;
end));

rawset(attachment_editor, "set_stock", newcclosure(function()
    local gun = get_local_player_gun();
    if not gun then return end;

    if (settings.stock == "Default") then
        attachment_modules["Stock"].remove(attachment_modules["Stock"], gun);
    else
        local module
        for i, v in next, (attachment_modules["Stock"].module:GetDescendants()) do
            if (v.Name == settings.stock) then
                module = v;
                break;
            end;
        end;
        attachment_modules["Stock"].remove(attachment_modules["Stock"], gun);
        task.wait();
        attachment_modules["Stock"].apply(require(module), gun);
    end;
end));

rawset(attachment_editor, "set_grip", newcclosure(function()
    local gun = get_local_player_gun();
    if not gun then return end;

    if (settings.grip == "Default") then
        attachment_modules["Grip"].remove(attachment_modules["Grip"], gun);
    else
        local module;
        for i, v in next, (attachment_modules["Grip"].module:GetDescendants()) do
            if (v.Name == settings.grip) then
                module = v;
                break;
            end;
        end;
        attachment_modules["Grip"].remove(attachment_modules["Grip"], gun);
        task.wait();
        attachment_modules["Grip"].apply(require(module), gun);
    end;
end));

rawset(attachment_editor, "attachment_editor_settings", settings);

attachment_editor.init = function()
    replicated_storage = get_service("ReplicatedStorage");
    players = get_service("Players");
    local_player = players.LocalPlayer;

    for i, v in next, (replicated_storage.Modules.Items.Item.Attachment:GetChildren()) do
        attachment_modules[v.name] = require(v);
        attachment_modules[v.name].module = v;
    end;
end;

return attachment_editor;
