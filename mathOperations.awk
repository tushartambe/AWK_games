#! /usr/bin/awk -f
BEGIN{
  true=0
  print "----------Fetching Questions--------"
  #  system("sleep 2")
  print "*******TEST STARTED*******"

  while(1){
    srand()  
    num1=int(rand()*10)
    num2=int(rand()*10)

    operator[1]="+"
    operator[2]="-"
    operator[3]="*"
    operator[4]="/"
    op=int(1+rand()*3)

    print num1 operator[op] num2 "="
    getline answer < "-"
    #print "Checking your answer....Please wait.!!"
   # system("sleep 1")

    if(op==1){
      if(int(answer)==(num1+num2)){
        print "Right Answer"
        true+=1
      }
      else{
        print "Wrong answer!"
        print "\n Your Score:-"true
      exit
    }
  }
  else if(op==2){
    if(int(answer)==(num1-num2)){
      print "Right Answer"
      true+=1
    }
    else{
      print "Wrong answer"
      print "\n Your correct answers :-"true
      exit
    }
  }
  else if(op==3){
    if(int(answer)==(num1*num2)){
      print "Right Answer"
      true+=1
    }
    else{
      print "Wrong answer"
      print "\n Your correct answers :-"true
      exit
    }
  }
  else{
    if(int(answer)==(num1/num2)){
      print "Right Answer"
      true+=1
    }
    else{
      print "Wrong Answer"
      print "\n Your correct answers :-"true
      exit
    }
  }
}
}
