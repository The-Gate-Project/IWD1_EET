BEGIN ~DPOMAB~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @559
  IF ~~ THEN REPLY @577 GOTO 1
  IF ~~ THEN REPLY @578 GOTO 2
  IF ~~ THEN REPLY @579 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @560
  IF ~~ THEN REPLY @580 GOTO 2
  IF ~~ THEN REPLY @581 GOTO 3
  IF ~~ THEN REPLY @582 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @561
  IF ~~ THEN REPLY @583 GOTO 3
  IF ~~ THEN REPLY @584 GOTO 3
  IF ~~ THEN REPLY @585 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @562
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @586 DO ~SetGlobal("Know_Pomab","GLOBAL",1)~ GOTO 8
  IF ~CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @587 DO ~SetGlobal("Know_Pomab","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @588 DO ~SetGlobal("Know_Pomab","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @589 DO ~SetGlobal("Know_Pomab","GLOBAL",1)~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @563
  IF ~~ THEN REPLY @590 GOTO 2
  IF ~~ THEN REPLY @591 GOTO 2
  IF ~~ THEN REPLY @592 DO ~IncrementGlobalOnce("Evil_Pomab_1","GLOBAL","Good","GLOBAL",-1)~ GOTO 2
END

IF ~~ THEN BEGIN 5
  SAY @565
  IF ~~ THEN REPLY @593 GOTO 6
  IF ~~ THEN REPLY @594 GOTO 7
  IF ~~ THEN REPLY @598 GOTO 8
  IF ~~ THEN REPLY @599 DO ~StartStore("EHPomab",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @566
  IF ~~ THEN REPLY @600 GOTO 7
  IF ~~ THEN REPLY @601 GOTO 7
  IF ~~ THEN REPLY @602 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @567
  IF ~~ THEN REPLY @603 DO ~StartStore("EHPomab",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @604 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @568
  IF ~~ THEN REPLY @605 EXIT
  IF ~~ THEN REPLY @606 DO ~StartStore("EHPomab",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @607 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @569
  IF ~~ THEN REPLY @608 DO ~StartStore("EHPomab",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @609 EXIT
END

IF WEIGHT #0
~NumTimesTalkedTo(0)
 Global("Supply_Quest","GLOBAL",1)~ THEN BEGIN 10
  SAY @570
  IF ~PartyHasItem("List")~ THEN REPLY @610 DO ~TakePartyItem("List")
                                                SetGlobal("Supply_Quest","GLOBAL",2)
                                                AddXP2DA("ID1EX1E")
                                                DisplayStringNoNameDlg(LastTalkedToBy,@14979)
                                                SetQuestDone(@352)~ GOTO 11
  IF ~!PartyHasItem("List")~ THEN REPLY @611 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @571
  IF ~~ THEN REPLY @612 GOTO 2
  IF ~~ THEN REPLY @613 GOTO 15
  IF ~~ THEN REPLY @614 GOTO 2
END

IF ~~ THEN BEGIN 12
  SAY @572
  IF ~~ THEN REPLY @615 GOTO 2
  IF ~~ THEN REPLY @616 GOTO 2
  IF ~~ THEN REPLY @617 GOTO 2
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 13
  SAY @573
  IF ~Global("Supply_Quest","GLOBAL",1)
      PartyHasItem("List")~ THEN REPLY @618 DO ~TakePartyItem("List")
                                                SetGlobal("Supply_Quest","GLOBAL",2)
                                                AddXP2DA("ID1EX1E")
                                                DisplayStringNoNameDlg(LastTalkedToBy,@14979)
                                                SetQuestDone(@352)~ GOTO 14
  IF ~~ THEN REPLY @619 DO ~StartStore("EHPomab", LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @620 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @576
  IF ~~ THEN REPLY @621 DO ~StartStore("EHPomab",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @622 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @14472
  IF ~~ THEN REPLY @14473 GOTO 2
  IF ~~ THEN REPLY @614 GOTO 2
  IF ~~ THEN REPLY @14475 EXIT
END
