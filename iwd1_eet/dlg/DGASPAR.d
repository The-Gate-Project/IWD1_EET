BEGIN ~DGASPAR~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @18068
  IF ~PartyHasItem("Contract")~ THEN REPLY @18069 GOTO 6
  IF ~~ THEN REPLY @18070 GOTO 1
  IF ~~ THEN REPLY @18071 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @18072
  IF ~~ THEN REPLY @18073 GOTO 2
  IF ~~ THEN REPLY @18074 GOTO 3
  IF ~PartyHasItem("Contract")~ THEN REPLY @18075 GOTO 6
  IF ~~ THEN REPLY @18076 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18077
  IF ~~ THEN REPLY @18078 GOTO 4
  IF ~~ THEN REPLY @18074 GOTO 3
  IF ~~ THEN REPLY @18076 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18090
  IF ~PartyHasItem("Contract")~ THEN REPLY @18075 GOTO 6
  IF ~~ THEN REPLY @18078 GOTO 4
  IF ~~ THEN REPLY @18076 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @18096
  IF ~~ THEN REPLY @18097 GOTO 5
  IF ~~ THEN REPLY @18099 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @18100
  IF ~PartyHasItem("Contract")~ THEN REPLY @18101 GOTO 6
  IF ~Global("Caravan_Quest","GLOBAL",1)~ THEN REPLY @18102 DO ~AddJournalEntry(@34183,QUEST)~ GOTO 8
  IF ~GlobalGT("Caravan_Quest","GLOBAL",1)~ THEN REPLY @18103 GOTO 9
  IF ~~ THEN REPLY @18104 DO ~AddJournalEntry(@34182,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @18105
  IF ~~ THEN REPLY @18106 DO ~TakePartyItem("Contract")
                              AddXP2DA("ID1EX1E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@17344)
                              EraseJournalEntry(@2331)
                              EraseJournalEntry(@34183)
                              EraseJournalEntry(@34182)
                              EraseJournalEntry(@16535)
                              AddJournalEntry(@34172,QUEST_DONE)~ GOTO 7
  IF ~~ THEN REPLY @18107 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @18108
  IF ~~ THEN REPLY @18109 DO ~GiveGoldForce(25)
                              SetGlobal("Gaspar_Quest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @18110
  IF ~~ THEN REPLY @18111 DO ~SetGlobal("Gaspar_Quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @18139
  IF ~PartyHasItem("Contract")~ THEN REPLY @18142 DO ~TakePartyItem("Contract")
                                                      AddXP2DA("ID1EX1E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@17344)~ GOTO 7
  IF ~~ THEN REPLY @18163 DO ~SetGlobal("Gaspar_Quest","GLOBAL",2)
                              AddJournalEntry(@16535,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @18165
  IF ~~ THEN REPLY @18168 EXIT
  IF ~~ THEN REPLY @18173 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Global("Damien_Quest","GLOBAL",0)~ THEN BEGIN 11
  SAY @18181
  IF ~Global("Gaspar_Quest","GLOBAL",1)
      GlobalGT("Caravan_Quest","GLOBAL",1)~ THEN REPLY @18103 GOTO 9
  IF ~Global("Gaspar_Quest","GLOBAL",2)
      PartyHasItem("Contract")~ THEN REPLY @18106 DO ~TakePartyItem("Contract")
                                                      AddXP2DA("ID1EX1E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@17344)~ GOTO 7
  IF ~Global("Gaspar_Quest","GLOBAL",0)~ THEN REPLY @18199 GOTO 15
  IF ~~ THEN REPLY @18071 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("Damien_Quest","GLOBAL",1)~ THEN BEGIN 12
  SAY @18201
  IF ~Global("Gaspar_Quest","GLOBAL",1)
      GlobalGT("Caravan_Quest","GLOBAL",1)~ THEN REPLY @18103 GOTO 9
  IF ~Global("Gaspar_Quest","GLOBAL",2)
      PartyHasItem("Contract")~ THEN REPLY @18106 DO ~TakePartyItem("Contract")
                                                      AddXP2DA("ID1EX1E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@17344)~ GOTO 7
  IF ~Global("Gaspar_Quest","GLOBAL",0)~ THEN REPLY @18199 GOTO 15
  IF ~~ THEN REPLY @18071 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 Global("Damien_Quest","GLOBAL",2)~ THEN BEGIN 13
  SAY @18205
  IF ~~ THEN REPLY @18232 GOTO 14
  IF ~~ THEN REPLY @18233 GOTO 16
  IF ~~ THEN REPLY @6447 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @18235
  IF ~Global("Gaspar_Quest","GLOBAL",1)
      GlobalGT("Caravan_Quest","GLOBAL",1)~ THEN REPLY @18103 GOTO 9
  IF ~Global("Gaspar_Quest","GLOBAL",2)
      PartyHasItem("Contract")~ THEN REPLY @18106 DO ~TakePartyItem("Contract")
                                                      AddXP2DA("ID1EX1E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@17344)~ GOTO 7
  IF ~Global("Gaspar_Quest","GLOBAL",0)~ THEN REPLY @18199 GOTO 15
  IF ~~ THEN REPLY @18071 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @18239
  IF ~~ THEN REPLY @18073 GOTO 2
  IF ~~ THEN REPLY @18074 GOTO 3
  IF ~PartyHasItem("Contract")~ THEN REPLY @18075 GOTO 5
  IF ~~ THEN REPLY @18076 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @18243
  IF ~Global("Gaspar_Quest","GLOBAL",1)
      GlobalGT("Caravan_Quest","GLOBAL",1)~ THEN REPLY @18103 GOTO 9
  IF ~Global("Gaspar_Quest","GLOBAL",2)
      PartyHasItem("Contract")~ THEN REPLY @18106 DO ~TakePartyItem("Contract")
                                                      AddXP2DA("ID1EX1E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@17344)~ GOTO 7
  IF ~Global("Gaspar_Quest","GLOBAL",0)~ THEN REPLY @18199 GOTO 15
  IF ~~ THEN REPLY @18071 EXIT
END

IF WEIGHT #0
~GlobalGT("Know_Balance","GLOBAL",0)~ THEN BEGIN 17
  SAY @18247
  IF ~~ THEN REPLY @18248 EXIT
END
