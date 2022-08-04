BEGIN ~DSAABLIC~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2649
  IF ~~ THEN REPLY @8158 GOTO 2
  IF ~~ THEN REPLY @1428 GOTO 2
  IF ~~ THEN REPLY @8160 GOTO 11
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @8161
  IF ~PartyHasItem("Krilag")
      Global("SPRITE_IS_DEADKrilag","GLOBAL",1)
      Global("Saablic_Quest","GLOBAL",1)~ THEN REPLY @8162 DO ~AddXP2DA("ID1EX9A")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@8129)~ GOTO 10
  IF ~Global("SPRITE_IS_DEADKrilag","GLOBAL",1)
      Global("Saablic_Quest","GLOBAL",1)
      !PartyHasItem("Krilag")~ THEN REPLY @8342 GOTO 13
  IF ~Global("Saablic_Quest","GLOBAL",0)~ THEN REPLY @8163 GOTO 2
  IF ~Global("Saablic_Quest","GLOBAL",0)~ THEN REPLY @1428 GOTO 2
  IF ~~ THEN REPLY @8165 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8166
  IF ~~ THEN REPLY @8168 DO ~SetGlobal("Saablic_Known","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @8170 DO ~SetGlobal("Saablic_Known","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @8171 GOTO 11
END

IF ~~ THEN BEGIN 3
  SAY @8172
  IF ~~ THEN REPLY @8173 GOTO 4
  IF ~~ THEN REPLY @8171 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8175
  IF ~~ THEN REPLY @8176 GOTO 5
  IF ~~ THEN REPLY @8177 GOTO 5
  IF ~~ THEN REPLY @8178 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8180
  IF ~~ THEN REPLY @8185 GOTO 6
  IF ~~ THEN REPLY @8186 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8187
  IF ~~ THEN REPLY @8188 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8189
  IF ~~ THEN REPLY @8190 GOTO 8
  IF ~Global("SPRITE_IS_DEADKrilag","GLOBAL",1)
      !PartyHasItem("Krilag")~ THEN REPLY @8191 GOTO 13
  IF ~Global("SPRITE_IS_DEADKrilag","GLOBAL",1)
      PartyHasItem("Krilag")~ THEN REPLY @8191 DO ~AddXP2DA("ID1EX8A")
                                                   DisplayStringNoNameDlg(LastTalkedToBy,@8129)~ GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @8193
  IF ~~ THEN REPLY @8194 DO ~SetGlobal("Saablic_Quest","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @8195 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8197
  IF ~~ THEN REPLY @8198 DO ~AddJournalEntry(@7834,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8200
  IF ~~ THEN REPLY @8201 DO ~SetGlobal("Saablic_Known","GLOBAL",2)
                             SetQuestDone(@7834)
                             AddJournalEntry(@5070,QUEST)
                             EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8202
  IF ~~ THEN REPLY @8203 GOTO 3
  IF ~~ THEN REPLY @8204 EXIT
END

IF WEIGHT #0
~Global("Saablic_Known","GLOBAL",2)~ THEN BEGIN 12
  SAY @8205
  IF ~~ THEN REPLY @8206 EXIT
  IF ~~ THEN REPLY @8207 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @8343
  IF ~~ THEN REPLY @8344 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @8345
  IF ~Global("Saablic_Known","GLOBAL",1)~ THEN REPLY @8346 GOTO 15
  IF ~!Global("Saablic_Known","GLOBAL",1)~ THEN REPLY @8346 GOTO 9
END

IF ~~ THEN BEGIN 15
  SAY @8349
  IF ~~ THEN REPLY @8350 EXIT
END
