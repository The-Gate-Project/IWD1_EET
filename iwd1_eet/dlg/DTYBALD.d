BEGIN ~DTYBALD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22087
  IF ~~ THEN REPLY @10432 DO ~SetGlobal("Know_Tybald","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @22088 DO ~SetGlobal("Know_Tybald","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @22089
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @22104
  IF ~~ THEN REPLY @22105 GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY @22106
  IF ~Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @22107 GOTO 4
  IF ~Global("Know_Ambere","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      !GlobalGT("Ambere_Family","GLOBAL",1)~ THEN REPLY @22108 GOTO 9
  IF ~!Global("Hailee_Joke","GLOBAL",1)
      GlobalGT("Ambere_Family","GLOBAL",1)~ THEN REPLY @22109 GOTO 10
  IF ~Global("Know_Hailee","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      Global("Hailee_Home","GLOBAL",0)~ THEN REPLY @22110 GOTO 6
  IF ~Global("Know_Hailee","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      GlobalGT("Hailee_Home","GLOBAL",0)~ THEN REPLY @22110 GOTO 39
  IF ~!Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @3153 GOTO 17
  IF ~!Global("Hailee_Joke","GLOBAL",1)
      GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22114 GOTO 15
  IF ~~ THEN REPLY @3151 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @22115
  IF ~~ THEN REPLY @22116 DO ~SetGlobal("Hailee_Joke","GLOBAL",2)
                              AddJournalEntry(@34110,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @22117
  IF ~~ THEN REPLY @22118 GOTO 6
  IF ~~ THEN REPLY @22119 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @22120
  IF ~~ THEN REPLY @22121 GOTO 7
  IF ~~ THEN REPLY @22122 GOTO 8
  IF ~~ THEN REPLY @22123 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @22124
  IF ~Global("Know_Ambere","GLOBAL",1)
      !GlobalGT("Ambere_Family","GLOBAL",1)~ THEN REPLY @22125 GOTO 9
  IF ~GlobalGT("Ambere_Family","GLOBAL",1)~ THEN REPLY @22126 GOTO 10
  IF ~Global("Tybald_Work","GLOBAL",0)~ THEN REPLY @22127 GOTO 17
  IF ~Global("Tybald_Work","GLOBAL",1)~ THEN REPLY @22128 GOTO 17
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22129 GOTO 15
  IF ~~ THEN REPLY @21519 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22131
  IF ~Global("Tybald_Work","GLOBAL",0)~ THEN REPLY @22127 GOTO 17
  IF ~Global("Tybald_Work","GLOBAL",1)~ THEN REPLY @22128 GOTO 17
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22129 GOTO 15
  IF ~~ THEN REPLY @3151 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @22136
  IF ~Gender(LastTalkedToBy,MALE)
      Global("Screwed_Ambere","GLOBAL",1)~ THEN REPLY @22153 GOTO 13
  IF ~Gender(LastTalkedToBy,MALE)
      Global("Ambere_Family","GLOBAL",1)~ THEN REPLY @22154 GOTO 13
  IF ~Gender(LastTalkedToBy,FEMALE)
      Global("Ambere_Family","GLOBAL",1)~ THEN REPLY @22154 GOTO 43
  IF ~Global("Ambere_Family","GLOBAL",0)~ THEN REPLY @22156 GOTO 11
  IF ~~ THEN REPLY @22157 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @22158
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22159 GOTO 15
  IF ~~ THEN REPLY @22160 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @22161
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @22162
  IF ~Global("Screwed_Ambere","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @22163 GOTO 13
  IF ~Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @22164 DO ~SetGlobal("Hailee_Joke","GLOBAL",2)~ GOTO 4
  IF ~Global("Know_Hailee","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      Global("Hailee_Home","GLOBAL",0)~ THEN REPLY @22165 GOTO 6
  IF ~Global("Know_Hailee","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      GlobalGT("Hailee_Home","GLOBAL",0)~ THEN REPLY @22165 GOTO 39
  IF ~Global("Tybald_Work","GLOBAL",0)
      !Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @22167 GOTO 17
  IF ~Global("Tybald_Work","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @22168 GOTO 17
  IF ~!Global("Hailee_Joke","GLOBAL",1)
      GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22129 GOTO 15
  IF ~~ THEN REPLY @21519 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @22171
  IF ~~ THEN REPLY @22172 GOTO 14
  IF ~~ THEN REPLY @22175 GOTO 14
  IF ~~ THEN REPLY @22176 GOTO 14
END

IF ~NumTimesTalkedToGT(0)
    Global("Tybald_Pissed","GLOBAL",1)~ THEN BEGIN 14
  SAY @22178
  IF ~Global("Ambere_Family","GLOBAL",0)
      Global("Tybald_Pissed","GLOBAL",0)~ THEN REPLY @22179 DO ~ReputationInc(-1)
                                                                AddXP2DA("ID1EX6E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@11863)
                                                                SetGlobal("Tybald_Pissed","GLOBAL",1)
                                                                EraseJournalEntry(@23781)
                                                                EraseJournalEntry(@32002)
                                                                EraseJournalEntry(@23562)
                                                                EraseJournalEntry(@34112)
                                                                AddJournalEntry(@23398,QUEST_DONE)~ EXIT
  IF ~Global("Ambere_Family","GLOBAL",1)
      Global("Tybald_Pissed","GLOBAL",0)~ THEN REPLY @22182 DO ~ReputationInc(-1)
                                                                AddXP2DA("ID1EX6E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@14414)
                                                                SetGlobal("Tybald_Pissed","GLOBAL",1)
                                                                EraseJournalEntry(@23781)
                                                                EraseJournalEntry(@32002)
                                                                EraseJournalEntry(@23562)
                                                                EraseJournalEntry(@34112)
                                                                AddJournalEntry(@34108,QUEST_DONE)~ EXIT
  IF ~Global("Ambere_Family","GLOBAL",0)
      Global("Tybald_Pissed","GLOBAL",1)~ THEN REPLY @22179 EXIT
  IF ~Global("Ambere_Family","GLOBAL",1)
      Global("Tybald_Pissed","GLOBAL",1)~ THEN REPLY @22182 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @22183
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @22184
  IF ~Global("Tybald_Work","GLOBAL",0)~ THEN REPLY @22127 GOTO 17
  IF ~Global("Tybald_Work","GLOBAL",1)~ THEN REPLY @22128 GOTO 17
  IF ~Global("Know_Hailee","GLOBAL",1)
      Global("Hailee_Home","GLOBAL",0)~ THEN REPLY @22192 GOTO 6
  IF ~Global("Know_Hailee","GLOBAL",1)
      GlobalGT("Hailee_Home","GLOBAL",0)~ THEN REPLY @22192 GOTO 39
  IF ~Global("Know_Ambere","GLOBAL",1)
      !GlobalGT("Ambere_Family","GLOBAL",1)~ THEN REPLY @22108 GOTO 9
  IF ~GlobalGT("Ambere_Family","GLOBAL",1)~ THEN REPLY @22109 GOTO 10
  IF ~~ THEN REPLY @3151 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @22199
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @22200
  IF ~Global("Know_Baldemar","GLOBAL",0)~ THEN REPLY @22201 DO ~SetGlobal("Tybald_Work","GLOBAL",1)
                                                                SetGlobal("Know_Baldemar","GLOBAL",1)~ GOTO 19
  IF ~Global("Know_Baldemar","GLOBAL",1)~ THEN REPLY @22202 DO ~SetGlobal("Tybald_Work","GLOBAL",1)~ GOTO 20
  IF ~GlobalGT("Tybald_Work","GLOBAL",0)
      GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22203 GOTO 15
  IF ~~ THEN REPLY @22204 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @22205
  IF ~~ THEN REPLY @8694 GOTO 21
  IF ~~ THEN REPLY @22207 GOTO 21
END

IF ~~ THEN BEGIN 20
  SAY @22268
  IF ~~ THEN REPLY @8694 GOTO 21
  IF ~~ THEN REPLY @22207 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @22271
  IF ~~ THEN REPLY @22272 GOTO 22
  IF ~~ THEN REPLY @22273 GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY @22274
  IF ~~ THEN REPLY @22275 GOTO 24
  IF ~~ THEN REPLY @22276 GOTO 24
END

IF ~~ THEN BEGIN 23
  SAY @22277
  IF ~~ THEN REPLY @22275 GOTO 24
  IF ~~ THEN REPLY @22276 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @22280
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @22281
  IF ~~ THEN REPLY @22282 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @22283
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @22284
  IF ~~ THEN REPLY @988 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @22285
  IF ~Global("Know_Assassin","GLOBAL",0)~ THEN REPLY @22286 DO ~SetGlobal("Know_Assassin","GLOBAL",1)
                                                                AddJournalEntry(@23561,QUEST)~ GOTO 29
  IF ~Global("Know_Assassin","GLOBAL",1)~ THEN REPLY @22287 DO ~AddJournalEntry(@23561,QUEST)~ GOTO 29
  IF ~Global("Know_Assassin","GLOBAL",2)~ THEN REPLY @22288 GOTO 32
  IF ~~ THEN REPLY @22298 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @22289
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @22290
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @22291 GOTO 31
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22292 GOTO 15
  IF ~~ THEN REPLY @22298 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @22299
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22300 GOTO 15
  IF ~~ THEN REPLY @22301 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @22302
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22304 GOTO 15
  IF ~~ THEN REPLY @22305 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Tybald_Pissed","GLOBAL",0)~ THEN BEGIN 33
  SAY @22306
  IF ~Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @22307 GOTO 4
  IF ~Global("Know_Hailee","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      Global("Hailee_Home","GLOBAL",0)~ THEN REPLY @22192 GOTO 6
  IF ~Global("Know_Hailee","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      GlobalGT("Hailee_Home","GLOBAL",0)~ THEN REPLY @22192 GOTO 39
  IF ~Global("Know_Ambere","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      !GlobalGT("Ambere_Family","GLOBAL",1)~ THEN REPLY @22310 GOTO 9
  IF ~GlobalGT("Ambere_Family","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @22312 GOTO 10
  IF ~Global("Know_Ambere","GLOBAL",1)
      Global("Know_Hailee","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)
      Global("Tybald_Work","GLOBAL",1)
      GlobalLT("Quinn_Tybald","GLOBAL",2)~ THEN REPLY @22313 GOTO 34
  IF ~!Global("Hailee_Joke","GLOBAL",1)
      Global("Tybald_Work","GLOBAL",1)
      Global("Quinn_Tybald","GLOBAL",1)~ THEN REPLY @22314 GOTO 36
  IF ~Global("Tybald_Work","GLOBAL",0)
      !Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @3153 GOTO 17
  IF ~Global("Tybald_Work","GLOBAL",1)
      !Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @22317 GOTO 17
  IF ~~ THEN REPLY @3151 EXIT
END

IF ~~ THEN BEGIN 34
  SAY @22319
  IF ~~ THEN REPLY @22320 GOTO 35
  IF ~~ THEN REPLY @22321 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @22323
  IF ~Global("Quinn_Tybald","GLOBAL",1)~ THEN REPLY @22324 GOTO 36
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22325 GOTO 15
  IF ~~ THEN REPLY @22327 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @22330
  IF ~~ THEN REPLY @22331 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @22332
  IF ~~ THEN REPLY @22334 DO ~SetGlobal("Quinn_Tybald","GLOBAL",2)
                              AddXP2DA("ID1EX6A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@18511)
                              EraseJournalEntry(@23781)
                              EraseJournalEntry(@32002)
                              EraseJournalEntry(@23562)
                              EraseJournalEntry(@34112)
                              AddJournalEntry(@34111,QUEST_DONE)~ GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @22335
  IF ~~ THEN REPLY @22336 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @22339
  IF ~Global("Hailee_Home","GLOBAL",1)~ THEN REPLY @988 GOTO 41
  IF ~Global("Hailee_Home","GLOBAL",2)~ THEN REPLY @988 GOTO 40
  IF ~Global("Hailee_Home","GLOBAL",3)~ THEN REPLY @988 GOTO 42
  IF ~Global("Hailee_Home","GLOBAL",4)~ THEN REPLY @988 GOTO 45
  IF ~GlobalGT("Hailee_Home","GLOBAL",4)~ THEN REPLY @988 GOTO 44
END

IF ~~ THEN BEGIN 40
  SAY @22350
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22351 GOTO 15
  IF ~~ THEN REPLY @22354 EXIT
END

IF ~~ THEN BEGIN 41
  SAY @22355
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22360 GOTO 15
  IF ~~ THEN REPLY @22362 EXIT
END

IF ~~ THEN BEGIN 42
  SAY @22364
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22351 GOTO 15
  IF ~~ THEN REPLY @22368 EXIT
END

IF ~~ THEN BEGIN 43
  SAY @22369
  IF ~~ THEN REPLY @22370 GOTO 14
  IF ~~ THEN REPLY @22175 GOTO 14
END

IF ~~ THEN BEGIN 44
  SAY @22372
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22351 GOTO 15
  IF ~~ THEN REPLY @22362 EXIT
END

IF ~~ THEN BEGIN 45
  SAY @22375
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22351 GOTO 15
  IF ~~ THEN REPLY @22354 EXIT
END
