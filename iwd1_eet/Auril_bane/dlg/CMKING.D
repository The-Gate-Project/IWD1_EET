BEGIN ~CMKING~


IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4034588
  IF ~Race(LastTalkedToBy,ELF)~ THEN REPLY @4034589 GOTO 1
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @4034590 GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @4034591 GOTO 2
  IF ~~ THEN REPLY @4034592 GOTO 2
  IF ~~ THEN REPLY @4034593 GOTO 3
  IF ~~ THEN REPLY @4034594 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @4034595
  IF ~~ THEN REPLY @4034596 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4034597
  IF ~~ THEN REPLY @4034598 DO ~SetGlobal("King_Crown","GLOBAL",1)AddJournalEntry(@4034638,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @4034599 DO ~SetGlobal("King_Crown","GLOBAL",2)AddJournalEntry(@4034639,QUEST)~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @4034600
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4034601
  IF ~~ THEN REPLY @4034602 GOTO 3
  IF ~~ THEN REPLY @4034603 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4034604
  IF ~~ THEN DO ~EraseJournalEntry(@4034638)
                 EraseJournalEntry(@4034639)
                 EraseJournalEntry(@4034640)
                 EraseJournalEntry(@4034641)
                 Enemy()
                 AttackOneRound(LastTalkedToBy)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 6
  SAY @4034605
  IF ~Global("King_Crown","GLOBAL",0)~ THEN REPLY @4034634 GOTO 2
  IF ~Global("King_Crown","GLOBAL",1)~ THEN REPLY @4034634 GOTO 10
  IF ~Global("King_Crown","GLOBAL",2)~ THEN REPLY @4034606 EXIT
  IF ~Global("King_Crown","GLOBAL",2)~ THEN REPLY @4034607 GOTO 5
  IF ~PartyHasItem("icmh01")
      !Global("King_Crown","GLOBAL",3)~ THEN REPLY @4034608 GOTO 7
  IF ~PartyHasItem("icmh01")
      !Global("King_Crown","GLOBAL",3)~ THEN REPLY @4034609 DO ~EraseJournalEntry(@4034638)
                                                                EraseJournalEntry(@4034639)
                                                                EraseJournalEntry(@4034640)
                                                                EraseJournalEntry(@4034641)
                                                                AddJournalEntry(@4034642,QUEST_DONE)
                                                                SetGlobal("King_Crown","GLOBAL",3)
                                                                TakePartyItem("icmh01")
                                                                AddXP2DA("ID1EX10A")~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @4034610
  IF ~~ THEN DO ~EraseJournalEntry(@4034638)
                 EraseJournalEntry(@4034639)
                 EraseJournalEntry(@4034640)
                 EraseJournalEntry(@4034641)
                 AddJournalEntry(@4034643,QUEST_DONE)
                 Enemy()
                 AttackOneRound(LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @4034611
  IF ~~ THEN REPLY @4034612 DO ~GivePartyGold(1200)~ EXIT
END

IF WEIGHT #-1
~GlobalGT("King_Crown","GLOBAL",2)~ THEN BEGIN 9
  SAY @4034613
  IF ~~ THEN REPLY @4034614 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @4034635
  IF ~~ THEN REPLY @4034598 DO ~SetGlobal("King_Crown","GLOBAL",1)AddJournalEntry(@4034638,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @4034599 DO ~SetGlobal("King_Crown","GLOBAL",2)AddJournalEntry(@4034639,QUEST)~ GOTO 4
END


