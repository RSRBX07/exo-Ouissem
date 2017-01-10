ch1 = "Ma poul' n'a plus que "
ch2 = " poussins"
ch3 = "Elle en avait trente.\n"
ch4 ="Allongeons la jambe, \n Allongeons la jambe, la jambe.\n Car la route est longue.\n"

30.times do |i|
    ch = ch1 + String(i) + ch2 +",\n" + ch1 + String(i) + ch2 +".\n" + ch3  + ch4 + ch4    
    puts ch
end