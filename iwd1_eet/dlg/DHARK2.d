BEGIN ~DHARK2~

IF ~RandomNum(3,1)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 0
  SAY @18838
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 1
  SAY @18840
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 2
  SAY @18841
  IF ~~ THEN EXIT
END

IF ~Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 3
  SAY @18842
  IF ~~ THEN EXIT
END
