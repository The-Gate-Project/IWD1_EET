BEGIN ~DCAPKID2~

IF ~RandomNum(5,1)
    GlobalLT("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 0
  SAY @1943
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    GlobalLT("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 1
  SAY @1944
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    GlobalLT("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 2
  SAY @1945
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
    GlobalLT("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 3
  SAY @1946
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
    GlobalLT("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 4
  SAY @1947
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)
    Global("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 5
  SAY @1948
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    Global("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 6
  SAY @1949
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    Global("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 7
  SAY @1950
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
    Global("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 8
  SAY @1951
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
    Global("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 9
  SAY @1952
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 10
  SAY @1953
  IF ~~ THEN EXIT
END
