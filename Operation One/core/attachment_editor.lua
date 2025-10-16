local attachment_editor = {};
local attachment_modules = {};
local replicated_storage:  ReplicatedStorage;
local players:             Players;
local local_player:        Player;
local viewmodels:          Folder = workspace.Viewmodels;

local settings = {
    skin = "Default",
    scope = "Default",
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
        attachment_modules["Skin"].apply(require(attachment_modules["Skin"].module[settings.skin]), gun);
    end;

end));


rawset(attachment_editor, "set_scope", newcclosure(function()
    local gun = get_local_player_gun();
    if (not gun) then return end;

    if (settings.scope == "Default") then
        print("erm");
    else
        local module;
        for i, v in next, (attachment_modules["Skin"].module:GetDescendants()) do
            if (v.Name == settings.scope) then
                module = v;
                break
            end;
        end;
       
        print(module);
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
