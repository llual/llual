--by dev @mustafadev
local function mustafadev (msg,matches) 
   local rev =  string.reverse(matches[1]) 
       return "تم قلب الاحرف😂👇🏻 يا @"..msg.from.username..":\n"..rev 
end 
return {patterns = { 
    "[/!#]rev (.*)" 
}, 
run = mustafadev 
}
-- Bot channel @dev_net