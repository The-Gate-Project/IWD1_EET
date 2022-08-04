BEGIN ~DTHOM~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21658
  IF ~~ THEN REPLY @21659 GOTO 1
  IF ~!Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)~ THEN REPLY @21660 GOTO 2
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)~ THEN REPLY @21660 GOTO 3
  IF ~~ THEN REPLY @21662 GOTO 4
  IF ~~ THEN REPLY @21663 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @21664
  IF ~!Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)~ THEN REPLY @21665 GOTO 2
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)~ THEN REPLY @21665 GOTO 3
  IF ~~ THEN REPLY @21662 GOTO 4
  IF ~~ THEN REPLY @21668 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @21669
  IF ~~ THEN REPLY @21662 GOTO 4
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @21670 GOTO 5
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @21670 GOTO 6
  IF ~~ THEN REPLY @21672 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21673
  IF ~~ THEN REPLY @21662 GOTO 4
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @21670 GOTO 5
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @21670 GOTO 6
  IF ~~ THEN REPLY @21672 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21677
  IF ~~ THEN REPLY @21678 GOTO 7
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @21670 GOTO 5
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @21670 GOTO 6
  IF ~~ THEN REPLY @21672 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21682
  IF ~~ THEN REPLY @21683 GOTO 8
  IF ~~ THEN REPLY @21684 GOTO 9
  IF ~~ THEN REPLY @21685 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21686
  IF ~~ THEN REPLY @21683 GOTO 8
  IF ~~ THEN REPLY @21684 GOTO 9
  IF ~~ THEN REPLY @21685 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21689
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @21670 GOTO 5
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @21670 GOTO 6
  IF ~~ THEN REPLY @21672 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @21692
  IF ~~ THEN REPLY @21693 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @21694
  IF ~~ THEN REPLY @21672 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 10
  SAY @21695
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @21670 GOTO 5
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      !Global("ID9300_Visited","GLOBAL",1)
      Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @21670 GOTO 6
  IF ~~ THEN REPLY @21662 GOTO 4
  IF ~~ THEN REPLY @21698 EXIT
END
