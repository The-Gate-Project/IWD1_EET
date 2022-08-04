BEGIN ~DDUGSLAV~

IF ~RandomNum(4,0)
    GlobalLT("Get_Key","GLOBAL",3)~ THEN BEGIN 0
  SAY @16907
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)
    GlobalLT("Get_Key","GLOBAL",3)~ THEN BEGIN 1
  SAY @16908
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
    GlobalLT("Get_Key","GLOBAL",3)~ THEN BEGIN 2
  SAY @16909
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
    GlobalLT("Get_Key","GLOBAL",3)~ THEN BEGIN 3
  SAY @16910
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)
    GlobalLT("Get_Key","GLOBAL",3)~ THEN BEGIN 4
  SAY @16911
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,0)
    Global("Get_Key","GLOBAL",3)~ THEN BEGIN 5
  SAY @16912
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)
    Global("Get_Key","GLOBAL",3)~ THEN BEGIN 6
  SAY @16913
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
    Global("Get_Key","GLOBAL",3)~ THEN BEGIN 7
  SAY @16914
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
    Global("Get_Key","GLOBAL",3)~ THEN BEGIN 8
  SAY @16915
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)
    Global("Get_Key","GLOBAL",3)~ THEN BEGIN 9
  SAY @16916
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,0)
    Global("Get_Key","GLOBAL",4)~ THEN BEGIN 10
  SAY @16917
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)
    Global("Get_Key","GLOBAL",4)~ THEN BEGIN 11
  SAY @16918
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
    Global("Get_Key","GLOBAL",4)~ THEN BEGIN 12
  SAY @16919
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
    Global("Get_Key","GLOBAL",4)~ THEN BEGIN 13
  SAY @16920
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)
    Global("Get_Key","GLOBAL",4)~ THEN BEGIN 14
  SAY @16921
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 15
  SAY @16922
  IF ~~ THEN EXIT
END
