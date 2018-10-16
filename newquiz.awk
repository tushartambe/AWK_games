#! /usr/bin/awk -f

BEGIN{
  num=1
  do{
    success = getline < "questions_and_answers_for_quiz.txt"
    if(success ==1 ) q[num] = $0

    success = getline < "questions_and_answers_for_quiz.txt"
    if(success ==1 ) a[num] = $0
    num++
  }while(success==1)
  print q[1]
}  
$0==a[NR]{true+=1}
$0!=a[NR]{false+=1}
(length(q)==NR){
  print "------------------QUIZ ENDED--------------"
  print "\n\n YOUR RESULT :-- \n Right : "true"\t Wrong : "false 
  print "----------------------------------------\nRight Answers :-"
  for(i=1;i<=length(a);i++){
    print "QUE."i" > " a[i]
  }
  exit
}
  {print q[NR+1]}

