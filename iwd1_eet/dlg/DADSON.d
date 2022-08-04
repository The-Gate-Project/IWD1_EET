BEGIN ~DADSON~

IF ~RandomNum(3,1)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 0
  SAY @9239
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 1
  SAY @9241
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 2
  SAY @9242
  IF ~~ THEN EXIT
END

IF ~Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 3
  SAY @9243
  IF ~~ THEN EXIT
END
