BEGIN ~DOLDJED~

IF WEIGHT #2
~Global("Drunk_Quest","GLOBAL",0)~ THEN BEGIN 0
  SAY @623
  IF ~~ THEN REPLY @636 GOTO 1
  IF ~~ THEN REPLY @637 GOTO 3
  IF ~~ THEN REPLY @638 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @624
  IF ~~ THEN REPLY @639 GOTO 2
  IF ~~ THEN REPLY @640 GOTO 3
  IF ~~ THEN REPLY @641 GOTO 2
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @642 GOTO 12
  IF ~~ THEN REPLY @643 DO ~IncrementGlobalOnce("Evil_Drunk_1","GLOBAL","Good","GLOBAL",-1)~ GOTO 12
  IF ~~ THEN REPLY @644 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @625
  IF ~~ THEN REPLY @645 GOTO 4
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @646 DO ~SetGlobal("Drunk_Quest","GLOBAL",2)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,15,INT)
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @647 GOTO 11
  IF ~CheckStatGT(LastTalkedToBy,15,INT)
      CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @648 GOTO 3
  IF ~~ THEN REPLY @649 DO ~SetGlobal("Drunk_Quest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @626
  IF ~~ THEN REPLY @650 GOTO 4
  IF ~~ THEN REPLY @651 DO ~SetGlobal("Drunk_Quest","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @652 DO ~SetGlobal("Drunk_Quest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @627
  IF ~!PartyHasItem("Wine")~ THEN REPLY @653 GOTO 5
  IF ~~ THEN REPLY @654 DO ~IncrementGlobalOnce("Chaotic_Drunk_2","GLOBAL","Law","GLOBAL",-1)~ GOTO 6
  IF ~PartyHasItem("Wine")~ THEN REPLY @655 GOTO 7
  IF ~~ THEN REPLY @656 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @628
  IF ~~ THEN REPLY @657 DO ~SetGlobal("Drunk_Quest","GLOBAL",1)
                            AddJournalEntry(@34187,QUEST)~ EXIT
  IF ~~ THEN REPLY @658 DO ~SetGlobal("Drunk_Quest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @629
  IF ~!PartyHasItem("Wine")~ THEN REPLY @659 DO ~AddJournalEntry(@34187,QUEST)~ GOTO 5
  IF ~PartyHasItem("Wine")~ THEN REPLY @660 GOTO 7
  IF ~~ THEN REPLY @661 DO ~SetGlobal("Drunk_Quest","GLOBAL",2)~ EXIT
END

IF WEIGHT #5
~Global("Drunk_Quest","GLOBAL",1)
 PartyHasItem("Wine")~ THEN BEGIN 7
  SAY @630
  IF ~~ THEN REPLY @662 DO ~SetGlobal("Drunk_Quest","GLOBAL",3)
                            GiveGoldForce(6)
                            AddXP2DA("ID1EX1E")
                            DisplayStringNoNameDlg(LastTalkedToBy,@14968)
                            TakePartyItem("Wine")
                            EraseJournalEntry(@34187)
                            AddJournalEntry(@34194,QUEST_DONE)~ EXIT
  IF ~~ THEN REPLY @663 DO ~SetGlobal("Drunk_Quest","GLOBAL",3)
                            GiveGoldForce(6)
                            AddXP2DA("ID1EX1E")
                            DisplayStringNoNameDlg(LastTalkedToBy,@14968)
                            TakePartyItem("Wine")
                            EraseJournalEntry(@34187)
                            AddJournalEntry(@34194,QUEST_DONE)~ EXIT
  IF ~~ THEN REPLY @664 DO ~SetGlobal("Drunk_Quest","GLOBAL",3)
                            GiveGoldForce(6)
                            AddXP2DA("ID1EX1E")
                            DisplayStringNoNameDlg(LastTalkedToBy,@14968)
                            TakePartyItem("Wine")
                            EraseJournalEntry(@34187)
                            AddJournalEntry(@34194,QUEST_DONE)~ EXIT
END

IF WEIGHT #3
~Global("Drunk_Quest","GLOBAL",2)~ THEN BEGIN 8
  SAY @631
  IF ~~ THEN REPLY @665 EXIT
  IF ~PartyHasItem("Wine")~ THEN REPLY @666 GOTO 7
  IF ~!PartyHasItem("Wine")~ THEN REPLY @667 GOTO 5
  IF ~~ THEN REPLY @2650 EXIT
END

IF WEIGHT #4
~Global("Drunk_Quest","GLOBAL",1)
 !PartyHasItem("Wine")~ THEN BEGIN 9
  SAY @632
  IF ~~ THEN REPLY @668 DO ~IncrementGlobalOnce("Chaotic_Drunk_1","GLOBAL","Law","GLOBAL",-1)~ EXIT
  IF ~~ THEN REPLY @669 DO ~SetGlobal("Drunk_Quest","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @670 EXIT
END

IF WEIGHT #6
~Global("Drunk_Quest","GLOBAL",3)~ THEN BEGIN 10
  SAY @633
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @634
  IF ~~ THEN REPLY @671 DO ~SetGlobal("Drunk_Quest","GLOBAL",3)
                            AddXP2DA("ID1EX1E")
                            DisplayStringNoNameDlg(LastTalkedToBy,@14971)
                            GiveGoldForce(6)
                            EraseJournalEntry(@34187)
                            AddJournalEntry(@34189,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @635
  IF ~~ THEN REPLY @672 GOTO 4
  IF ~CheckStatGT(LastTalkedToBy,15,INT)
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @673 GOTO 11
  IF ~CheckStatGT(LastTalkedToBy,15,INT)
      CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @674 GOTO 3
  IF ~~ THEN REPLY @675 DO ~SetGlobal("Drunk_Quest","GLOBAL",2)~ EXIT
END

IF WEIGHT #0
~NumTimesTalkedTo(0)
 GlobalGT("Know_Balance","GLOBAL",0)~ THEN BEGIN 13
  SAY @17888
  IF ~Global("Freed_Everard","GLOBAL",0)~ THEN REPLY @17889 DO ~AddJournalEntry(@34188,QUEST)~ GOTO 15
  IF ~Global("Freed_Everard","GLOBAL",1)~ THEN REPLY @17890 DO ~AddJournalEntry(@34188,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @17891 DO ~AddJournalEntry(@34188,QUEST)~ EXIT
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)
 GlobalGT("Know_Balance","GLOBAL",0)~ THEN BEGIN 14
  SAY @17892
  IF ~~ THEN REPLY @17893 DO ~/*PlayDead(9000)*/ ApplySpellRES("#JEDSLP",Myself)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @17894
  IF ~~ THEN REPLY @17893 DO ~/*PlayDead(9000)*/ ApplySpellRES("#JEDSLP",Myself)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @17895
  IF ~~ THEN REPLY @17893 DO ~/*PlayDead(9000)*/ ApplySpellRES("#JEDSLP",Myself)~ EXIT
END
