BEGIN ~DEGENIA~

IF WEIGHT #1
~GlobalGT("Talonite_Dead","GLOBAL",9)
 !Global("Egenia_Talked","GLOBAL",1)~ THEN BEGIN 0
  SAY @2137
  IF ~~ THEN REPLY @2148  DO ~AddXP2DA("ID1EX7H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@6249)
                              SetGlobal("Egenia_Talked","GLOBAL",1)
                              AddJournalEntry(@4357,QUEST)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2138
  IF ~Global("Know_Egenia","GLOBAL",1)~ THEN REPLY @2149 GOTO 2
  IF ~~ THEN REPLY @2150 GOTO 3
  IF ~~ THEN REPLY @2151 GOTO 4
  IF ~~ THEN REPLY @2152 DO ~StartStore("DETemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2153 DO ~RestPartyEx(0,0,TRUE)~ GOTO 5
  IF ~~ THEN REPLY @3797 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @2139
  IF ~~ THEN REPLY @2154 GOTO 4
  IF ~~ THEN REPLY @2155 GOTO 3
  IF ~~ THEN REPLY @2156 DO ~StartStore("DETemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2157 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @2140
  IF ~~ THEN REPLY @2159 GOTO 4
  IF ~~ THEN REPLY @2162 DO ~StartStore("DETemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2164 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @2141
  IF ~~ THEN REPLY @2165 GOTO 3
  IF ~~ THEN REPLY @2166 DO ~StartStore("DETemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2167 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @2142
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~GlobalGT("Talonite_Dead","GLOBAL",9)
 Global("Egenia_Talked","GLOBAL",1)~ THEN BEGIN 6
  SAY @2144
  IF ~~ THEN REPLY @2168 DO ~StartStore("DETemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2169 GOTO 7
  IF ~~ THEN REPLY @2170 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @3798 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @2145
  IF ~~ THEN REPLY @2171 GOTO 8
  IF ~~ THEN REPLY @2172 DO ~StartStore("DETemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2173 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2146
  IF ~~ THEN REPLY @2174 DO ~StartStore("DETemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2175 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @2147
  IF ~~ THEN REPLY @2176 GOTO 4
  IF ~~ THEN REPLY @2178 GOTO 7
  IF ~~ THEN REPLY @2180 EXIT
END

IF WEIGHT #0
~GlobalLT("Talonite_Dead","GLOBAL",10)~ THEN BEGIN 10
  SAY @5720
  IF ~~ THEN EXIT
END
