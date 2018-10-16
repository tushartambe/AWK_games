#! /usr/bin/awk -f

BEGIN{
  que[1]="1. Kalpana Chawla was the first Indian woman to go into space.\nA.TRUE  B.FALSE"
  que[2]="2. Which state is known as India's Spice Garden? \nA.KERALA   B.BIHAR"
  que[3]="3. Name the oldest mountain range in India?\nA.SAHYADRI  B.ARAVALI"
  que[4]="4. Mahatma Gandhi is unofficially known as the 'Father of the Indian Nation'?\ A.TRUE  B.FALSE"
  que[5]="5. When was the constitution of India adopted?\nA. Jan 1950  B. Nov 1949"
  que[6]="6. How many states are there in India?\nA.28  B.29"
  
  ans[1]="A"
  ans[2]="A"
  ans[3]="B"
  ans[4]="A"
  ans[5]="B"
  ans[6]="B"

  for(i=1; i<=length(que); i++){
    print que[i]
    getline answer < "-"
    if(answer==ans[i]){
      #print "Right Answer!!!!"
      true+=1
    }
    else{
      #print "OOPS!! Wrong Answer!"
      false+=1
    }
  }

  print "Answers :-"
  for(i=1;i<=length(ans);i++){
    print "QUE."i" > " ans[i]
  }
  print "\n\n YOURRESULT :-- \n Right : "true"\t Wrong : "false
}
