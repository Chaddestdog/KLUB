local aimbot = {};

local user_input_service:  UserInputService = game:GetService("UserInputService");
local run_service: RunService = game:GetService("RunService");

rawset(aimbot, "aim_at", newcclosure(function(pos: Vector3)
    
    local mouse_sen = (user_input_service.MouseDeltaSensitivity);
    local c1; c1 = run_service.RenderStepped:Connect(function()
        local aim_pos = to_view_point(pos);
        mousemoverel(aim_pos.X / mouse_sen, aim_pos.Y / mouse_sen);
    end)
   
end));


aimbot.init = function()
    --user_input_service = get_service("UserInputService");

end;

return aimbot;
