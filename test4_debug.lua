-- TEST 4: Try loading the embedded aimbot with error reporting
local url = "https://raw.githubusercontent.com/IMPOSSBLE727/aimbotme/main/NewAimbot_Embedded.lua"
local ok, err = pcall(function()
    local content = game:HttpGet(url)
    if not content or content == "" then
        error("HttpGet returned empty")
    end
    print("HttpGet OK - Got " .. #content .. " bytes")
    local fn, compileErr = loadstring(content)
    if not fn then
        error("Compile error: " .. tostring(compileErr))
    end
    print("Compile OK - executing...")
    fn()
    print("Execute OK")
end)
if not ok then
    print("ERROR: " .. tostring(err))
end
