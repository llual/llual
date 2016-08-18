local function pre_process(msg) 
local spam = msg.text
local saeco = "spam"..msg.to.id
if redis:get(saeco) and tonumber(#spam) > 100 and not is_momod(msg) then
delete_msg(msg.id, ok_cb, false)
local note = "🚨#Spam Warn \n 🐥About That \n 😠Spam Posting By "..msg.from.first_name.."\n".."🚀Group Name "..msg.to.title.."\n".."🙂Group ID :("..msg.to.id..")\n ☹️His ID :("..msg.from.id..")\n 😒 His Username :(@"..(msg.from.username or "Dont Found")..")"
local sudo = 159780280 -- set Your ID HERE ! ;3
send_large_msg("user#id"..sudo,note)
local reply = "🐥Hi "..msg.from.first_name.."\n 🙁Dont Send Spam Again Please 🚀\n #warn_spam \n #username @"..msg.from.username.."\n".."☹️You Send "..#spam.." characters"
return reply_msg(msg.id, reply, ok_cb, false)
end
return msg
end
local function saeco(msg,matches)
local saeco = "spam"..msg.to.id
if matches[1] == "on spam" and is_momod(msg) then
redis:set(saeco,true)
local reply = "🚀Hi "..msg.from.first_name.."\n 🐥Spam Posting Has Been Locked ✅ \n 🚨#Lock_Spam_Posting \n 👾 Command By @"..(msg.from.username or "Dont Found").."\n"
return reply_msg(msg.id, reply, ok_cb, false)
end
if matches[1] == "off spam" and is_momod(msg) then
redis:set(saeco,false)
local reply = "🚀Hi "..msg.from.first_name.."\n 🐥Spam Posting Has Been unLocked ✅ \n 🚨#unLock_spam_Posting \n 👾 Command By @"..(msg.from.username or "Dont Found").."\n"
return reply_msg(msg.id, reply, ok_cb, false)
end
end
-- << Write By @SAECO Dev By @llKiritoll  Tv Channel @DevHelpTv >>--
-- If You Change Any Thing :) This Plug Will Be Dont Do Any Thing Again
-- ياحلو لشتيل اي شي 😉
return {
patterns = { 
'^[!/#](on spam)$',  -- on check spam msg
'^[!/#](off spam)$' -- off check spam msg

},
run = saeco, 
pre_process = pre_process 
}