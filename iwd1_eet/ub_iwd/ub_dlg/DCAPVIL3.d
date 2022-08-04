BEGIN ~DCAPVIL3~

IF ~RandomNum(5,1)
    !Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 0
  SAY @1955
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    !Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 1
  SAY @1956
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    !Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 2
  SAY @1957
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
!Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 3
  SAY @1958
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
    !Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 4
  SAY @1959
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)
    Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 5
  SAY @1960
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 6
  SAY @1961
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 7
  SAY @1962
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
    Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 8
  SAY @1963
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
    Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)~ THEN BEGIN 9
  SAY @1964
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 10
  SAY @1965
  IF ~~ THEN EXIT
END
