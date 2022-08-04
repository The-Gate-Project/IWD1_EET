BEGIN ~DKERISHG~

IF ~Global("Kerish_Look","GLOBAL",0)~ THEN BEGIN 0
  SAY @16893
  IF ~~ THEN REPLY @16884 GOTO 2
  IF ~~ THEN REPLY @9817 GOTO 3
END

IF ~Global("Kerish_Look","GLOBAL",1)~ THEN BEGIN 1
  SAY @16886
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @16897
  IF ~~ THEN REPLY @16890 DO ~StartCutSceneMode()
                              StartCutScene("wtgcut2")~ EXIT
  IF ~~ THEN REPLY @16891 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @16892
  IF ~~ THEN REPLY @1502 DO ~StartCutScene("wtgcut1")~ EXIT
END
