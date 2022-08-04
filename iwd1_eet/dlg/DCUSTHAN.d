BEGIN ~DCUSTHAN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8211
  IF ~~ THEN REPLY @8212 GOTO 1
  IF ~~ THEN REPLY @8213 GOTO 5
  IF ~~ THEN REPLY @8214 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @8215
  IF ~~ THEN REPLY @8216 GOTO 2
  IF ~~ THEN REPLY @8217 GOTO 4
  IF ~~ THEN REPLY @8218 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8219
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 3
  SAY @8220
  IF ~~ THEN REPLY @8212 GOTO 1
  IF ~~ THEN REPLY @8221 GOTO 5
  IF ~~ THEN REPLY @8222 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8223
  IF ~~ THEN REPLY @8224 GOTO 5
  IF ~~ THEN REPLY @8225 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8226
  IF ~Global("WorshipInTheHand","GLOBAL",0)~ THEN REPLY @8227 DO ~GiveItemCreate("BookWor",LastTalkedToBy,0,0,0)
                                                                  SetGlobal("WorshipInTheHand","GLOBAL",1)~ GOTO 6
  IF ~Global("RockEaters","GLOBAL",0)~ THEN REPLY @8228 DO ~GiveItemCreate("BookRoc",LastTalkedToBy,0,0,0)
                                                            SetGlobal("RockEaters","GLOBAL",1)~ GOTO 6
  IF ~Global("Corellon","GLOBAL",0)~ THEN REPLY @8230 DO ~GiveItemCreate("BookCor",LastTalkedToBy,0,0,0)
                                                          SetGlobal("Corellon","GLOBAL",1)~ GOTO 6
  IF ~Global("Shevarash","GLOBAL",0)~ THEN REPLY @8231 DO ~GiveItemCreate("BookShe",LastTalkedToBy,0,0,0)
                                                           SetGlobal("Shevarash","GLOBAL",1)~ GOTO 6
  IF ~Global("Sehanine","GLOBAL",0)~ THEN REPLY @8232 DO ~GiveItemCreate("BookMoo",LastTalkedToBy,0,0,0)
                                                          SetGlobal("Sehanine","GLOBAL",1)~ GOTO 6
  IF ~Global("Labelas","GLOBAL",0)~ THEN REPLY @8233 DO ~GiveItemCreate("BookLab",LastTalkedToBy,0,0,0)
                                                         SetGlobal("Labelas","GLOBAL",1)~ GOTO 6
  IF ~Global("Solonar","GLOBAL",0)~ THEN REPLY @8234 DO ~GiveItemCreate("BookSol",LastTalkedToBy,0,0,0)
                                                        SetGlobal("Solonar","GLOBAL",1)~ GOTO 6
  IF ~Global("Elameth","GLOBAL",0)~ THEN REPLY @8240 DO ~GiveItemCreate("BookCom",LastTalkedToBy,0,0,0)
                                                         AddJournalEntry(@14408,QUEST)
                                                         SetGlobal("Elameth","GLOBAL",1)~ GOTO 8
  IF ~Global("Unicorn","GLOBAL",0)~ THEN REPLY @14608 DO ~GiveItemCreate("BookUni",LastTalkedToBy,0,0,0)
                                                          AddJournalEntry(@14408,QUEST)
                                                          SetGlobal("Unicorn","GLOBAL",1)~ GOTO 9
  IF ~Global("Training","GLOBAL",0)~ THEN REPLY @14610 DO ~GiveItemCreate("Bookcod",LastTalkedToBy,0,0,0)
                                                           SetGlobal("Training","GLOBAL",1)~ GOTO 6
  IF ~Global("Hippogriff","GLOBAL",0)~ THEN REPLY @14613 DO ~GiveItemCreate("BookHip",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Hippogriff","GLOBAL",1)~ GOTO 6
  IF ~Global("Bladesingers","GLOBAL",0)~ THEN REPLY @14614 DO ~GiveItemCreate("BookBla",LastTalkedToBy,0,0,0)
                                                               SetGlobal("Bladesingers","GLOBAL",1)~ GOTO 6
  IF ~Global("Mythal","GLOBAL",0)~ THEN REPLY @14615 DO ~GiveItemCreate("BookMyt",LastTalkedToBy,0,0,0)
                                                         SetGlobal("Mythal","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @14616 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8236
  IF ~~ THEN REPLY @8237 GOTO 5
  IF ~~ THEN REPLY @8238 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8241
  IF ~~ THEN REPLY @8242 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @14617
  IF ~~ THEN REPLY @14618 GOTO 5
  IF ~~ THEN REPLY @14619 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @14620
  IF ~~ THEN REPLY @14621 GOTO 5
  IF ~~ THEN REPLY @14622 EXIT
END
