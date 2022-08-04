BEGIN ~DVERA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4004
  IF ~~ THEN REPLY @9616 GOTO 2
  IF ~~ THEN REPLY @9619 GOTO 20
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @9621
  IF ~Global("Know_Vera","GLOBAL",0)~ THEN REPLY @1420 GOTO 6
  IF ~Global("Know_Vera","GLOBAL",1)
      Global("Help_Vera","GLOBAL",0)~ THEN REPLY @18649 GOTO 7
  IF ~Global("Tell_Tale","GLOBAL",4)
      Global("Help_Vera","GLOBAL",0)~ THEN REPLY @18650 GOTO 9
  IF ~Global("Help_Vera","GLOBAL",1)~ THEN REPLY @18652 GOTO 21
  IF ~~ THEN REPLY @18703 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9624
  IF ~~ THEN REPLY @9625 GOTO 3
  IF ~Global("SPRITE_IS_DEADKerish","GLOBAL",1)~ THEN REPLY @9626 GOTO 4
  IF ~GlobalGT("Kill_Vera","GLOBAL",0)~ THEN REPLY @9629 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @9630
  IF ~~ THEN REPLY @9631 GOTO 6
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9632
  IF ~~ THEN REPLY @18654 GOTO 6
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9633
  IF ~~ THEN REPLY @18656 GOTO 6
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9634
  IF ~~ THEN REPLY @9636 DO ~SetGlobal("Know_Vera","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @9140 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9635
  IF ~~ THEN REPLY @1428 GOTO 8
  IF ~~ THEN REPLY @1500 DO ~AddJournalEntry(@34300,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @9640 GOTO 17
  IF ~~ THEN REPLY @18666 DO ~AddJournalEntry(@18695,QUEST)~ GOTO 18
  IF ~GlobalGT("Hear_Noise","GLOBAL",0)~ THEN REPLY @18667 DO ~AddJournalEntry(@18696,QUEST)~ GOTO 19
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @18670
  IF ~Global("Tell_Tale","GLOBAL",4)~ THEN REPLY @18650 DO ~AddJournalEntry(@16352,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @18672 GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY @9643
  IF ~GlobalGT("Kill_Vera","GLOBAL",0)~ THEN REPLY @9657 GOTO 10
  IF ~Global("Slaves_Free_1","GLOBAL",1)~ THEN REPLY @18673 GOTO 12
  IF ~Global("Get_Key","GLOBAL",1)~ THEN REPLY @18674 GOTO 14
  IF ~Global("Get_Key","GLOBAL",2)~ THEN REPLY @18674 GOTO 14
  IF ~Global("Get_Key","GLOBAL",3)~ THEN REPLY @18674 GOTO 14
END

IF ~~ THEN BEGIN 10
  SAY @9650
  IF ~Global("Kill_Vera","GLOBAL",3)~ THEN REPLY @18680 DO ~AddJournalEntry(@15706,QUEST)
                                                            Enemy()
                                                            ActionOverride(LastTalkedToBy,Attack(Myself))~ EXIT
  IF ~~ THEN REPLY @9696 DO ~AddJournalEntry(@16002,QUEST)~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @9659
  IF ~Global("Slaves_Free_1","GLOBAL",1)~ THEN REPLY @18673 GOTO 12
  IF ~Global("Get_Key","GLOBAL",1)~ THEN REPLY @18674 GOTO 14
  IF ~Global("Get_Key","GLOBAL",2)~ THEN REPLY @18674 GOTO 14
  IF ~Global("Get_Key","GLOBAL",3)~ THEN REPLY @18674 GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY @9668
  IF ~~ THEN REPLY @18681 GOTO 13
  IF ~Global("Vera_Leave","GLOBAL",0)~ THEN REPLY @9664 DO ~AddXP2DA("ID1EX10A")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@18704)
                                                            SetGlobal("Vera_Leave","GLOBAL",1)
                                                            EraseJournalEntry(@16940)
                                                            EraseJournalEntry(@34217)
                                                            EraseJournalEntry(@34211)
                                                            EraseJournalEntry(@34207)
                                                            EraseJournalEntry(@4680)
                                                            EraseJournalEntry(@20179)
                                                            EraseJournalEntry(@11854)
                                                            EraseJournalEntry(@19284)
                                                            EraseJournalEntry(@34300)
                                                            EraseJournalEntry(@18696)
                                                            EraseJournalEntry(@16352)
                                                            EraseJournalEntry(@15706)
                                                            EraseJournalEntry(@16002)
                                                            EraseJournalEntry(@34413)
                                                            AddJournalEntry(@18698,QUEST_DONE)~ EXIT
  IF ~Global("Vera_Leave","GLOBAL",1)~ THEN REPLY @9664 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @9672
  IF ~Global("Vera_Leave","GLOBAL",0)~ THEN REPLY @18682 DO ~AddXP2DA("ID1EX10A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@18704)
                                                             SetGlobal("Vera_Leave","GLOBAL",1)
                                                             EraseJournalEntry(@16940)
                                                             EraseJournalEntry(@34217)
                                                             EraseJournalEntry(@34211)
                                                             EraseJournalEntry(@34207)
                                                             EraseJournalEntry(@4680)
                                                             EraseJournalEntry(@20179)
                                                             EraseJournalEntry(@11854)
                                                             EraseJournalEntry(@19284)
                                                             EraseJournalEntry(@34300)
                                                             EraseJournalEntry(@18696)
                                                             EraseJournalEntry(@16352)
                                                             EraseJournalEntry(@15706)
                                                             EraseJournalEntry(@16002)
                                                             EraseJournalEntry(@34413)
                                                             AddJournalEntry(@18698,QUEST_DONE)~ EXIT
  IF ~Global("Vera_Leave","GLOBAL",1)~ THEN REPLY @18682 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @9676
  IF ~~ THEN REPLY @9664 DO ~SetGlobal("Help_Vera","GLOBAL",1)
                             AddJournalEntry(@18699,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @9680
  IF ~~ THEN REPLY @18684 GOTO 16
  IF ~~ THEN REPLY @1447 GOTO 7
  IF ~~ THEN REPLY @9664 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @9688
  IF ~~ THEN REPLY @1447 GOTO 7
  IF ~~ THEN REPLY @9664 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @9692
  IF ~~ THEN REPLY @1447 GOTO 7
  IF ~~ THEN REPLY @9664 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @9693
  IF ~~ THEN REPLY @18688 GOTO 16
  IF ~~ THEN REPLY @1447 GOTO 7
  IF ~~ THEN REPLY @9664 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @9697
  IF ~~ THEN REPLY @18691 GOTO 16
  IF ~~ THEN REPLY @1447 GOTO 7
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @9700
  IF ~~ THEN REPLY @9616 GOTO 2
  IF ~~ THEN REPLY @1502 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @18705
  IF ~Global("Slaves_Free_1","GLOBAL",0)~ THEN REPLY @18706 EXIT
  IF ~Global("Slaves_Free_1","GLOBAL",1)~ THEN REPLY @18673 GOTO 12
END
