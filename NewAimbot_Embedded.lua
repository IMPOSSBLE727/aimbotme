-- TEST 3: HttpGet from YOUR repo
local content = game:HttpGet("https://raw.githubusercontent.com/IMPOSSBLE727/aimbotme/main/test1_tiny.lua")
if content and content ~= "" then
    print("TEST 3 OK - Got " .. #content .. " bytes from your repo")
else
    print("TEST 3 FAIL - Empty response")
end
