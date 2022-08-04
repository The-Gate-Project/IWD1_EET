BEGIN ~DGNTSLAV~

IF ~RandomNum(4,0)
    GlobalLT("Kill_Frost","GLOBAL",3)~ THEN BEGIN 0
  SAY @16923
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)
    GlobalLT("Kill_Frost","GLOBAL",3)~ THEN BEGIN 1
  SAY @16985
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
    GlobalLT("Kill_Frost","GLOBAL",3)~ THEN BEGIN 2
  SAY @16986
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
    GlobalLT("Kill_Frost","GLOBAL",3)~ THEN BEGIN 3
  SAY @16987
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(4,5)
    GlobalLT("Kill_Frost","GLOBAL",3)~ THEN BEGIN 4
  SAY @16911
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,0)
    Global("Kill_Frost","GLOBAL",3)~ THEN BEGIN 5
  SAY @16989
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)
    Global("Kill_Frost","GLOBAL",3)~ THEN BEGIN 6
  SAY @16913
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
    Global("Kill_Frost","GLOBAL",3)~ THEN BEGIN 7
  SAY @16914
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
    Global("Kill_Frost","GLOBAL",3)~ THEN BEGIN 8
  SAY @16992
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(4,5)
    Global("Kill_Frost","GLOBAL",3)~ THEN BEGIN 9
  SAY @16993
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,0)
    Global("Kill_Frost","GLOBAL",4)~ THEN BEGIN 10
  SAY @16917
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)
    Global("Kill_Frost","GLOBAL",4)~ THEN BEGIN 11
  SAY @16918
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
    Global("Kill_Frost","GLOBAL",4)~ THEN BEGIN 12
  SAY @16919
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
    Global("Kill_Frost","GLOBAL",4)~ THEN BEGIN 13
  SAY @16920
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(4,5)
    Global("Kill_Frost","GLOBAL",4)~ THEN BEGIN 14
  SAY @16921
  IF ~~ THEN EXIT
END
