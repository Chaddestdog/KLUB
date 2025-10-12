local memory = {};
local old_meta_methods = {};
local old_functions = {};

rawset(memory, "hook_meta_method", newcclosure(function(obj: Instance, method: string, hook: () -> ())
    local mt = getrawmetatable(obj);
    local func = rawget(mt, method);
    if (not old_meta_methods[obj]) then old_meta_methods[obj] = {} end;
    if (not rawget(old_meta_methods[obj], method)) then rawset(old_meta_methods[obj], method, clonefunction(func)) end;
    hookfunction(func, hook);
    return rawget(old_meta_methods[obj], method);
end));

rawset(memory, "restore_meta_method", newcclosure(function(obj: Instance, method: string)
    local mt = getrawmetatable(obj);
    setreadonly(mt, false);
    rawset(mt, method, rawget(old_meta_methods[obj], method));
    setreadonly(mt, true);
    setrawmetatable(obj, mt);
    return;
end));

rawset(memory, "hook_function", newcclosure(function(func: () -> (), hook: () -> ())
    if (not old_functions[func]) then rawset(old_functions, func, clonefunction(func)) end;
    return hookfunction(func, hook);
end));

rawset(memory, "restore_function", newcclosure(function(func: () -> ())
    hookfunction(func, rawget(old_functions, func));
end));

return memory;
