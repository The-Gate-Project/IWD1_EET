BEGIN ~DINCYLIA~

IF ~RandomNum(3,1)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 0
  SAY @7959
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 1
  SAY @11307
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 2
  SAY @11310
  IF ~~ THEN EXIT
END

IF ~Global("Crazy_Priests","GLOBAL",1)
    !Global("Crazy_Incylia","GLOBAL",1)~ THEN BEGIN 3
  SAY @11340
  IF ~~ THEN DO ~SetGlobal("Crazy_Incylia","GLOBAL",1)~ EXIT
END

IF ~Global("Crazy_Priests","GLOBAL",1)
    Global("Crazy_Incylia","GLOBAL",1)~ THEN BEGIN 4
  SAY @11344
  IF ~~ THEN EXIT
END
