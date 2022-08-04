BEGIN ~DUNDLT1~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2181
  IF ~~ THEN REPLY @2194 DO ~SetGlobal("ULt_Talk","GLOBAL",1)
                             AddJournalEntry(@1978,QUEST)
                             Enemy()~ GOTO 1
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @2195 DO ~AddJournalEntry(@3353,QUEST)~ GOTO 2
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @2196 DO ~SetGlobal("ULt_Talk","GLOBAL",1)
                                                           AddJournalEntry(@1978,QUEST)
                                                           Enemy()~ GOTO 3
  IF ~~ THEN REPLY @2197 DO ~SetGlobal("ULt_Talk","GLOBAL",1)
                             Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @2182
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2183
  IF ~~ THEN REPLY @2198 DO ~SetGlobal("ULt_Talk","GLOBAL",1)
                             Enemy()~ GOTO 4
  IF ~~ THEN REPLY @2199 DO ~SetGlobal("ULt_Talk","GLOBAL",1)
                             Enemy()~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @2184
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2185
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~Global("ULt_Talk","GLOBAL",1)~ THEN BEGIN 5
  SAY @2186
  IF ~~ THEN REPLY @2200 DO ~SetGlobal("ULt_Talk","GLOBAL",2)
                             Enemy()~ GOTO 6
  IF ~~ THEN REPLY @2201 DO ~SetGlobal("ULt_Talk","GLOBAL",2)
                             Enemy()~ GOTO 7
  IF ~~ THEN REPLY @2202 DO ~SetGlobal("ULt_Talk","GLOBAL",2)
                             Enemy()~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @2187
  IF ~~ THEN REPLY @2203 GOTO 8
  IF ~~ THEN REPLY @2204 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @2188
  IF ~~ THEN REPLY @2205 GOTO 8
  IF ~~ THEN REPLY @2206 GOTO 9
  IF ~~ THEN REPLY @2207 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2189
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @2190
  IF ~~ THEN REPLY @2208 GOTO 10
  IF ~~ THEN REPLY @2209 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @2191
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~Global("ULt_Talk","GLOBAL",2)~ THEN BEGIN 11
  SAY @2192
  IF ~~ THEN REPLY @2210 DO ~SetGlobal("ULt_Talk","GLOBAL",3)
                             Enemy()~ EXIT
  IF ~~ THEN REPLY @2211 DO ~SetGlobal("ULt_Talk","GLOBAL",3)
                             Enemy()~ EXIT
  IF ~~ THEN REPLY @2212 DO ~SetGlobal("ULt_Talk","GLOBAL",3)
                             Enemy()~ EXIT
  IF ~~ THEN REPLY @2213 DO ~SetGlobal("ULt_Talk","GLOBAL",3)
                             Enemy()~ EXIT
END

IF WEIGHT #2
~Global("ULt_Talk","GLOBAL",3)~ THEN BEGIN 12
  SAY @2193
  IF ~~ THEN REPLY @2214 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @2215 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @2216 DO ~Enemy()~ EXIT
END
