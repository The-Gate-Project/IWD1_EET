BEGIN ~DLISTEN~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @16943
  IF ~~ THEN REPLY @16925 DO ~SetGlobal("Hear_Noise","GLOBAL",1)
                              AddJournalEntry(@16940,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @9817 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @16949
  IF ~~ THEN REPLY @16925 DO ~SetGlobal("Hear_Noise","GLOBAL",1)
                              AddJournalEntry(@16940,QUEST)~ GOTO 2
  IF ~Global("Hear_Noise","GLOBAL",1)~ THEN REPLY @16950 GOTO 8
  IF ~~ THEN REPLY @9817 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @16952
  IF ~~ THEN REPLY @16953 GOTO 3
  IF ~~ THEN REPLY @16954 DO ~SetGlobal("Hear_Noise","GLOBAL",3)
                              AddJournalEntry(@34217,QUEST)~ GOTO 4
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY @16956 DO ~SetGlobal("Hear_Noise","GLOBAL",4)
                                                            AddXP2DA("ID1EX10E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@16941)
                                                            AddJournalEntry(@34211,QUEST)~ GOTO 5
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY @16957 DO ~SetGlobal("Hear_Noise","GLOBAL",4)
                                                            AddXP2DA("ID1EX10E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@16942)
                                                            AddJournalEntry(@34207,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @16958 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @16959
  IF ~~ THEN REPLY @16954 DO ~SetGlobal("Hear_Noise","GLOBAL",3)
                              AddJournalEntry(@34217,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @16960 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @16962
  IF ~~ THEN REPLY @1502 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16964
  IF ~Global("SPRITE_IS_DEADVERA","GLOBAL",1)~ THEN REPLY @17755 GOTO 10
  IF ~!Global("SPRITE_IS_DEADVERA","GLOBAL",1)~ THEN REPLY @1502 DO ~SetGlobal("Betray_Vera","GLOBAL",1)~ EXIT
END

IF WEIGHT #1
~Global("Hear_Noise","GLOBAL",3)~ THEN BEGIN 6
  SAY @16965
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY @16956 DO ~SetGlobal("Hear_Noise","GLOBAL",4)
                                                            AddXP2DA("ID1EX10E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@16941)
                                                            AddJournalEntry(@34211,QUEST)~ GOTO 5
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY @16957 DO ~SetGlobal("Hear_Noise","GLOBAL",4)
                                                            AddXP2DA("ID1EX10E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@16942)
                                                            AddJournalEntry(@34207,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @16984 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16968
  IF ~~ THEN REPLY @16971 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @16972
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY @16956 DO ~SetGlobal("Hear_Noise","GLOBAL",4)
                                                            AddXP2DA("ID1EX10E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@16941)
                                                            AddJournalEntry(@34211,QUEST)~ GOTO 5
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY @16957 DO ~SetGlobal("Hear_Noise","GLOBAL",4)
                                                            AddXP2DA("ID1EX10E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@16942)
                                                            AddJournalEntry(@34207,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @16954 DO ~SetGlobal("Hear_Noise","GLOBAL",3)~ GOTO 4
  IF ~~ THEN REPLY @16953 GOTO 3
  IF ~~ THEN REPLY @16960 EXIT
END

IF WEIGHT #0
~Global("Hear_Noise","GLOBAL",4)~ THEN BEGIN 9
  SAY @16983
  IF ~~ THEN REPLY @1502 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @17756
  IF ~~ THEN REPLY @1502 EXIT
END
