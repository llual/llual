--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    DEVBOT @ali_iraqi                 ▀▄ ▄▀ 
▀▄ ▄▀            (     @Dev_iq_s      )    ▀▄ ▄▀ 
▀▄ ▄▀    ME :: اضهار موقعك في المجموعه     ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
—]]
do

local function ali_iraqi(msg, matches)
if is_sudo(msg) then 
        local text = "♏️ انــyouــت { #مـطـور } البـوت 🦁🚬".."\n".."🆔 { الايــدي } مــالــتــك ||"..msg.from.id.."\n".."📛 {اســɲαmeــمــك }  ||  "..msg.from.first_name.."\n".."🕎 {مــعــuserــرفــك} ||  @"..msg.from.username.."\n".."🕚 {الــوقــت} :: "..os.date(' %T*', os.time())
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_owner(msg) then 
        local text = "♏️ انــyouــت { #مشرف }  👮🏼".."\n".."🆔 { الايــدي } مــالــتــك ||"..msg.from.id.."\n".."📛 {اســɲαmeــمــك }  ||  "..msg.from.first_name.."\n".."🕎 {مــعــuserــرفــك} ||  @"..msg.from.username.."\n".."🕚 {الــوقــت} :: "..os.date(' %T*', os.time())
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_momod(msg) then 
        local text = "♏️ انــyouــت { #ادمن }  🙄🎈".."\n".."🆔 { الايــدي } مــالــتــك ||"..msg.from.id.."\n".."📛 {اســɲαmeــمــك }  ||  "..msg.from.first_name.."\n".."🕎 {مــعــuserــرفــك} ||  @"..msg.from.username.."\n".."🕚 {الــوقــت} :: "..os.date(' %T*', os.time())
        return reply_msg(msg.id, text, ok_cb, false)
     end
if not is_momod(msg) then 
        local text = "♏️ انــyouــت { #عضوو }  🌝🐢🐍".."\n".."🆔 { الايــدي } مــالــتــك ||"..msg.from.id.."\n".."📛 {اســɲαmeــمــك }  ||  "..msg.from.first_name.."\n".."🕎 {مــعــuserــرفــك} ||  @"..msg.from.username.."\n".."🕚 {الــوقــت} :: "..os.date(' %T*', os.time())
        return reply_msg(msg.id, text, ok_cb, false)
     end
     end

return {  
  patterns = {
       "^(me)$",
  },
  run = ali_iraqi,
}

end