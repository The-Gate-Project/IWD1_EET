BEGIN ~DDAMIEN~

IF WEIGHT #2
~NumTimesTalkedTo(0)
 Global("Damien_Quest","GLOBAL",0)~ THEN BEGIN 0
  SAY @18249
  IF ~~ THEN REPLY @18250 GOTO 1
  IF ~~ THEN REPLY @18251 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @18252
  IF ~~ THEN REPLY @18253 GOTO 2
  IF ~~ THEN REPLY @18254 GOTO 3
  IF ~~ THEN REPLY @18255 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @18256
  IF ~PartyHasItem("fish")~ THEN REPLY @18257 DO ~TakePartyItem("fish")
                                                  AddJournalEntry(@34144,QUEST)~ GOTO 5
  IF ~!PartyHasItem("fish")~ THEN REPLY @18258 DO ~AddJournalEntry(@34144,QUEST)~ EXIT
  IF ~~ THEN REPLY @18259 DO ~AddJournalEntry(@34144,QUEST)~ EXIT
  IF ~~ THEN REPLY @18260 DO ~AddJournalEntry(@34144,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @18261
  IF ~~ THEN REPLY @18262 GOTO 2
  IF ~~ THEN REPLY @18263 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @18264
  IF ~~ THEN REPLY @18265 GOTO 1
  IF ~~ THEN REPLY @18266 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @18267
  IF ~~ THEN REPLY @288 DO ~SetGlobal("Damien_Quest","GLOBAL",2)
                            AddXP2DA("ID1EX1E")
                            DisplayStringNoNameDlg(LastTalkedToBy,@17345)
                            EraseJournalEntry(@34144)
                            AddJournalEntry(@34119,QUEST_DONE)~ EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("Damien_Quest","GLOBAL",0)~ THEN BEGIN 6
  SAY @18273
  IF ~PartyHasItem("fish")~ THEN REPLY @18274 DO ~TakePartyItem("fish")~ GOTO 5
  IF ~PartyHasItem("fish")~ THEN REPLY @18278 GOTO 7
  IF ~!PartyHasItem("fish")~ THEN REPLY @18279 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @18280
  IF ~~ THEN REPLY @18281 GOTO 8
  IF ~~ THEN REPLY @18282 DO ~TakePartyItem("fish")~ GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY @18283
  IF ~~ THEN REPLY @18284 DO ~TakePartyItem("fish")~ GOTO 5
  IF ~~ THEN REPLY @18285 DO ~SetGlobal("Damien_Quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @18286
  IF ~~ THEN REPLY @6447 EXIT
END

IF WEIGHT #0
~Global("Damien_Quest","GLOBAL",1)~ THEN BEGIN 10
  SAY @18287
  IF ~~ THEN REPLY @18288 EXIT
END

IF WEIGHT #4
~Global("Damien_Quest","GLOBAL",2)~ THEN BEGIN 11
  SAY @18289
  IF ~~ THEN REPLY @18290 EXIT
END

IF WEIGHT #1
~!Global("Damien_Quest","GLOBAL",1)
 GlobalGT("Know_Balance","GLOBAL",0)~ THEN BEGIN 12
  SAY @18291
  IF ~~ THEN REPLY @18292 EXIT
  IF ~~ THEN REPLY @18293 GOTO 13
  IF ~~ THEN REPLY @18294 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @18295
  IF ~~ THEN REPLY @607 EXIT
END
