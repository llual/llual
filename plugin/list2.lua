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
if is_momod(msg) and matches[1]== "m3" then
return [[
🔹 اوامر اضافية للمجموعات 🔹
____________________________
!owner   قائمه مدراء للمجموعه 
!res @username  معلومات عن المستخدم 
!clean modlist حذف الادمنية 
!clean rules حذف القوانين
!clean about حذف الوصف
!clean member حذف كل الاعضاء ❌
!save [title] [text]    لحفض رساله في المجموعه 
!who   اضهار ايديات المجموعه عن طريق الملف
!wholist  اضهار ايديات المجموعه 
💠────────────── 🌟
DΞV✺♩ : - @lua_cli 
TwsLBot 😸 : - @lua_cli_bot️

]]
end

if not is_momod(msg) then
return "#دي_لتلعـب بكيفـك😐⛔️"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"[#!/](m3)"
},
run = run 
}
end