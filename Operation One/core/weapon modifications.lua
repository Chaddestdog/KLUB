local weapon_modifications = {};
local settings = {
    recoil_x = 1,
    recoil_y = 1,
    no_spread = false,
    fast_reload = false
};

rawset(weapon_modifications, "weapon_modifications_settings", settings);

weapon_modifications.init = function()

    local old_math_random = clonefunction(math.random);
    hook_function(math.random, newcclosure(function(...)
        if (debug.info(3, 'n') == "send_shoot" and settings.no_spread) then
            debug.setstack(3, 13, 0);
        end;
        return old_math_random(...);
    end));

    local old_tweenInfo_new = clonefunction(TweenInfo.new);
    hook_function(TweenInfo.new, newcclosure(function(...)
        if (debug.info(3, 'n') == "recoil_function") then
            debug.setstack(3, 5, (debug.getstack(3, 5) * settings.recoil_x));
            debug.setstack(3, 6, (debug.getstack(3, 6) * settings.recoil_y));
        elseif (debug.info(4, 'n') == "reload_begin" and typeof(debug.getstack(4, 6)) == "number" and settings.fast_reload) then
            debug.setstack(4, 6, (debug.getstack(4, 6) / 1.1));
        end;
        return old_tweenInfo_new(...);
    end));

end;

return weapon_modifications;
