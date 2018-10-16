#! /usr/bin/awk -f

BEGIN{
  print "Make the meaningful word from given characters. All the best!!"
  num=1
  do{
    record= getline < "words"
    if(record == 1) word[num]=$0
    num++
  }while(record==1)

  while(1){
    srand()
    len=length(word)
    randomNo=int(1+rand()*len)
    value=word[randomNo]

    for(i=1;i <=length(value);i++){
      characters[i]= substr(value,i,1)
    }

    print "+------+"
    print "| "characters[3] "  "characters[2]" |"
    print "| "characters[1] "  "characters[4]" |"
    print "+------+"
    print "\nYour Answer ->"
    getline ans

    if(ans==value){ 
      print "\nAmazing!! Try this-"
      true+=1
    }
    if(ans!=value){
      print "\nWrong!!"
      print "Correct Answer : "value
      print "\n****YOUR SCORE="true" *****"
      exit
    }
  }
}
