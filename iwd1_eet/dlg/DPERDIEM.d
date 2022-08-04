BEGIN ~DPERDIEM~

IF ~NumTimesTalkedTo(0)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 0
  SAY @9244
  IF ~~ THEN REPLY @9245 DO ~AddJournalEntry(@34302,QUEST)~ GOTO 1
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @9246 DO ~AddJournalEntry(@34302,QUEST)~ GOTO 1
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @9247 DO ~AddJournalEntry(@34302,QUEST)~ GOTO 1
  IF ~Global("Know_Poquelin","GLOBAL",1)~ THEN REPLY @9248 DO ~AddJournalEntry(@34302,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @9249 DO ~AddJournalEntry(@34302,QUEST)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @9253
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @9256 GOTO 4
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @9258 GOTO 4
  IF ~~ THEN REPLY @9260 GOTO 3
  IF ~~ THEN REPLY @9263 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @9723
  IF ~~ THEN REPLY @9724 GOTO 4
  IF ~~ THEN REPLY @9725 GOTO 4
  IF ~~ THEN REPLY @9726 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @9727
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9728
  IF ~~ THEN REPLY @9729 GOTO 5
  IF ~~ THEN REPLY @6447 GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY @9731
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY @9733
  IF ~~ THEN REPLY @288 GOTO 3
END

IF ~NumTimesTalkedToGT(0)
    !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 7
  SAY @9735
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
    Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 8
  SAY @9736
  IF ~~ THEN REPLY @1428 DO ~SetGlobal("Crazy_Speech","GLOBAL",1)
                             GiveItem("perdiem",LastTalkedToBy)
                             AddJournalEntry(@34299,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @9740
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @9741
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @9742
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @9743
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @9745
  IF ~~ THEN REPLY @9747 DO ~StartStore("LDD_Per",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9748 DO ~StartStore("LDD_Per",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9749 GOTO 14
  IF ~~ THEN REPLY @9751 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @9752
  IF ~~ THEN REPLY @9753 DO ~StartStore("LDD_Per",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @18109 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Crazy_Priests","GLOBAL",1)
    Global("Crazy_Speech","GLOBAL",0)~ THEN BEGIN 15
  SAY @9755
  IF ~~ THEN REPLY @9756 DO ~SetGlobal("Crazy_Speech","GLOBAL",1)
                             GiveItem("perdiem",LastTalkedToBy)
                             AddJournalEntry(@34296,QUEST)~ GOTO 9
END

IF ~Global("Crazy_Speech","GLOBAL",1)~ THEN BEGIN 16
  SAY @9757
  IF ~~ THEN REPLY @9756 GOTO 9
  IF ~~ THEN REPLY @9759 DO ~StartStore("LDD_Per",LastTalkedToBy)~ EXIT
END
