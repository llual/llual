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
if is_momod(msg) and matches[1]== "m1" then
return [[
🔹اوامر ادارة المجموعات 🔹
____________________
!promote @username  اضافة ادمن 
!demote @username  ازالة ادمن
!modlist  اظهار الادمنية
!settings   اظهار اعدادات المجموعه 
me لاظـهار مـوقعك فـي الكـروب
🔵──────────────🔵
أمان المجموعة 
!set about  وضع وصف للمجموعه
!about  اظهار وصف المجموعه
!set rules  وضع قوانين للمجموعه
!rules  اظهار قوانين المجموعه
🌀────────────────🌀
!invite @username الاضافه عن طريق المعرف او بالرد
!unlock member فتح الاضافه
!lock member قفل الاضافه
❎────────────────❎
!setname وضع اسم للمجموعه
!unlock name فتح قفل الاسم
!lock name قفل اسم المجموعه
●────────────────●
!setphoto وضع وقفل صورة المجموعة 
🔰──────────────🔰
قائمة الحظر… 
!ban حضر العضو بالرد
!ban @username حظر العضو عن طريق
!unban  @ الغاء الحظر للعضو
!banlist قائمة الحظر 
♻️────────────────♻️
قائمة الطرد📛
!block @username طرد العضو عن طريق
!kick طرد العضو بالرد
!kickme للخروج من المجموعه
⚠️──────────────⚠️
خيارات الايدي و معرفات المجموعه.. ..
!id @username اظهار ايدي شخص او عن طريق الرد 
!id chat اظهار ايديات اعضاء المجموعه
!tagall اظهار يوزرات اعضاء المجموعة
/inf لاظهار معلوماتك بلكامل
💠────────────── 🌟
DΞV✺♩ : - @lua_cli 
TwsLBot 😸 : - @lua_cli_bot️

]]
end

if not is_momod(msg) then
return "#لتلعــب بكيفـك دي😐⛔️"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"[#!/](m1)"
},
run = run 
}
end