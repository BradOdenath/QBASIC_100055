DECLARE SUB game ()
DECLARE SUB getname ()
CLS
PRINT "ITS CLOBBERIN TYME"
PRINT
PRINT "   ______________"
PRINT " /                \"
PRINT " \/\/\/\/\/\/\/\/\/"
PRINT " |\______________/|"
PRINT " |  ) U)       ) U)"
PRINT " |        <  >    |"
PRINT " |                |"
PRINT " |        oooo    |"
PRINT "  \      oooo    /"
PRINT "   |     \_/    |"
PRINT "    \__________/"
SLEEP (10)
PRINT
PRINT
game

SUB afk

END SUB

SUB game
INPUT "JUST KIDDING :D Lets play some dice? <y/n>", answer$
IF answer$ = "y" THEN
PRINT "Ok, let's get started!"
getname
ELSE
PRINT "HAVE A NICE LIFE YA LOOSER"
END IF
END SUB

SUB getname

END SUB

SUB rules
PRINT " **************************************************************************"
PRINT "* WE will play a game of dice. I will pick a number from 1 to six. Then    *"
PRINT "* you will pick a number from 1 to 6. We can't pick the same number. Then  *"
PRINT "* we will roll fie dice. If your number matches any of the dice rolled you *"
PRINT "* get one point for each dice matched. After 10 rolls the winner is the    *"
PRINT "* the person with the highest number matched. ******************************"
PRINT " *********************************************"
END SUB

