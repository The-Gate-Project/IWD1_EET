BEGIN ~DGUELLO~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @10636
  IF ~~ THEN REPLY @10638 DO ~AddJournalEntry(@34269,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @10641 DO ~AddJournalEntry(@34269,QUEST)~ GOTO 1
  IF ~Global("SPRITE_IS_DEADShikata","GLOBAL",1)
      Global("SPRITE_IS_DEAD8008_Salamanders","GLOBAL",12)~ THEN REPLY @19619 GOTO 11
END

IF ~~ THEN BEGIN 1
  SAY @10642
  IF ~Global("Beorn_Quest","GLOBAL",2)~ THEN REPLY @10643 GOTO 2
  IF ~GlobalLT("Beorn_Quest","GLOBAL",2)~ THEN REPLY @10648 GOTO 2
  IF ~~ THEN REPLY @10650 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10651
  IF ~~ THEN REPLY @8045 EXIT
  IF ~~ THEN REPLY @10654 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 3
  SAY @10655
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~Global("Beorn_Quest","GLOBAL",3)~ THEN BEGIN 4
  SAY @82
  IF ~~ THEN REPLY @10707 DO ~SetGlobal("Beorn_Quest","GLOBAL",4)
                              AddXP2DA("ID1EX10A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10635)
                              StartStore("LDD_Guel",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @18624 DO ~SetGlobal("Beorn_Quest","GLOBAL",4)
                              AddXP2DA("ID1EX10A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10635)~ EXIT
  IF ~~ THEN REPLY @18625 DO ~SetGlobal("Beorn_Quest","GLOBAL",4)
                              AddXP2DA("ID1EX10A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10635)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10661
  IF ~~ THEN REPLY @10662 GOTO 7
  IF ~~ THEN REPLY @10663 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @10664
  IF ~~ THEN REPLY @10665 GOTO 7
  IF ~~ THEN REPLY @10666 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @10667
  IF ~~ THEN REPLY @288 DO ~SetGlobal("Gnome_Retreat","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @10668
  IF ~~ THEN DO ~SetGlobal("Gnome_Hate","GLOBAL",1)~ EXIT
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)
 Global("Beorn_Quest","GLOBAL",5)~ THEN BEGIN 9
  SAY @10674
  IF ~~ THEN REPLY @10682 DO ~AddXP2DA("ID1EX10H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10635)
                              SetGlobal("Beorn_Quest","GLOBAL",6)~ EXIT
  IF ~~ THEN REPLY @10683 DO ~AddXP2DA("ID1EX10A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10635)
                              SetGlobal("Beorn_Quest","GLOBAL",6)
                              GiveItemCreate("bootfor",LastTalkedToBy,1,1,1)~ EXIT
END

IF WEIGHT #1
~Global("Beorn_Quest","GLOBAL",4)~ THEN BEGIN 10
  SAY @10704
  IF ~~ THEN REPLY @10707 DO ~StartStore("LDD_Guel",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @10713 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("SPRITE_IS_DEADShikata","GLOBAL",1)
 Global("SPRITE_IS_DEAD8008_Salamanders","GLOBAL",12)~ THEN BEGIN 11
  SAY @19616
  IF ~~ THEN EXIT
END
