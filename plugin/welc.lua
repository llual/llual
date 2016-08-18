do

local function dev_com(msg,matches) 

if matches[1] == "chat_add_user" then 
return 'اهلا وسهلا عزيـزي🔥🌝'..'\n'
..'😊: اسمك : '..msg.from.first_name..'\n'
..'😒: مـعرفك : @'..(msg.action.user.username or'لا يوجد')..'\n'
..'⛔:ايديــك : '..msg.action.user.id..'\n'
..'♥: اسم المجموعة : '..msg.to.title..'\n'
..'⚶: ايدي المجموعة : '..msg.to.id..'\n'
..'🌝: الظـافـك : '..msg.from.print_name..'\n'
..'😌: الـمعـرف مالتـه : '..(msg.from.username or 'لا يوجد')..'\n'
..'😒: تلـيفـونه : '..(msg.from.phohne or 'لا يوجد')..'\n'

elseif matches[1] == "chat_add_user_link" then 
return 'اهلا وسهلا عزيـزي🔥🌝'..'\n'
..'😊: اسمك : '..msg.from.first_name..'\n'
..'😒: مـعرفك : @'..(msg.action.user.username or'لا يوجد')..'\n'
..'⛔:ايديــك : '..msg.action.user.id..'\n'
..'♥: اسم المجموعة : '..msg.to.title..'\n'
..'⚶: ايدي المجموعة : '..msg.to.id..'\n'
..'🌝: الظـافـك : '..msg.from.print_name..'\n'
..'😌: الـمعـرف مالتـه : '..(msg.from.username or 'لا يوجد')..'\n'
..'😒: تلـيفـونه : '..(msg.from.phohne or 'لا يوجد')..'\n'

elseif matches[1] == "chat_del_user" then 
return 'وداعا عزيزي 🌹'

end 
end 
 
return { 
patterns = { 
"^!!tgservice (.*)$" 
}, 
run = dev_com
} 
end

-- @lapil
-- channel @dev_com