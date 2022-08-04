BEGIN ~DDAVIN~

IF ~NumTimesTalkedTo(0)
    Global("7004_Slave_Run","GLOBAL",0)~ THEN BEGIN 0
  SAY @9765
  IF ~~ THEN REPLY @9816 GOTO 2
  IF ~~ THEN REPLY @9817 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("7004_Slave_Run","GLOBAL",0)~ THEN BEGIN 1
  SAY @9815
  IF ~~ THEN REPLY @8806 DO ~AddJournalEntry(@34294,QUEST)~ GOTO 3
  IF ~Global("Free_Davin","GLOBAL",1)~ THEN REPLY @9818 DO ~SetGlobal("Free_Davin","GLOBAL",3)~ GOTO 10
  IF ~Global("Free_Davin","GLOBAL",2)~ THEN REPLY @9818 DO ~SetGlobal("Free_Davin","GLOBAL",3)~ GOTO 10
  IF ~Global("Free_Davin","GLOBAL",3)~ THEN REPLY @9820 GOTO 19
  IF ~Global("Kill_Frost","GLOBAL",1)~ THEN REPLY @9821 DO ~SetGlobal("Kill_Frost","GLOBAL",3)~ GOTO 21
  IF ~Global("Kill_Frost","GLOBAL",2)~ THEN REPLY @9821 DO ~SetGlobal("Kill_Frost","GLOBAL",3)~ GOTO 21
  IF ~Global("Kill_Frost","GLOBAL",3)~ THEN REPLY @9825 GOTO 22
  IF ~~ THEN REPLY @9817 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9827
  IF ~~ THEN REPLY @8806 GOTO 3
  IF ~~ THEN REPLY @9817 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9829
  IF ~~ THEN REPLY @1428 GOTO 4
  IF ~GlobalLT("Kill_Frost","GLOBAL",4)~ THEN REPLY @1500 DO ~AddJournalEntry(@16528,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @9831 GOTO 15
  IF ~~ THEN REPLY @9832 GOTO 16
  IF ~~ THEN REPLY @9833 GOTO 17
END

IF ~~ THEN BEGIN 4
  SAY @9835
  IF ~~ THEN REPLY @9836 GOTO 3
  IF ~~ THEN REPLY @9837 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9838
  IF ~~ THEN REPLY @9839 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @9840
  IF ~~ THEN REPLY @9841 DO ~AddJournalEntry(@15744,QUEST)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @9842
  IF ~Global("SPRITE_IS_DEADFrostbite","GLOBAL",1)~ THEN REPLY @9843 DO ~AddXP2DA("ID1EX10H")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@9793)
                                                                         SetGlobal("Kill_Frost","GLOBAL",4)
                                                                         EraseJournalEntry(@15744)
                                                                         EraseJournalEntry(@34290)
                                                                         EraseJournalEntry(@20256)
                                                                         EraseJournalEntry(@20214)
                                                                         EraseJournalEntry(@34234)
                                                                         AddJournalEntry(@34291,QUEST_DONE)~ GOTO 8
  IF ~~ THEN REPLY @9844 DO ~AddJournalEntry(@34290,QUEST)~ GOTO 20
END

IF ~~ THEN BEGIN 8
  SAY @9845
  IF ~~ THEN REPLY @9846 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @9847
  IF ~~ THEN REPLY @9848 DO ~SetGlobal("Free_Davin","GLOBAL",3)
                             AddJournalEntry(@34294,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @9849 DO ~SetGlobal("Free_Davin","GLOBAL",2)
                             AddJournalEntry(@6951,QUEST)~ EXIT
  IF ~~ THEN REPLY @9850 DO ~SetGlobal("Free_Davin","GLOBAL",1)
                             AddJournalEntry(@2098,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @9851
  IF ~~ THEN REPLY @9853 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @9855
  IF ~~ THEN REPLY @9864 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @9867
  IF ~Global("SPRITE_IS_DEADKontik","GLOBAL",0)~ THEN REPLY @9869 DO ~SetGlobal("Explore_Cave","GLOBAL",3)
                                                                      AddJournalEntry(@2097,QUEST)~ EXIT
  IF ~Global("SPRITE_IS_DEADKontik","GLOBAL",1)~ THEN REPLY @9872 DO ~AddJournalEntry(@2119,QUEST)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @9878
  IF ~Global("SPRITE_IS_DEADGorg","GLOBAL",0)~ THEN REPLY @9869 DO ~SetGlobal("Kill_Gorg","GLOBAL",3)
                                                                    AddJournalEntry(@3422,QUEST)~ EXIT
  IF ~Global("SPRITE_IS_DEADGorg","GLOBAL",1)~ THEN REPLY @9879 DO ~SetGlobal("Free_Davin","GLOBAL",4)
                                                                    EraseJournalEntry(@34294)
                                                                    EraseJournalEntry(@16528)
                                                                    EraseJournalEntry(@6951)
                                                                    EraseJournalEntry(@2098)
                                                                    EraseJournalEntry(@2097)
                                                                    EraseJournalEntry(@2119)
                                                                    EraseJournalEntry(@3422)
                                                                    EraseJournalEntry(@23442)
                                                                    EraseJournalEntry(@19286)
                                                                    AddJournalEntry(@2083,QUEST_DONE)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @9880
  IF ~~ THEN REPLY @9881 DO ~AddXP2DA("ID1EX10V")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9806)
                             SetGlobal("7004_Slave_Run","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @9882
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @9892
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @9897
  IF ~~ THEN REPLY @9898 GOTO 18
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @9901
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @9911
  IF ~Global("SPRITE_IS_DEADJoril","GLOBAL",1)~ THEN REPLY @9912 DO ~SetGlobal("7004_Slave_Run","GLOBAL",2)
                                                                     EraseJournalEntry(@34294)
                                                                     EraseJournalEntry(@16528)
                                                                     EraseJournalEntry(@6951)
                                                                     EraseJournalEntry(@2098)
                                                                     EraseJournalEntry(@2097)
                                                                     EraseJournalEntry(@2119)
                                                                     EraseJournalEntry(@3422)
                                                                     EraseJournalEntry(@23442)
                                                                     EraseJournalEntry(@19286)
                                                                     AddJournalEntry(@34287,QUEST_DONE)~ GOTO 24
  IF ~Global("SPRITE_IS_DEADKontik","GLOBAL",1)
      Global("SPRITE_IS_DEADGorg","GLOBAL",1)~ THEN REPLY @9922 DO ~SetGlobal("7004_Slave_Run","GLOBAL",1)
                                                                    EraseJournalEntry(@34294)
                                                                    EraseJournalEntry(@16528)
                                                                    EraseJournalEntry(@6951)
                                                                    EraseJournalEntry(@2098)
                                                                    EraseJournalEntry(@2097)
                                                                    EraseJournalEntry(@2119)
                                                                    EraseJournalEntry(@3422)
                                                                    EraseJournalEntry(@23442)
                                                                    EraseJournalEntry(@19286)
                                                                    AddJournalEntry(@23535,QUEST_DONE)~ GOTO 14
  IF ~Global("SPRITE_IS_DEADKontik","GLOBAL",1)
      Global("SPRITE_IS_DEADGorg","GLOBAL",0)~ THEN REPLY @9924 DO ~SetGlobal("Kill_Gorg","GLOBAL",3)
                                                                    AddJournalEntry(@23442,QUEST)~ EXIT
  IF ~Global("SPRITE_IS_DEADGorg","GLOBAL",1)
      Global("SPRITE_IS_DEADKontik","GLOBAL",0)~ THEN REPLY @9929 DO ~AddJournalEntry(@19286,QUEST)~ EXIT
  IF ~~ THEN REPLY @9933 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @9935
  IF ~~ THEN REPLY @9936 DO ~SetGlobal("Kill_Frost","GLOBAL",3)
                             AddJournalEntry(@20256,QUEST)~ GOTO 23
  IF ~~ THEN REPLY @9937 DO ~SetGlobal("Kill_Frost","GLOBAL",2)
                             AddJournalEntry(@20214,QUEST)~ EXIT
  IF ~~ THEN REPLY @9850 DO ~SetGlobal("Kill_Frost","GLOBAL",1)
                             AddJournalEntry(@34234,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @9942
  IF ~Global("SPRITE_IS_DEADFrostbite","GLOBAL",1)~ THEN REPLY @9944 DO ~AddXP2DA("ID1EX12H")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@9793)
                                                                         SetGlobal("Kill_Frost","GLOBAL",4)~ GOTO 9
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @9947
  IF ~Global("SPRITE_IS_DEADFrostbite","GLOBAL",1)~ THEN REPLY @9948 DO ~AddXP2DA("ID1EX12H")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@9793)
                                                                         SetGlobal("Kill_Frost","GLOBAL",4)
                                                                         EraseJournalEntry(@15744)
                                                                         EraseJournalEntry(@34290)
                                                                         EraseJournalEntry(@20256)
                                                                         EraseJournalEntry(@20214)
                                                                         EraseJournalEntry(@34234)
                                                                         AddJournalEntry(@34281,QUEST_DONE)~ GOTO 9
  IF ~Global("SPRITE_IS_DEADFrostbite","GLOBAL",0)~ THEN REPLY @9952 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @17354
  IF ~~ THEN REPLY @17355 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @18355
  IF ~~ THEN REPLY @9881 DO ~AddXP2DA("ID1EX10V")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9806)~ EXIT
END
