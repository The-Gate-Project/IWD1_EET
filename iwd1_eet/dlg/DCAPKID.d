BEGIN ~DCAPKID~

IF ~RandomNum(5,1)
    !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 0
  SAY @1903
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 1
  SAY @1904
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 2
  SAY @1905
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
    !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 3
  SAY @1906
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
    !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 4
  SAY @1907
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)
    Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 5
  SAY @1908
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 6
  SAY @1909
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 7
  SAY @1910
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
    Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 8
  SAY @1911
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
    Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 9
  SAY @1912
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 10
  SAY @1913
  IF ~~ THEN EXIT
END
