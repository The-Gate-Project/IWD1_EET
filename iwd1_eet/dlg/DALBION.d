BEGIN ~DALBION~

IF WEIGHT #0
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1209
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1210 DO ~AddJournalEntry(@3354,QUEST)
                                                             SetGlobal("CDTalkedAlbion","GLOBAL",1)~ GOTO 1
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1211 DO ~SetGlobal("CDTalkedAlbion","GLOBAL",1)~ GOTO 2
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1219 DO ~AddJournalEntry(@3354,QUEST)
                                                             SetGlobal("CDTalkedAlbion","GLOBAL",1)~ GOTO 3
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1220 DO ~AddJournalEntry(@3354,QUEST)
                                                             SetGlobal("CDTalkedAlbion","GLOBAL",1)~ GOTO 4
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1221 DO ~AddJournalEntry(@3354,QUEST)
                                                             SetGlobal("CDTalkedAlbion","GLOBAL",1)~ GOTO 5
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1235 GOTO 25
END

IF ~~ THEN BEGIN 1
  SAY @1222
  IF ~~ THEN REPLY @1223 GOTO 3
  IF ~~ THEN REPLY @1224 GOTO 6
  IF ~~ THEN REPLY @1225 GOTO 7
  IF ~~ THEN REPLY @1227 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @1228
  IF ~~ THEN REPLY @1229 GOTO 7
  IF ~~ THEN REPLY @1231 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @1232
  IF ~~ THEN REPLY @1233 GOTO 10
  IF ~~ THEN REPLY @1234 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @1236
  IF ~~ THEN REPLY @1238 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @1239
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1240
  IF ~~ THEN REPLY @1241 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @1243
  IF ~~ THEN REPLY @1245 GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY @1246
  IF ~~ THEN REPLY @1247 GOTO 7
  IF ~~ THEN REPLY @1248 GOTO 5
END

IF ~~ THEN BEGIN 9
  SAY @1262
  IF ~~ THEN REPLY @1263 GOTO 7
END

IF ~~ THEN BEGIN 10
  SAY @1265
  IF ~~ THEN REPLY @1266 GOTO 11
  IF ~~ THEN REPLY @1267 GOTO 12
  IF ~~ THEN REPLY @1268 GOTO 7
END

IF ~~ THEN BEGIN 11
  SAY @1270
  IF ~~ THEN REPLY @1271 GOTO 7
  IF ~~ THEN REPLY @1273 GOTO 5
END

IF ~~ THEN BEGIN 12
  SAY @1274
  IF ~~ THEN REPLY @1275 GOTO 7
  IF ~~ THEN REPLY @1277 GOTO 5
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Global("Yuanti_Surprise","GLOBAL",0)~ THEN BEGIN 13
  SAY @1278
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1279 GOTO 14
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1281 GOTO 15
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1282 GOTO 5
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @18947 GOTO 25
END

IF ~~ THEN BEGIN 14
  SAY @1283
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @1284 GOTO 16
  IF ~~ THEN REPLY @1285 GOTO 15
  IF ~~ THEN REPLY @1286 GOTO 5
END

IF ~~ THEN BEGIN 15
  SAY @1287
  IF ~~ THEN REPLY @1288 GOTO 14
  IF ~~ THEN REPLY @1289 GOTO 5
END

IF ~~ THEN BEGIN 16
  SAY @1290
  IF ~~ THEN REPLY @1291 DO ~AddXP2DA("ID1EX7A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@6250)
                             SetGlobal("Yuanti_Inferno","GLOBAL",1)
                             Enemy()~ GOTO 17
  IF ~~ THEN REPLY @1293 GOTO 5
END

IF ~~ THEN BEGIN 17
  SAY @1294
  IF ~~ THEN REPLY @1295 EXIT
  IF ~~ THEN REPLY @1296 EXIT
  IF ~~ THEN REPLY @1297 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("Yuanti_Surprise","GLOBAL",1)~ THEN BEGIN 18
  SAY @1298
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1299 DO ~AddJournalEntry(@4343,QUEST)~ GOTO 19
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1300 DO ~AddJournalEntry(@4343,QUEST)~ GOTO 19
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1301 GOTO 5
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @18948 GOTO 25
END

IF ~~ THEN BEGIN 19
  SAY @1302
  IF ~Global("Yuanti_Books","GLOBAL",1)~ THEN REPLY @1303 GOTO 20
  IF ~Global("Yuanti_Carpet","GLOBAL",1)~ THEN REPLY @1304 GOTO 21
  IF ~Global("Yuanti_Room","GLOBAL",1)~ THEN REPLY @1305 GOTO 22
END

IF ~~ THEN BEGIN 20
  SAY @1306
  IF ~~ THEN REPLY @1307 GOTO 23
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @1308 GOTO 23
  IF ~~ THEN REPLY @1309 GOTO 23
END

IF ~~ THEN BEGIN 21
  SAY @1310
  IF ~~ THEN REPLY @1311 DO ~Enemy()
                             SetGlobal("Yuanti_Inferno","GLOBAL",1)~ GOTO 23
  IF ~~ THEN REPLY @1312 DO ~Enemy()
                             SetGlobal("Yuanti_Inferno","GLOBAL",1)~ GOTO 23
  IF ~~ THEN REPLY @1313 DO ~Enemy()
                             SetGlobal("Yuanti_Inferno","GLOBAL",1)~ GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY @1314
  IF ~~ THEN REPLY @1315 GOTO 23
  IF ~~ THEN REPLY @1316 GOTO 23
  IF ~~ THEN REPLY @1317 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @1318
  IF ~~ THEN REPLY @1319 DO ~AddXP2DA("ID1EX7A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@6250)
                             SetGlobal("Yuanti_Inferno","GLOBAL",1)
                             Enemy()~ EXIT
  IF ~~ THEN REPLY @1320 DO ~AddXP2DA("ID1EX7A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@6250)
                             SetGlobal("Yuanti_Inferno","GLOBAL",1)
                             Enemy()~ EXIT
  IF ~~ THEN REPLY @1321 DO ~AddXP2DA("ID1EX7A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@6250)
                             SetGlobal("Yuanti_Inferno","GLOBAL",1)
                             Enemy()~ EXIT
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)
 Global("Yuanti_Inferno","GLOBAL",1)~ THEN BEGIN 24
  SAY @1322
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @18946
  IF ~~ THEN GOTO 23
END
