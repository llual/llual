local sudo = { 
'سلام مای فادر', 
'سلام عشقم😍', 
'سلام بابایی', 
'بسه دیگه بابا جون😐', 
'بابا جونم داری عنشو در میاری😐', 
'بابا چرا ادای چس ممبرا رو در میاری', 
'بسهههه بابایی باشه سلاممممم', 
'بابای دیگه سلام نده برو منو آپدیت کن😒❤', 
}, 
'local' member = { 
'علیک', 
'یبار گفتم علیک😐', 
'چقد سلام میدی کسکش😐', 'بسه برادر باشه سلام😐', 
'اینسری سلام بدی بن ال😑' 

  }, 
'local' function run(msg, matches) 
if is_sudo(msg) then 
return sudo[math.random(#sudo)] 
else 
return member[math.random(#member)] 
end 
end 
return { 
  patterns = { 
    "^سلام", 
  }, 
  run = run 
} 

--by @Mr_Anti_Admin 
--Channel @BeyondTeam