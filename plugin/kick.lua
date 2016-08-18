--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ لتحذف حقوق بذمتك🚶🏻 
      #CODS CREATED By ~ @JALAL_ALDON 
      please join to Channel Oscar Team @OSCARBOTv2 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 
do 

local function pre_process(msg) 
local jalal = msg['id'] 
local user = msg.from.id 
local chat = msg.to.id 
   local osccar = 'mmate:'..msg.to.id 
    if redis:get(osccar) and msg.fwd_from and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            kick_user(user, chat) 
        end 

        return msg 
    end 

local function run(msg, matches) 
local jalal = msg['id'] 
    chat_id =  msg.to.id 
--by @JALAL_ALDON 
    if matches[1] == 'kik' and matches[2] == "fwd" and is_momod(msg) then 
                    local osccar = 'mmate:'..msg.to.id 
                    redis:set(osccar, true) 
                    local jd = 'تم قفل اعاده توجيه مع طرد{✔}😈' -- By @JALAL_ALDON 
reply_msg(jalal, jd, ok_cb, true) 
elseif matches[1] == 'kik' and matches[2] == 'fwd' and not is_momod(msg) then 
local asdy = 'للمشرفين فقط عزيزي👿' 
reply_msg(jalal, asdy, ok_cb, true) 

    elseif matches[1] == 'unkik' and matches[2] == 'fwd' and is_momod(msg) then 
      local osccar = 'mmate:'..msg.to.id 
      redis:del(osccar) 
    local don = ' تم الغاء قفل اعادة توجيه مع طرد{❎}😈' --by @JALAL_ALDON 
reply_msg(jalal, don, ok_cb, true) 
elseif matches[1] == 'unkik' and matches[2] == 'fwd' and not is_momod(msg) then 
local jalal_aldon = 'للمشرفين فقط عزيزي 👿' 
reply_msg(jalal, jalal_aldon, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](kik) (.*)$', 
       '^[!/#](unkik) (.*)$' 
    }, 
    run = run, 
    pre_process = pre_process 
} 

-- By @JALAL_ALDON 
end