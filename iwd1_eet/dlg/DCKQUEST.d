BEGIN ~DCKQUEST~

IF WEIGHT #2
~RandomNum(5,0)
 !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 0
  SAY @5721
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~RandomNum(5,1)
 !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 1
  SAY @5722
  IF ~~ THEN EXIT
END

IF WEIGHT #4
~RandomNum(5,2)
 !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 2
  SAY @5723
  IF ~~ THEN EXIT
END

IF WEIGHT #5
~RandomNum(5,3)
 !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 3
  SAY @5724
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~RandomNum(5,4)
 !Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 4
  SAY @5725
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~Global("Liz_King_Quest","GLOBAL",1)~ THEN BEGIN 5
  SAY @5726
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~Global("SPRITE_IS_DEADLizard_King","GLOBAL",1)~ THEN BEGIN 6
  SAY @5727
  IF ~~ THEN REPLY @5729 DO ~AddXP2DA("ID1EX6H")
                             DisplayStringNoNameDlg(LastTalkedToBy,@6251)
                             SetGlobal("Liz_King_Quest","GLOBAL",1)
                             AddJournalEntry(@19552,QUEST)~ EXIT
END
