BEGIN ~DJERMSY~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @937
  IF ~~ THEN REPLY @938 DO ~AddJournalEntry(@5066,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @939 DO ~AddJournalEntry(@5066,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @940 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @941
  IF ~~ THEN REPLY @942 DO ~AddXP2DA("ID1EX1H")
                            DisplayStringNoNameDlg(LastTalkedToBy,@6255)~ GOTO 3
  IF ~~ THEN REPLY @943 GOTO 4
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @944 GOTO 6
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @945 GOTO 5
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @946 DO ~AddXP2DA("ID1EX1H")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@17343)~ GOTO 6
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GENEUTRAL)~ THEN REPLY @947 GOTO 7
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @948 GOTO 7
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @949 DO ~AddXP2DA("ID1EX1H")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@6255)~ GOTO 3
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @950 GOTO 8
  IF ~Class(LastTalkedToBy,DRUID_ALL)~ THEN REPLY @951 GOTO 8
  IF ~~ THEN REPLY @952 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @953
  IF ~~ THEN REPLY @954 DO ~AddXP2DA("ID1EX1H")
                            DisplayStringNoNameDlg(LastTalkedToBy,@6255)~ GOTO 3
  IF ~~ THEN REPLY @955 GOTO 4
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @956 GOTO 6
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @957 GOTO 5
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @958 DO ~AddXP2DA("ID1EX1H")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@17343)~ GOTO 6
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GENEUTRAL)~ THEN REPLY @959 GOTO 7
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @960 GOTO 7
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @961 DO ~AddXP2DA("ID1EX1H")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@6255)~ GOTO 3
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @962 GOTO 8
  IF ~Class(LastTalkedToBy,DRUID_ALL)~ THEN REPLY @963 GOTO 8
  IF ~~ THEN REPLY @964 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @965
  IF ~~ THEN REPLY @2318 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @966
  IF ~~ THEN REPLY @967 DO ~AddXP2DA("ID1EX1H")
                            DisplayStringNoNameDlg(LastTalkedToBy,@6255)~ GOTO 3
  IF ~~ THEN REPLY @968 DO ~AddXP2DA("ID1EX1H")
                            DisplayStringNoNameDlg(LastTalkedToBy,@17342)~ GOTO 3
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @969 DO ~AddXP2DA("ID1EX1H")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@18709)~ GOTO 6
  IF ~~ THEN REPLY @970 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @971
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY @972 DO ~AddXP2DA("ID1EX1H")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@6255)~ GOTO 3
  IF ~CheckStatLT(LastTalkedToBy,15,WIS)~ THEN REPLY @973 GOTO 4
  IF ~~ THEN REPLY @974 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @975
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @976
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GENEUTRAL)~ THEN REPLY @977 GOTO 4
  IF ~Class(LastTalkedToBy,DRUID_ALL)~ THEN REPLY @978 GOTO 4
  IF ~~ THEN REPLY @979 GOTO 4
  IF ~~ THEN REPLY @980 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @981
  IF ~~ THEN REPLY @982 GOTO 4
  IF ~~ THEN REPLY @983 EXIT
END
