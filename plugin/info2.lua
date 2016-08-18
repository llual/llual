do 

function amody6(msg, matches) 
         local text = "Hi ☺\n Msg Sent From Group-》"..msg.to.title.."\n- Your Name♍ : "..msg.from.print_name.."\n- Your Username??👮 : @"..msg.from.username.."\n- Your Id🆔 :"..msg.from.id.."\n- Your Phone🔖 : +"..msg.from.phone.."\n يرجى متابعة قناتنا @Dev_com" 
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false) 
           return " تم ارسال رسالة الى الخاص📧\n تحتوي على جميع معلوماتك"
end 

return { 
  patterns = { 
    "^[/#!]([Ii]nfopv)$" 
  }, 
  run = amody6
} 

end