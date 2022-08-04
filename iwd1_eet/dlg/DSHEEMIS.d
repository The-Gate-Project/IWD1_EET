BEGIN ~DSHEEMIS~

IF ~NumTimesTalkedTo(0)
    GlobalLT("Sheemish_Escape","GLOBAL",2)~ THEN BEGIN 0
  SAY @17811
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @17814 GOTO 1
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @17816 GOTO 1
  IF ~~ THEN REPLY @17819 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @17822
  IF ~~ THEN REPLY @17825 EXIT
  IF ~~ THEN REPLY @17826 EXIT
  IF ~~ THEN REPLY @17827 EXIT
  IF ~~ THEN REPLY @17830 EXIT
  IF ~~ THEN REPLY @17831 GOTO 2
  IF ~Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)
      GlobalGT("SPRITE_IS_DEADPathdead","GLOBAL",4)~ THEN REPLY @17832 DO ~SetGlobal("Sheemish_Escape","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @17833
  IF ~~ THEN REPLY @17834 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @17835
  IF ~~ THEN REPLY @17836 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @17837
  IF ~~ THEN REPLY @17838 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @17839
  IF ~~ THEN REPLY @17826 EXIT
  IF ~~ THEN REPLY @17827 EXIT
  IF ~~ THEN REPLY @17830 EXIT
  IF ~Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)
      GlobalGT("SPRITE_IS_DEADPathdead","GLOBAL",4)~ THEN REPLY @17843 DO ~SetGlobal("Sheemish_Escape","GLOBAL",1)~ GOTO 7
END

IF ~Global("Sheemish_Escape","GLOBAL",0)~ THEN BEGIN 6
  SAY @17841
  IF ~~ THEN REPLY @17844 EXIT
  IF ~Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)
      GlobalGT("SPRITE_IS_DEADPathdead","GLOBAL",4)~ THEN REPLY @17846 DO ~SetGlobal("Sheemish_Escape","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @17847
  IF ~~ THEN REPLY @17848 DO ~AddXP2DA("ID1EX7A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@17346)
                              AddJournalEntry(@34201,QUEST)~ EXIT
END

IF ~Global("Sheemish_Escape","GLOBAL",2)~ THEN BEGIN 8
  SAY @17850
  IF ~~ THEN REPLY @17851 DO ~GiveItem("KeyCon",LastTalkedToBy)
                              SetGlobal("Sheemish_Escape","GLOBAL",3)
                              EraseJournalEntry(@34201)
                              EraseJournalEntry(2051)
                              AddJournalEntry(@34198,QUEST_DONE)~ EXIT
  IF ~~ THEN REPLY @17882 DO ~GiveItem("KeyCon",LastTalkedToBy)
                              SetGlobal("Sheemish_Escape","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @17883 DO ~GiveItem("KeyCon",LastTalkedToBy)
                              SetGlobal("Sheemish_Escape","GLOBAL",3)~ EXIT
END

IF ~Global("Sheemish_Escape","GLOBAL",3)~ THEN BEGIN 9
  SAY @17884
  IF ~~ THEN REPLY @17885 EXIT
END

IF ~Global("Sheemish_Escape","GLOBAL",1)~ THEN BEGIN 10
  SAY @17886
  IF ~~ THEN EXIT
END
