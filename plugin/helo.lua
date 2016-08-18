do

local function run(msg, matches)
if matches[1]== "اريد بوت لكروبي" and is_momod(msg) then
   return "هـسه يـجي استادي ويصنعـلك 😁💖"
end
end

return {  
  patterns = {
       "^(اريد بوت لكروبي)$",
},
  run = run,
}

end