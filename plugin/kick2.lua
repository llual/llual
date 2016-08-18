do 

local function pre_process(msg) 
local monstero = msg['id'] 
local oscpar = 'XVOIPER:'..msg.to.id 
local user = msg.from.id 
local chat = msg.to.id 
local link = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ll][Gg][Rr][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]") or msg.text:match("[Gg][Oo][Oo]%.[Gg][Li]/") or msg.text:match("[Aa][Dd][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Ii][Tt]%.[Ll][Yy]") or msg.text:match("[Cc][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Vv]%.[Vv][Cc]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]") 
local bot = msg.text:match("?[Ss][Tt][Aa][Rr][Tt]=") or msg.text:match("?[Ss][Tt][Oo][Pp]=") 
            if link and redis:get(oscpar) and not bot and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            kick_user(user, chat) 
            local psp = " 🔹عزيزي : "..msg.from.first_name.."".."\n".."🔹يمنع نشر (روابط - اعلانات - قنوات)🍃".."\n".."🔹كان عليك التزام بالقوانين🚫 ".."\n".."🔹 لقد تم طردك يا : @"..(msg.from.username or " ") 
reply_msg(monstero, psp, ok_cb, true) 
        end 

        return msg 
    end 

local function monster(msg, matches) 
local monster = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'kik' and matches[2] == "link" and is_momod(msg) then 
                    local oscpar = 'XVOIPER:'..msg.to.id 
                    redis:set(oscpar, true) 
                    local dd = 'تم قفل الروابط مع تحذير وطرد {✔}😈' 
reply_msg(monster, dd, ok_cb, true) 
elseif matches[1] == 'kik' and matches[2] == 'link' and not is_momod(msg) then 
local pxpp = 'للمشرفين فقط✋👿' 
reply_msg(monster, pxpp, ok_cb, true) 

    elseif matches[1] == 'unkik' and matches[2] == 'link' and is_momod(msg) then 
      local oscpar = 'XVOIPER:'..msg.to.id 
      redis:del(oscpar) 
    local gg = ' تم الغاء قفل الروابط مع تحذير وطرد {❎}😈' 
reply_msg(monster, gg, ok_cb, true) 
elseif matches[1] == 'unkik' and matches[2] == 'link' and not is_momod(msg) then 
local pxff = 'للمشرفين فقط✋👿' 
reply_msg(monster, pxff, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](kik) (.*)$', 
        '^[!/#](unkik) (.*)$' 
    }, 
    run = monster, 
    pre_process = pre_process 
} 

end 