BEGIN ~DDENAINI~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8248
  IF ~~ THEN REPLY @8249 GOTO 1
  IF ~~ THEN REPLY @8250 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @8251 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @8252
  IF ~~ THEN REPLY @8253 GOTO 2
  IF ~~ THEN REPLY @8256 GOTO 11
  IF ~~ THEN REPLY @8257 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8258
  IF ~~ THEN REPLY @8259 GOTO 3
  IF ~~ THEN REPLY @8263 GOTO 11
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8265
  IF ~~ THEN REPLY @8266 GOTO 4
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8268
  IF ~~ THEN REPLY @8269 GOTO 5
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8271
  IF ~~ THEN REPLY @8272 GOTO 6
  IF ~~ THEN REPLY @8273 GOTO 2
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8275
  IF ~~ THEN REPLY @8276 GOTO 8
  IF ~~ THEN REPLY @8273 GOTO 2
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8279
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8280
  IF ~~ THEN REPLY @8281 GOTO 9
  IF ~~ THEN REPLY @8273 GOTO 2
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8284
  IF ~~ THEN REPLY @8285 DO ~AddJournalEntry(@14409,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @8273 GOTO 2
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8289
  IF ~~ THEN REPLY @8290 GOTO 11
  IF ~~ THEN REPLY @8292 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8296
  IF ~Global("PriestsQuest","GLOBAL",0)~ THEN REPLY @8297 GOTO 12
  IF ~Global("HolyWaterGiven","GLOBAL",0)~ THEN REPLY @8298 DO ~SetGlobal("HolyWaterQuestGiven","GLOBAL",1)
                                                                AddJournalEntry(@14410,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8300
  IF ~~ THEN REPLY @8301 GOTO 3
  IF ~~ THEN REPLY @8303 DO ~SetGlobal("PriestsQuest","GLOBAL",1)~ GOTO 13
  IF ~GlobalGT("SPRITE_IS_DEADSH_Cleric_Dead","GLOBAL",24)~ THEN REPLY @19624 DO ~SetGlobal("PriestsQuest","GLOBAL",2)
                                                                                  EraseJournalEntry(@15469)
                                                                                  AddJournalEntry(@14412,QUEST_DONE)~ EXIT
  IF ~~ THEN REPLY @8304 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @8305
  IF ~~ THEN REPLY @8306 DO ~AddJournalEntry(@15469,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @8307 DO ~AddJournalEntry(@15469,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @8308 DO ~AddJournalEntry(@15469,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @8309 DO ~AddJournalEntry(@15469,QUEST)~ GOTO 11
  IF ~~ THEN REPLY @8310 DO ~AddJournalEntry(@15469,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @8311
  IF ~~ THEN REPLY @8312 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @8313
  IF ~~ THEN REPLY @8314 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @8315
  IF ~~ THEN REPLY @8316 GOTO 2
  IF ~~ THEN REPLY @8317 GOTO 11
  IF ~~ THEN REPLY @8318 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 17
  SAY @8319
  IF ~~ THEN REPLY @8320 GOTO 2
  IF ~~ THEN REPLY @8321 GOTO 11
  IF ~PartyHasItem("HOLYWAT")
      Global("HolyWaterGiven","GLOBAL",0)
      Global("HolyWaterQuestGiven","GLOBAL",1)~ THEN REPLY @8322 DO ~TakePartyItem("HOLYWAT")
                                                                     DestroyItem("HOLYWAT")
                                                                     EraseJournalEntry(@14410)
                                                                     AddJournalEntry(@14411,QUEST_DONE)~ GOTO 18
  IF ~GlobalGT("SPRITE_IS_DEADSH_Cleric_Dead","GLOBAL",24)
      Global("PriestsQuest", "GLOBAL",1)~ THEN REPLY @8323 DO ~SetGlobal("PriestsQuest","GLOBAL",2)
                                                               EraseJournalEntry(@15469)
                                                               AddJournalEntry(@14412,QUEST_DONE)~ GOTO 19
  IF ~~ THEN REPLY @8324 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @8325
  IF ~~ THEN REPLY @8326 DO ~AddXP2DA("ID1EX8H")
                             DisplayStringNoNameDlg(LastTalkedToBy,@8139)
                             SetGlobal("HolyWaterGiven","GLOBAL",1)
                             SetGlobal("Restore5201","GLOBAL",1)
                             GiveItemCreate("HELMSUN",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @8328
  IF ~~ THEN REPLY @8329 DO ~AddXP2DA("ID1EX7A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@14413)
                             GiveItemCreate("SLINGED",LastTalkedToBy,0,0,0)~ EXIT
END
