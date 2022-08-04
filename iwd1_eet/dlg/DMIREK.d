BEGIN ~DMIREK~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6260
  IF ~~ THEN DO ~SetGlobal("Mirek_Quest","GLOBAL",1)~ EXIT
END

IF WEIGHT #3
~Global("Mirek_Quest","GLOBAL",3)~ THEN BEGIN 1
  SAY @6262
  IF ~~ THEN REPLY @6265 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6281
  IF ~~ THEN REPLY @6292 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6293
  IF ~!PartyHasItem("MirekQI")~ THEN REPLY @6295 GOTO 4
  IF ~!PartyHasItem("MirekQI")~ THEN REPLY @6296 GOTO 5
  IF ~PartyHasItem("MirekQI")~ THEN REPLY @14256 DO ~TakePartyItem("MirekQI")~ GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @6297
  IF ~~ THEN REPLY @6298 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @6299
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)~ THEN REPLY @6300 GOTO 6
  IF ~Global("Vale_Quest","GLOBAL",0)~ THEN REPLY @6302 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @6303
  IF ~~ THEN REPLY @288 DO ~SetGlobal("Mirek_Quest","GLOBAL",4)
                            SetGlobal("Know_Conlan","GLOBAL",1)
                            AddJournalEntry(@2060,QUEST)~ EXIT
END

IF WEIGHT #5
~Global("Mirek_Quest","GLOBAL",4)~ THEN BEGIN 7
  SAY @11629
  IF ~!PartyHasItem("MirekQI")~ THEN REPLY @11630 GOTO 8
  IF ~PartyHasItem("MirekQI")~ THEN REPLY @11631 DO ~TakePartyItem("MirekQI")~ GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @11632
  IF ~~ THEN REPLY @288 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @11633
  IF ~~ THEN REPLY @11665 DO ~AddXP2DA("ID1EX2A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@11628)
                              SetGlobal("Mirek_Quest","GLOBAL",5)
                              GiveItemCreate("slng02",LastTalkedToBy,0,0,0)
                              EraseJournalEntry(@2060)
                              AddJournalEntry(@6301,QUEST_DONE)~ EXIT
END

IF WEIGHT #7
~Global("Mirek_Quest","GLOBAL",5)~ THEN BEGIN 10
  SAY @11666
  IF ~~ THEN REPLY @11701 EXIT
END

IF WEIGHT #2
~GlobalGT("Mirek_Quest","GLOBAL",0)
 GlobalLT("Mirek_Quest","GLOBAL",3)~ THEN BEGIN 11
  SAY @11705
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~GlobalGT("Kuldahar_Attack","GLOBAL",0)
 GlobalLT("Kuldahar_Attack","GLOBAL",3)~ THEN BEGIN 12
  SAY @11706
  IF ~~ THEN REPLY @11727 EXIT
END

IF WEIGHT #4
~Global("Kuldahar_Murder","GLOBAL",1)~ THEN BEGIN 13
  SAY @11729
  IF ~~ THEN REPLY @11730 EXIT
END

IF WEIGHT #0
~NumTimesTalkedTo(0)
 Global("ID3000_Visited","GLOBAL",1)~ THEN BEGIN 14
  SAY @19546
  IF ~~ THEN REPLY @6265 GOTO 2
END
