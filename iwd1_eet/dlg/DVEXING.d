BEGIN ~DVEXING~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24257
  IF ~~ THEN REPLY @1428 DO ~SetGlobal("Know_Vexing","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @24259 DO ~SetGlobal("Know_Vexing","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @24260
  IF ~~ THEN REPLY @24259 GOTO 2
  IF ~~ THEN REPLY @24262 GOTO 4
  IF ~~ THEN REPLY @24263 GOTO 5
  IF ~~ THEN REPLY @24264 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @24265
  IF ~~ THEN DO ~AddJournalEntry(@23547,QUEST)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @24266
  IF ~~ THEN REPLY @24262 GOTO 4
  IF ~~ THEN REPLY @24263 GOTO 5
  IF ~~ THEN REPLY @24264 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @24270
  IF ~~ THEN REPLY @24271 GOTO 5
  IF ~~ THEN REPLY @24264 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @24273
  IF ~~ THEN REPLY @24274 GOTO 6
  IF ~Global("Know_Truename","GLOBAL",1)~ THEN REPLY @24275 DO ~GiveItemCreate("Vexed3",LastTalkedToBy,1,1,1)
                                                                EraseJournalEntry(@23547)
                                                                EraseJournalEntry(@23544)
                                                                AddJournalEntry(@23546,QUEST_DONE)~ GOTO 7
  IF ~~ THEN REPLY @24276 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @24277
  IF ~~ THEN REPLY @24278 DO ~GiveItemCreate("Vexed",LastTalkedToBy,1,1,1)
                              EraseJournalEntry(@23547)
                              EraseJournalEntry(@23544)
                              AddJournalEntry(@23545,QUEST_DONE)~ GOTO 8
  IF ~~ THEN REPLY @19527 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @24280
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @24281
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 9
  SAY @24282
  IF ~~ THEN REPLY @24283 GOTO 5
  IF ~~ THEN REPLY @24284 GOTO 10
  IF ~Global("Vexed_Quest","GLOBAL",1)
      GlobalGT("Kill_Innocent","GLOBAL",2)~ THEN REPLY @24285 GOTO 13
  IF ~~ THEN REPLY @24264 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @24287
  IF ~~ THEN REPLY @24288 GOTO 11
  IF ~~ THEN REPLY @24289 DO ~SetGlobal("Vexed_Quest","GLOBAL",1)
                              AddJournalEntry(@23544,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @24290 GOTO 5
END

IF ~~ THEN BEGIN 11
  SAY @24291
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @24292
  IF ~GlobalGT("Kill_Innocent","GLOBAL",0)~ THEN REPLY @24293 GOTO 13
  IF ~Global("Kill_Innocent","GLOBAL",0)~ THEN REPLY @24294 EXIT
  IF ~~ THEN REPLY @24295 GOTO 11
END

IF ~~ THEN BEGIN 13
  SAY @24296
  IF ~~ THEN REPLY @24297 DO ~GiveItemCreate("Vexed2",LastTalkedToBy,1,1,1)
                              EraseJournalEntry(@23547)
                              EraseJournalEntry(@23544)
                              AddJournalEntry(@23485,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @24298 GOTO 11
END

IF ~~ THEN BEGIN 14
  SAY @24299
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END
