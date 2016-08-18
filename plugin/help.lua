--[[
#
#ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
#:((
# For More Information ....! 
# Developer : Aziz < @TH3_GHOST > 
# our channel: @DevPointTeam
# Version: 1.1
#:))
#ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
#
]]
do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "h" then
return [[
WeLcoOomE 🎭
[توجـد ثـلاث قـوائم جـميعـها تعـمل بـ /و!و#]
_________________________
🔹- /m1 — اوامر ادارة المجموعة 

🔹- /m2  — اوامر حماية المجموعة

🔹- /m3 — اوامر اضافية للمجموعات 
💠────────────── 🌟
DΞV✺♩ : - @lua_cli 
TwsLBot 😸 : - @lua_cli_bot️

]]
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"[#!/](h)"
},
run = run 
}
end