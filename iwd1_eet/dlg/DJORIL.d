BEGIN ~DJORIL~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4193
  IF ~~ THEN REPLY @8952 GOTO 2
  IF ~~ THEN REPLY @8958 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @8954
  IF ~~ THEN REPLY @8952 GOTO 2
  IF ~~ THEN REPLY @8958 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8956
  IF ~~ THEN REPLY @9024 GOTO 19
  IF ~~ THEN REPLY @8957 GOTO 19
  IF ~~ THEN REPLY @8958 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8961
  IF ~~ THEN REPLY @8962 DO ~EraseJournalEntry(@34265)
                             EraseJournalEntry(@16526)
                             EraseJournalEntry(@34382)
                             EraseJournalEntry(@34241)
                             AddJournalEntry(@34385,QUEST_DONE)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8963
  IF ~CheckStatGT(LastTalkedToBy,11,CHR)~ THEN REPLY @8964 GOTO 5
  IF ~~ THEN REPLY @18371 GOTO 20
  IF ~~ THEN REPLY @18372 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8965
  IF ~~ THEN REPLY @8966 DO ~AddXP2DA("ID1EX10A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@8563)
                             GiveItem("Joril",LastTalkedToBy)
                             SetGlobal("Got_Joril_Badge","GLOBAL",1)
                             EraseJournalEntry(@34265)
                             EraseJournalEntry(@16526)
                             EraseJournalEntry(@34382)
                             EraseJournalEntry(@34241)
                             AddJournalEntry(@34384,QUEST_DONE)~ GOTO 6
  IF ~~ THEN REPLY @8967 DO ~AddXP2DA("ID1EX10V")
                             DisplayStringNoNameDlg(LastTalkedToBy,@8562)
                             EraseJournalEntry(@34265)
                             EraseJournalEntry(@16526)
                             EraseJournalEntry(@34382)
                             EraseJournalEntry(@34241)
                             AddJournalEntry(@34383,QUEST_DONE)~ GOTO 16
END

IF ~~ THEN BEGIN 6
  SAY @8969
  IF ~Global("Fool_Joril","GLOBAL",1)~ THEN REPLY @8970 GOTO 7
  IF ~!Global("Fool_Joril","GLOBAL",1)~ THEN REPLY @8971 GOTO 15
  IF ~~ THEN REPLY @8972 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8973
  IF ~~ THEN REPLY @7857 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @8974
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @8975 GOTO 9
  IF ~~ THEN REPLY @8976 DO ~SetGlobal("Know_Sacrifices","GLOBAL",1)
                             AddJournalEntry(@34382,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @8977 GOTO 17
  IF ~~ THEN REPLY @8972 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8980
  IF ~~ THEN REPLY @8981 DO ~SetGlobal("Know_Sacrifices","GLOBAL",1)
                             AddJournalEntry(@34241,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @8982 GOTO 17
  IF ~~ THEN REPLY @8972 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8984
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8985 DO ~AddXP2DA("ID1EX10V")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@8562)
                                                            EraseJournalEntry(@34265)
                                                            EraseJournalEntry(@16526)
                                                            EraseJournalEntry(@34382)
                                                            EraseJournalEntry(@34241)
                                                            AddJournalEntry(@34337,QUEST_DONE)~ GOTO 11
  IF ~~ THEN REPLY @8986 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @8987
  IF ~~ THEN REPLY @1582 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8989
  IF ~~ THEN REPLY @8972 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @8990
  IF ~~ THEN REPLY @8991 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @8992
  IF ~~ THEN REPLY @8993 DO ~AddJournalEntry(@34324,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 15
  SAY @8994
  IF ~~ THEN REPLY @8995 GOTO 7
END

IF ~~ THEN BEGIN 16
  SAY @8997
  IF ~~ THEN REPLY @1582 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @8998
  IF ~~ THEN REPLY @8999 GOTO 10
END

IF WEIGHT #0
~Global("Got_Joril_Badge","GLOBAL",1)~ THEN BEGIN 18
  SAY @9000
  IF ~~ THEN REPLY @9001 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @1502 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @9019
  IF ~Global("Fool_Joril","GLOBAL",1)~ THEN REPLY @9020 GOTO 3
  IF ~Global("Fool_Joril","GLOBAL",1)~ THEN REPLY @9021 GOTO 3
  IF ~~ THEN REPLY @9022 GOTO 13
  IF ~~ THEN REPLY @9023 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @18373
  IF ~~ THEN REPLY @18374 GOTO 16
  IF ~~ THEN REPLY @18372 EXIT
END
