do
local function run(msg,matches) 
local lua = "مرحبا @"..msg.from.username.." حظرت المطور انت مطور في مجموعة البوت 😼" 
if matches[1] == "me" and is_sudo(msg) then 
reply_msg(msg.id,lua,ok_cb,true)  


elseif matches[1]== "me" and is_momod(msg) then

local php = "مرحبا عزيزي @"..msg.from.username.." انت ادمن في مجموعة البوت🚏"
reply_msg(msg.id,php,ok_cb,true)

elseif matches[1] == "me" and is_owner(msg) then
local vip = "مرحبا عزيزي @"..msg.from.username.." انت مدير في مجموعة البوت 😸🚀"
reply_msg(msg.id,vip,ok_cb,true)

elseif matches[1] == "me" and not is_momod(msg) then
local hamode = "مرحبا عزيزي 🙂💙 @"..msg.from.username.." انت عظو في مجموعة البوت ابذل جهدك لكي تترفع"
reply_msg(msg.id,hamode,ok_cb,true) 
end
end
return {  
  patterns = {
       "^[#!/](me)$",
},
  run = run
}

end
-- @lua_cli
--channel @dev_com