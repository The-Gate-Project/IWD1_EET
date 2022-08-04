BEGIN ~DCHALW~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @27525
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @27526
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @27527
  IF ~Global("Answer_Fire","GLOBAL",0)~ THEN REPLY @27535 DO ~SetGlobal("Answer_Fire","GLOBAL",1)~ GOTO 3
  IF ~Global("Answer_Earth","GLOBAL",0)~ THEN REPLY @27536 DO ~SetGlobal("Answer_Earth","GLOBAL",1)~ GOTO 4
  IF ~Global("Answer_Ice","GLOBAL",0)~ THEN REPLY @27537 DO ~SetGlobal("Answer_Ice","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @27538 GOTO 8
  IF ~Global("Answer_Water","GLOBAL",0)~ THEN REPLY @27539 DO ~SetGlobal("Answer_Water","GLOBAL",1)~ GOTO 6
  IF ~Global("Answer_Iron","GLOBAL",0)~ THEN REPLY @27540 DO ~SetGlobal("Answer_Iron","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @27528
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("swSpwnT3")~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @27528
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("swSpwnT2")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @27528
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("swSpwnT5")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @27528
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("swSpwnT4")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @27528
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("swSpwnT1")~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @27533
  IF ~~ THEN DO ~GiveItemCreate("Tale2",LastTalkedToBy,1,0,0)
                 AddXP2DA("ID1EX10H")
                 StartCutSceneMode()
                 StartCutScene("csGBrdEx")~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 9
  SAY @27534
  IF ~~ THEN GOTO 1
END
