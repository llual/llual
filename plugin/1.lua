do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "🌐مــرحــبــا بــك يــا ::  "..msg.from.first_name.."\n".."ايديك ::  "..msg.from.id.."\n".."للمساعدة اضغط هناا @MR_TV 💠".."\n".."✅المطور @lua_cli ".."\n"..".يرجى عدم ارسال عدة رسايل الى البوت لكي لايتم حظرك⚠️ ".."\n".."واهــلا بــك مــرة اخــرى 😚  @"..msg.from.username 
     
  end 
   
end 

-- Edit @Dev_2

end 

return { 
  patterns = { 
       "(مرحبا)$",
       "(هلو)$",
       "(باي)$",
       "(انجب)$",
       "(احبك)$",
       "(شلونك)$",
       "(مطور)$"


  }, 
  run = run, 
} 

end 
-- By @iq_plus