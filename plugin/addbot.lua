--[[
جميع الحقوق محفوظه للمطور حموشي: @MEDO_REAL
تابع قناتي : @API_CLI
--]]
local function run(msg,matches)
local medo = "هاذ الشخص بحاجه الى البوت في مجموعته 😒✅ : @"..msg.from.username.."\nرابط مجموعته ✏️ : "..matches[2]
local sudo = 218827876 -- set Your ID HERE ! ;3
send_large_msg("user#id"..sudo,medo)
return " تم ارسال رابط مجموعتك الى المطور 📨✔️"
end
return {
patterns = {
'^[/!](addbot) (.*)$'
},
run = run,
}
--لتغير حقوق ابني