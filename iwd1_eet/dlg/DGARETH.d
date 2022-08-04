BEGIN ~DGARETH~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3994
  IF ~~ THEN REPLY @7835 GOTO 2
  IF ~Global("Return_Slaves","GLOBAL",1)~ THEN REPLY @7836 DO ~AddJournalEntry(@34417,QUEST)~ GOTO 17
  IF ~~ THEN REPLY @7837 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @4207
  IF ~GlobalGT("Return_Slaves","GLOBAL",0)~ THEN REPLY @18627 GOTO 17
  IF ~Global("Get_Key","GLOBAL",1)~ THEN REPLY @18629 GOTO 18
  IF ~Global("Get_Key","GLOBAL",2)~ THEN REPLY @18630 GOTO 20
  IF ~Global("Get_Key","GLOBAL",3)~ THEN REPLY @18631 GOTO 21
  IF ~Global("Get_Key","GLOBAL",4)~ THEN REPLY @18632 GOTO 23
  IF ~Global("Heard_Vera_Dead","GLOBAL",1)
      Global("Know_Vera","GLOBAL",1)~ THEN REPLY @18633 GOTO 27
  IF ~~ THEN REPLY @7837 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7839
  IF ~~ THEN REPLY @7840 GOTO 3
  IF ~~ THEN REPLY @7837 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7842
  IF ~~ THEN REPLY @7843 DO ~AddJournalEntry(@34418,QUEST)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @7844
  IF ~~ THEN REPLY @7845 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @7846
  IF ~~ THEN REPLY @7847 DO ~SetGlobal("Tell_Tale","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @7848 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7855
  IF ~~ THEN REPLY @7856 DO ~AddJournalEntry(@34416,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @7857 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @7858
  IF ~~ THEN REPLY @7859 GOTO 8
  IF ~~ THEN REPLY @7860 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @7861
  IF ~~ THEN REPLY @7862 GOTO 9
  IF ~~ THEN REPLY @7860 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @7864
  IF ~~ THEN REPLY @7865 GOTO 10
  IF ~~ THEN REPLY @7860 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @7867
  IF ~~ THEN REPLY @7868 DO ~AddJournalEntry(@34413,QUEST)~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @7869
  IF ~~ THEN REPLY @7870 DO ~SetGlobal("Tell_Tale","GLOBAL",4)~ GOTO 12
  IF ~Global("Know_Vera","GLOBAL",0)~ THEN REPLY @18635 DO ~SetGlobal("Tell_Tale","GLOBAL",4)~ GOTO 16
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY @18636 DO ~SetGlobal("Tell_Tale","GLOBAL",4)~ GOTO 25
END

IF ~~ THEN BEGIN 12
  SAY @7871
  IF ~~ THEN REPLY @7872 GOTO 13
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @7873 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @7874
  IF ~~ THEN REPLY @7875 DO ~SetGlobal("Get_Key","GLOBAL",3)
                             AddJournalEntry(@34407,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @7876 DO ~SetGlobal("Get_Key","GLOBAL",2)
                             AddJournalEntry(@34399,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @7877 DO ~SetGlobal("Get_Key","GLOBAL",1)
                             AddJournalEntry(@34391,QUEST)~ GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @7878
  IF ~~ THEN REPLY @7880 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @7881
  IF ~~ THEN REPLY @7880 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @7884
  IF ~~ THEN REPLY @7885 DO ~SetGlobal("Heard_Vera_Dead","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 17
  SAY @7887
  IF ~~ THEN REPLY @1582 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @7888
  IF ~~ THEN REPLY @7875 DO ~SetGlobal("Get_Key","GLOBAL",3)
                             AddJournalEntry(@34407,QUEST)~ GOTO 19
  IF ~~ THEN REPLY @7889 DO ~SetGlobal("Get_Key","GLOBAL",2)
                             AddJournalEntry(@34399,QUEST)~ EXIT
  IF ~~ THEN REPLY @7890 DO ~SetGlobal("Get_Key","GLOBAL",1)
                             AddJournalEntry(@34391,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @7891
  IF ~~ THEN REPLY @7892 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @7893
  IF ~~ THEN REPLY @7875 DO ~SetGlobal("Get_Key","GLOBAL",3)
                             AddJournalEntry(@34407,QUEST)~ GOTO 19
  IF ~~ THEN REPLY @7876 DO ~SetGlobal("Get_Key","GLOBAL",2)
                             AddJournalEntry(@34399,QUEST)~ EXIT
  IF ~~ THEN REPLY @7890 DO ~SetGlobal("Get_Key","GLOBAL",1)
                             AddJournalEntry(@34391,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @7897
  IF ~PartyHasItem("KeyDug")~ THEN REPLY @7898 DO ~SetGlobal("Get_Key","GLOBAL",4)
                                                   SetGlobal("Slaves_Free_1","GLOBAL",1)
                                                   TakePartyItem("KeyDug")
                                                   AddXP2DA("ID1EX10E")
                                                   DisplayStringNoNameDlg(LastTalkedToBy,@8560)
                                                   EraseJournalEntry(@4649)
                                                   EraseJournalEntry(@2071)
                                                   EraseJournalEntry(@19364)
                                                   EraseJournalEntry(@20867)
                                                   EraseJournalEntry(@15762)
                                                   EraseJournalEntry(@16319)
                                                   EraseJournalEntry(@15707)
                                                   EraseJournalEntry(@15739)
                                                   EraseJournalEntry(@18695)
                                                   EraseJournalEntry(@18699)
                                                   EraseJournalEntry(@34417)
                                                   EraseJournalEntry(@34418)
                                                   EraseJournalEntry(@34416)
                                                   EraseJournalEntry(@34407)
                                                   EraseJournalEntry(@34399)
                                                   EraseJournalEntry(@34391)
                                                   AddJournalEntry(@34387,QUEST_DONE)~ GOTO 22
  IF ~!PartyHasItem("KeyDug")~ THEN REPLY @7899 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @7900
  IF ~~ THEN REPLY @7901 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @7905
  IF ~~ THEN REPLY @7906 EXIT
END

IF WEIGHT #0
~Global("Tell_Tale","GLOBAL",1)~ THEN BEGIN 24
  SAY @7907
  IF ~~ THEN REPLY @7908 GOTO 6
  IF ~~ THEN REPLY @7909 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @18358
  IF ~Global("SPRITE_IS_DEADVERA","GLOBAL",0)~ THEN REPLY @18359 DO ~AddXP2DA("ID1EX10E")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@18366)~ GOTO 26
  IF ~Global("SPRITE_IS_DEADVERA","GLOBAL",1)~ THEN REPLY @7886 DO ~AddXP2DA("ID1EX10E")
                                                                    DisplayStringNoNameDlg(LastTalkedToBy,@18639)~ GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @18360
  IF ~~ THEN REPLY @18640 DO ~SetGlobal("Heard_Vera_Dead","GLOBAL",4)~ GOTO 12
END

IF ~~ THEN BEGIN 27
  SAY @18641
  IF ~Global("SPRITE_IS_DEADVERA","GLOBAL",0)~ THEN REPLY @18359 DO ~AddXP2DA("ID1EX10E")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@18366)~ GOTO 28
  IF ~Global("SPRITE_IS_DEADVERA","GLOBAL",1)~ THEN REPLY @7886 DO ~AddXP2DA("ID1EX10E")
                                                                    DisplayStringNoNameDlg(LastTalkedToBy,@18639)~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @18644
  IF ~~ THEN REPLY @18645 DO ~SetGlobal("Heard_Vera_Dead","GLOBAL",4)~ EXIT
END
