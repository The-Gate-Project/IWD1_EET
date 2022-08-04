BEGIN ~DVALESTI~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8568
  IF ~~ THEN REPLY @8569 GOTO 1
  IF ~~ THEN REPLY @8570 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @8571
  IF ~~ THEN REPLY @8572 GOTO 3
  IF ~~ THEN REPLY @8573 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8574
  IF ~~ THEN REPLY @8575 GOTO 3
  IF ~~ THEN REPLY @8576 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8577
  IF ~~ THEN REPLY @8578 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8579
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @8580
  IF ~~ THEN DO ~SetGlobal("ArboretumStoryRead","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8581
  IF ~~ THEN REPLY @8582 DO ~SetGlobal("ArborQuestGiveN","GLOBAL",1)
                             AddJournalEntry(@34235,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @8576 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8584
  IF ~PartyHasItem("SEEDS")
      Global("Arbor_Seeds","GLOBAL",0)~ THEN REPLY @8589 DO ~TakePartyItem("SEEDS")
                                                             DestroyItem("SEEDS")
                                                             SetGlobal("Arbor_Seeds","GLOBAL",1)
                                                             //IncrementGlobal("Arbor_Total","GLOBAL",1)
                                                             ~ GOTO 9
  IF ~PartyHasItem("Water")
      Global("Arbor_Water","GLOBAL",0)~ THEN REPLY @8590 DO ~TakePartyItem("Water")
                                                             DestroyItem("Water")
                                                             SetGlobal("Arbor_Water","GLOBAL",1)
                                                             //IncrementGlobal("Arbor_Total","GLOBAL",1)
                                                             ~ GOTO 11
  IF ~PartyHasItem("BIRDS")
      Global("Arbor_Birds","GLOBAL",0)~ THEN REPLY @8591 DO ~TakePartyItem("BIRDS")
                                                             DestroyItem("BIRDS")
                                                             SetGlobal("Arbor_Birds","GLOBAL",1)
                                                             //IncrementGlobal("Arbor_Total","GLOBAL",1)
                                                             ~ GOTO 13
  IF ~PartyHasItem("Squirel")
      Global("Arbor_Squirrels","GLOBAL",0)~ THEN REPLY @8592 DO ~TakePartyItem("Squirel")
                                                                 DestroyItem("Squirel")
                                                                 SetGlobal("Arbor_Squirrels","GLOBAL",1)
                                                                 //IncrementGlobal("Arbor_Total","GLOBAL",1)
                                                                 ~ GOTO 15
  IF ~~ THEN REPLY @8614 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 8
  SAY @8586
  IF ~~ THEN REPLY @8587 GOTO 1
  IF ~Global("ArboretumStoryRead","GLOBAL",1)~ THEN REPLY @8588 GOTO 7
  IF ~Global("ArborQuestGiveN","GLOBAL",1)
      PartyHasItem("SEEDS")
      Global("Arbor_Seeds","GLOBAL",0)~ THEN REPLY @8589 DO ~TakePartyItem("SEEDS")
                                                             DestroyItem("SEEDS")
                                                             SetGlobal("Arbor_Seeds","GLOBAL",1)
                                                             //IncrementGlobal("Arbor_Total","GLOBAL",1)
                                                             ~ GOTO 9
  IF ~Global("ArborQuestGiveN","GLOBAL",1)
      PartyHasItem("Water")
      Global("Arbor_Water","GLOBAL",0)~ THEN REPLY @8590 DO ~TakePartyItem("Water")
                                                             DestroyItem("Water")
                                                             SetGlobal("Arbor_Water","GLOBAL",1)
                                                             //IncrementGlobal("Arbor_Total","GLOBAL",1)
                                                             ~ GOTO 11
  IF ~Global("ArborQuestGiveN","GLOBAL",1)
      PartyHasItem("BIRDS")
      Global("Arbor_Birds","GLOBAL",0)~ THEN REPLY @8591 DO ~TakePartyItem("BIRDS")
                                                             DestroyItem("BIRDS")
                                                             SetGlobal("Arbor_Birds","GLOBAL",1)
                                                             //IncrementGlobal("Arbor_Total","GLOBAL",1)
                                                             ~ GOTO 13
  IF ~Global("ArborQuestGiveN","GLOBAL",1)
      PartyHasItem("Squirel")
      Global("Arbor_Squirrels","GLOBAL",0)~ THEN REPLY @8592 DO ~TakePartyItem("Squirel")
                                                                 DestroyItem("Squirel")
                                                                 SetGlobal("Arbor_Squirrels","GLOBAL",1)
                                                                 //IncrementGlobal("Arbor_Total","GLOBAL",1)
                                                                 ~ GOTO 15
  //IF ~Global("Arbor_Total","GLOBAL",4)~ THEN REPLY @376  GOTO 18 /**/
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 9 //Arbor_Seeds
  SAY @8595
  IF ~//!Global("Arbor_Total","GLOBAL",4)
      OR(3)
          Global("Arbor_Birds","GLOBAL",0)
          Global("Arbor_Squirrels","GLOBAL",0)
          Global("Arbor_Water","GLOBAL",0)~ THEN REPLY @26510 DO ~AddXP2DA("ID1EX11A")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@8131)~ GOTO 17
  IF ~//Global("Arbor_Total","GLOBAL",4)
      Global("Arbor_Birds","GLOBAL",1)
      Global("Arbor_Squirrels","GLOBAL",1)
      Global("Arbor_Water","GLOBAL",1)~ THEN REPLY @26511 DO ~AddXP2DA("ID1EX11A")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@8131)~ GOTO 18
END

IF ~~ THEN BEGIN 10 
  SAY @8596
  IF ~~ THEN REPLY @8597 DO ~AddXP2DA("ID1EX6A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@8131)~ EXIT
END

IF ~~ THEN BEGIN 11 //Arbor_Water
  SAY @8598
  IF ~//!Global("Arbor_Total","GLOBAL",4)
      OR(3)
          Global("Arbor_Birds","GLOBAL",0)
          Global("Arbor_Squirrels","GLOBAL",0)
          Global("Arbor_Seeds","GLOBAL",0)~ THEN REPLY @26512 DO ~AddXP2DA("ID1EX10H")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@8133)~ GOTO 17
  IF ~//Global("Arbor_Total","GLOBAL",4)
      Global("Arbor_Birds","GLOBAL",1)
      Global("Arbor_Squirrels","GLOBAL",1)
      Global("Arbor_Seeds","GLOBAL",1)~ THEN REPLY @26513 DO ~AddXP2DA("ID1EX10H")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@8133)~ GOTO 18
END

IF ~~ THEN BEGIN 12
  SAY @8599
  IF ~~ THEN REPLY @8600 DO ~AddXP2DA("ID1EX6A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@8133)~ EXIT
END

IF ~~ THEN BEGIN 13 //Arbor_Birds
  SAY @8601
  IF ~//!Global("Arbor_Total","GLOBAL",4)
      OR(3)
          Global("Arbor_Water","GLOBAL",0)
          Global("Arbor_Squirrels","GLOBAL",0)
          Global("Arbor_Seeds","GLOBAL",0)~ THEN REPLY @26515 DO ~AddXP2DA("ID1EX9H")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@8134)~ GOTO 17
  IF ~//Global("Arbor_Total","GLOBAL",4)
      Global("Arbor_Water","GLOBAL",1)
      Global("Arbor_Squirrels","GLOBAL",1)
      Global("Arbor_Seeds","GLOBAL",1)~ THEN REPLY @26514 DO ~AddXP2DA("ID1EX9H")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@8134)~ GOTO 18
END

IF ~~ THEN BEGIN 14
  SAY @8602
  IF ~~ THEN REPLY @8603 DO ~AddXP2DA("ID1EX6A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@8134)~ EXIT
END

IF ~~ THEN BEGIN 15 //Arbor_Squirrels
  SAY @8607
  IF ~//!Global("Arbor_Total","GLOBAL",4)
      OR(3)
          Global("Arbor_Water","GLOBAL",0)
          Global("Arbor_Birds","GLOBAL",0)
          Global("Arbor_Seeds","GLOBAL",0)~ THEN REPLY @26516 DO ~AddXP2DA("ID1EX9H")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@8137)~ GOTO 17
  IF ~//Global("Arbor_Total","GLOBAL",4)
      Global("Arbor_Water","GLOBAL",1)
      Global("Arbor_Birds","GLOBAL",1)
      Global("Arbor_Seeds","GLOBAL",1)~ THEN REPLY @26517 DO ~AddXP2DA("ID1EX9H")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@8137)~ GOTO 18
END

IF ~~ THEN BEGIN 16
  SAY @8608
  IF ~~ THEN REPLY @8609 DO ~AddXP2DA("ID1EX6A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@8137)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @26506
  IF ~~ THEN REPLY @26508 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @26507
  IF ~~ THEN REPLY @26509 DO ~SetQuestDone(@34235)
                              DestroySelf()~ EXIT
END
