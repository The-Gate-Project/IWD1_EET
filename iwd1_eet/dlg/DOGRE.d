BEGIN ~DOGRE~

IF ~NumTimesTalkedTo(0)
    !Global("Ghereg_Head","GLOBAL",3)~ THEN BEGIN 0
  SAY @1024
  IF ~~ THEN REPLY @1025 DO ~SetGlobal("Ghereg_Head","GLOBAL",1)
                             AddJournalEntry(@5073,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @1026 DO ~SetGlobal("Ghereg_Head","GLOBAL",1)
                             AddJournalEntry(@5055,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @1027 DO ~SetGlobal("Ghereg_Head","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @1029 DO ~SetGlobal("Ghereg_Head","GLOBAL",1)
                             AddJournalEntry(@5058,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1030
  IF ~~ THEN REPLY @1031 GOTO 4
  IF ~~ THEN REPLY @1032 GOTO 2
  IF ~~ THEN REPLY @1033 GOTO 3
  IF ~~ THEN REPLY @1034 GOTO 3
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @1035 GOTO 7
  IF ~Class(LastTalkedToBy,DRUID_ALL)~ THEN REPLY @1036 DO ~AddXP2DA("ID1EX1E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@6258)
                                                            SetGlobal("Ghereg_Head","GLOBAL",3)
                                                            EraseJournalEntry(@5073)
                                                            EraseJournalEntry(@5055)
                                                            EraseJournalEntry(@5058)
                                                            AddJournalEntry(@5060,QUEST_DONE)~ GOTO 5
  IF ~!Class(LastTalkedToBy,DRUID_ALL)
      Global("Ghereg_Head","GLOBAL",2)~ THEN REPLY @1037 DO ~AddXP2DA("ID1EX1E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@6258)
                                                             SetGlobal("Ghereg_Head","GLOBAL",3)
                                                             EraseJournalEntry(@5073)
                                                             EraseJournalEntry(@5055)
                                                             EraseJournalEntry(@5058)
                                                             AddJournalEntry(@5060,QUEST_DONE)~ GOTO 5
  IF ~~ THEN REPLY @1038 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1039
  IF ~~ THEN REPLY @1040 GOTO 4
  IF ~~ THEN REPLY @1041 GOTO 3
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @1042 GOTO 7
  IF ~Class(LastTalkedToBy,DRUID_ALL)~ THEN REPLY @1043 DO ~AddXP2DA("ID1EX1E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@6258)
                                                            SetGlobal("Ghereg_Head","GLOBAL",3)
                                                            EraseJournalEntry(@5073)
                                                            EraseJournalEntry(@5055)
                                                            EraseJournalEntry(@5058)
                                                            AddJournalEntry(@5060,QUEST_DONE)~ GOTO 5
  IF ~!Class(LastTalkedToBy,DRUID_ALL)
      Global("Ghereg_Head","GLOBAL",2)~ THEN REPLY @1044 DO ~AddXP2DA("ID1EX1E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@6258)
                                                             SetGlobal("Ghereg_Head","GLOBAL",3)
                                                             EraseJournalEntry(@5073)
                                                             EraseJournalEntry(@5055)
                                                             EraseJournalEntry(@5058)
                                                             AddJournalEntry(@5060,QUEST_DONE)~ GOTO 5
  IF ~~ THEN REPLY @1045 GOTO 3
  IF ~~ THEN REPLY @1046 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1054
  IF ~~ THEN REPLY @1055 DO ~Enemy()
                             EraseJournalEntry(@5073)
                             EraseJournalEntry(@5055)
                             EraseJournalEntry(@5058)
                             AddJournalEntry(@5057,QUEST_DONE)
                             Attack(LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1059
  IF ~~ THEN REPLY @1060 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1061
  IF ~~ THEN REPLY @1062 DO ~EscapeArea()~ EXIT
END

IF ~NumTimesTalkedToGT(0)
    !Global("Ghereg_Head","GLOBAL",3)~ THEN BEGIN 6
  SAY @1063
  IF ~Class(LastTalkedToBy,DRUID_ALL)~ THEN REPLY @1064  DO ~AddXP2DA("ID1EX1E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@6258)
                                                             SetGlobal("Ghereg_Head","GLOBAL",3)
                                                             EraseJournalEntry(@5073)
                                                             EraseJournalEntry(@5055)
                                                             EraseJournalEntry(@5058)
                                                             AddJournalEntry(@5060,QUEST_DONE)~ GOTO 5
  IF ~!Class(LastTalkedToBy,DRUID_ALL)
      Global("Ghereg_Head","GLOBAL",2)~ THEN REPLY @1067 DO ~AddXP2DA("ID1EX1E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@6258)
                                                             SetGlobal("Ghereg_Head","GLOBAL",3)
                                                             EraseJournalEntry(@5073)
                                                             EraseJournalEntry(@5055)
                                                             EraseJournalEntry(@5058)
                                                             AddJournalEntry(@5060,QUEST_DONE)~ GOTO 5
  IF ~~ THEN REPLY @1068 GOTO 3
  IF ~~ THEN REPLY @1069 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1070
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @1071 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1072 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @1084 EXIT
END
