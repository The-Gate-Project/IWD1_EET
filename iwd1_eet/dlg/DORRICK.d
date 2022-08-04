BEGIN ~DORRICK~

IF ~NumTimesTalkedTo(0)
    Global("SPRITE_IS_DEADKUWeenog","GLOBAL",0)~ THEN BEGIN 0
  SAY @5696
  IF ~~ THEN REPLY @7706 DO ~SetGlobal("Orrick_Help","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @7707 GOTO 14
  IF ~~ THEN REPLY @7708 GOTO 17
  IF ~PartyHasItem("bookmyt")~ THEN REPLY @7709 DO ~TakePartyItem("bookmyt")
                                                    SetGlobal("Orrick_Quest","GLOBAL",4)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@6256)
                                                    SetQuestDone(@18316)~ GOTO 13
END

IF ~NumTimesTalkedTo(0)
    Global("SPRITE_IS_DEADKUWeenog","GLOBAL",1)~ THEN BEGIN 1
  SAY @7659
  IF ~~ THEN REPLY @7720 GOTO 2
  IF ~~ THEN REPLY @7721 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7662
  IF ~~ THEN REPLY @7706 DO ~SetGlobal("Orrick_Help","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @7707 GOTO 14
  IF ~~ THEN REPLY @7708 GOTO 17
  IF ~PartyHasItem("bookmyt")~ THEN REPLY @7709 DO ~TakePartyItem("bookmyt")
                                                    SetGlobal("Orrick_Quest","GLOBAL",4)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@6256)
                                                    SetQuestDone(@18316)~ GOTO 13
END

IF ~~ THEN BEGIN 3
  SAY @7667
  IF ~Global("Know_Balance","GLOBAL",1)~ THEN REPLY @7729 GOTO 4
  IF ~~ THEN REPLY @7730 GOTO 5
  IF ~~ THEN REPLY @7731 GOTO 6
  IF ~~ THEN REPLY @7732 GOTO 14
  IF ~~ THEN REPLY @7733 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7668
  IF ~~ THEN REPLY @7734 GOTO 7
  IF ~~ THEN REPLY @7732 GOTO 14
  IF ~~ THEN REPLY @7733 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7669
  IF ~~ THEN REPLY @7734 GOTO 7
  IF ~~ THEN REPLY @7732 GOTO 14
  IF ~~ THEN REPLY @7733 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7681
  IF ~~ THEN REPLY @7744 DO ~SetGlobal("Orrick_Quest","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @7746 GOTO 14
  IF ~~ THEN REPLY @7748 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7687
  IF ~~ THEN REPLY @7744 DO ~SetGlobal("Orrick_Quest","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @7746 GOTO 14
  IF ~~ THEN REPLY @7748 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @7688
  IF ~~ THEN REPLY @7753 GOTO 9
  IF ~~ THEN REPLY @7754 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @7689
  IF ~~ THEN REPLY @7755 GOTO 10
  IF ~~ THEN REPLY @7754 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @7690
  IF ~Global("ID5000_Visited","GLOBAL",0)~ THEN REPLY @7757 DO ~SetGlobal("Orrick_Quest","GLOBAL",2)
                                                                AddJournalEntry(@18316,QUEST)~ GOTO 16
  IF ~Global("ID5000_Visited","GLOBAL",1)~ THEN REPLY @7758 DO ~SetGlobal("Orrick_Quest","GLOBAL",3)~ GOTO 11
  IF ~~ THEN REPLY @7754 DO ~SetGlobal("Orrick_Quest","GLOBAL",2)
                             AddJournalEntry(@18316,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @7691
  IF ~~ THEN REPLY @7760 GOTO 12
  IF ~Global("DarkestHourRead","GLOBAL",1)~ THEN REPLY @7761 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @7693
  IF ~PartyHasItem("bookmyt")~ THEN REPLY @7762 DO ~TakePartyItem("bookmyt")
                                                    SetGlobal("Orrick_Quest","GLOBAL",4)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@6256)
                                                    SetQuestDone(@18316)~ GOTO 13
  IF ~~ THEN REPLY @7763 GOTO 15
END

IF ~~ THEN BEGIN 13
  SAY @7694
  IF ~RandomNum(3,1)~ THEN REPLY @185 DO ~GiveItemCreate("OrkTres",LastTalkedToBy,1,1,1)~ GOTO 14
  IF ~RandomNum(3,2)~ THEN REPLY @185 DO ~GiveItemCreate("labelt", LastTalkedToBy,1,1,1)~ GOTO 14
  IF ~RandomNum(3,3)~ THEN REPLY @185 DO ~GiveItemCreate("cloakmi", LastTalkedToBy,1,1,1)~ GOTO 14
  IF ~RandomNum(3,1)~ THEN REPLY @276 DO ~GiveItemCreate("OrkTres",LastTalkedToBy,1,1,1)~ EXIT
  IF ~RandomNum(3,2)~ THEN REPLY @276 DO ~GiveItemCreate("labelt", LastTalkedToBy,1,1,1)~ EXIT
  IF ~RandomNum(3,3)~ THEN REPLY @276 DO ~GiveItemCreate("cloakmi", LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @7695
  IF ~/*GlobalLT("Chapter","GLOBAL",2)*/~ THEN REPLY @7766 DO ~StartStore("KUOrk1",LastTalkedToBy)~ EXIT
  IF ~False()
      /*GlobalLT("Chapter","GLOBAL",4)
        GlobalGT("Chapter","GLOBAL",1)*/~ THEN REPLY @7766 DO ~StartStore("KUOrk1",LastTalkedToBy)~ EXIT
  IF ~False()
      /*GlobalGT("Chapter","GLOBAL",3)*/~ THEN REPLY @7766 DO ~StartStore("KUOrk1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @607 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @7696
  IF ~PartyHasItem("bookmyt")~ THEN REPLY @7770 DO ~TakePartyItem("bookmyt")
                                                    SetGlobal("Orrick_Quest","GLOBAL",4)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@6256)
                                                    SetQuestDone(@18316)~ GOTO 13
  IF ~~ THEN REPLY @7771 GOTO 14
  IF ~~ THEN REPLY @7772 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @7697
  IF ~~ THEN REPLY @7771 GOTO 14
  IF ~~ THEN REPLY @7772 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @7699
  IF ~~ THEN REPLY @7775 DO ~SetGlobal("Orrick_Help","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @7776 GOTO 14
  IF ~~ THEN REPLY @7733 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 18
  SAY @7703
  IF ~Global("Orrick_Help","GLOBAL",0)~ THEN REPLY @7706 DO ~SetGlobal("Orrick_Help","GLOBAL",1)~ GOTO 3
  IF ~Global("Orrick_Quest","GLOBAL",0)~ THEN REPLY @7786 DO ~SetGlobal("Orrick_Quest","GLOBAL",1)~ GOTO 8
  IF ~PartyHasItem("bookmyt")~ THEN REPLY @7709 DO ~TakePartyItem("bookmyt")
                                                    SetGlobal("Orrick_Quest","GLOBAL",4)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@6256)
                                                    SetQuestDone(@18316)~ GOTO 13
  IF ~Global("Orrick_Quest","GLOBAL",2)
      Global("ID5000_Visited","GLOBAL",1)
      !PartyHasItem("bookmyt")~ THEN REPLY @7758 DO ~SetGlobal("Orrick_Quest","GLOBAL",3)~ GOTO 11
  IF ~~ THEN REPLY @7707 GOTO 14
  IF ~GlobalGT("Orrick_Quest","GLOBAL",0)
      GlobalLT("Orrick_Quest","GLOBAL",3)~ THEN REPLY @7795 GOTO 8
  IF ~~ THEN REPLY @607 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Kuldahar_Murder","GLOBAL",1)~ THEN BEGIN 19
  SAY @7705
  IF ~Global("Orrick_Help","GLOBAL",0)~ THEN REPLY @7706 DO ~SetGlobal("Orrick_Help","GLOBAL",1)~ GOTO 3
  IF ~Global("Orrick_Quest","GLOBAL",0)~ THEN REPLY @7786 DO ~SetGlobal("Orrick_Quest","GLOBAL",1)~ GOTO 8
  IF ~PartyHasItem("bookmyt")~ THEN REPLY @7709 DO ~TakePartyItem("bookmyt")
                                                    SetGlobal("Orrick_Quest","GLOBAL",4)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@6256)
                                                    SetQuestDone(@18316)~ GOTO 13
  IF ~Global("Orrick_Quest","GLOBAL",2)
      Global("ID5000_Visited","GLOBAL",1)
      !PartyHasItem("bookmyt")~ THEN REPLY @7758 DO ~SetGlobal("Orrick_Quest","GLOBAL",3)~ GOTO 11
  IF ~~ THEN REPLY @7707 GOTO 14
  IF ~GlobalGT("Orrick_Quest","GLOBAL",0)
      GlobalLT("Orrick_Quest","GLOBAL",3)~ THEN REPLY @7795 GOTO 8
  IF ~~ THEN REPLY @607 EXIT
END
