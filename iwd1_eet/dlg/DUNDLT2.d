BEGIN ~DUNDLT2~

IF WEIGHT #2
~True()~ THEN BEGIN 0
  SAY @2219
  IF ~~ THEN REPLY @2231 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @2230 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @2232 DO ~Enemy()~ EXIT
END

IF WEIGHT #0
~Class(LastTalkedToBy,MAGE_ALL)~ THEN BEGIN 1
  SAY @2220
  IF ~~ THEN REPLY @2233 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @2234 DO ~Enemy()~ EXIT
END

IF WEIGHT #1
~Class(LastTalkedToBy,PALADIN_ALL)
 !Kit(LastTalkedToBy,BLACKGUARD)~ THEN BEGIN 2
  SAY @2221
  IF ~~ THEN REPLY @2236 DO ~Enemy()~ GOTO 4
  IF ~~ THEN REPLY @2237 DO ~Enemy()~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @2222
  IF ~~ THEN REPLY @2246 EXIT
  IF ~~ THEN REPLY @2247 DO ~Enemy()
                             Attack(LastTalkedToBy)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @2225
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @2228
  IF ~~ THEN REPLY @2248 EXIT
  IF ~~ THEN REPLY @2249 DO ~Enemy()
                             Attack(LastTalkedToBy)~ GOTO 4
END
