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
if is_momod(msg) and matches[1]== "m2" then
return [[
🔹اوامر الحماية داخل المجموعة 🔹
__________________________
!on spam لمنع ارسال الرسائل الطويله
!off spam لسماح بأرسال الرسائل الطويله
!rev لقلب الكلام 
/muteall لكتم المجموعه بأكملها
/unmuteall الغاء كتم المجموعه
/muteall + الوقت لكتم المجموعه بلدقايق
/on service لتشغيـل الاشعـارات
/off service لتعـطيل الاشـعارات
/on wlc لتشـغيل الترحيب 
/off wlc لتعطـيل التوديع 
/on bye لتشـغيل التوديع 
/off bye لتعطـيل التوديع 
/set wlc لوظـع الترحيب 
/set bye لوظـع التوديع
/infopv ارسال معلومـاتك الى الـخاص
🔵──────────────🔵
!lock flood تفعيل مضاد التفليش
!unlock flood الغاء تفعيل  ضد تفليش
!setflood 5   اختيار العدد من الكلمات للطرد
!lock bots تفعيل مضاد البوتات
!unlock bots الغاء تفعيل مضاد البواتات
/kik fwd لقفل اعادة توجيه مع الطرد
/unkiK fwd الغاء قفل اعادة توجيه مع الطرد 
/kik link لقفل ارسال الروابط مع التحذير والطرد
/unkik link الغاء قفل الروابط مع التحذير والطرد
/warn media لكتم الوسائط مع التحذير
/unwarn media الغاء كتم الوسائط مع التحذير
🌐────────────────🌐
!lock arabic قفل اللغة العربية
!unlock arabic فتح اللغة العربية 
💠────────────── 🌟
DΞV✺♩ : - @lua_cli 
TwsLBot 😸 : - @lua_cli_bot️ ]]
end

if not is_momod(msg) then
return "#دي_لتلـعب_بكيـفك😐⛔️"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"[#!/](m2)"
},
run = run 
}
end