BEGIN ~DPLANAR~

IF WEIGHT #7
~GlobalLT("IWD1_CHAPTER","GLOBAL",1)~ THEN BEGIN 0
  SAY @25081
  IF ~~ THEN REPLY @25084 GOTO 1
  IF ~Global("Caravan_Quest","GLOBAL",1)~ THEN REPLY @25085 GOTO 3
  IF ~Global("Siren_Quest","GLOBAL",1)~ THEN REPLY @25090 GOTO 4
  IF ~Global("Know_Pomab","GLOBAL",1)~ THEN REPLY @25091 GOTO 5
  IF ~~ THEN REPLY @25092 GOTO 6
  IF ~~ THEN REPLY @25093 GOTO 7
  IF ~~ THEN REPLY @25094 DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @25095
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @25097
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @25098
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @25099
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @25100
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @25101
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @25102
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF WEIGHT #6
~Global("IWD1_CHAPTER","GLOBAL",1)~ THEN BEGIN 8
  SAY @25103
  IF ~~ THEN REPLY @25104 GOTO 9
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @25105 GOTO 10
  IF ~Global("Know_Arundel","GLOBAL",1)~ THEN REPLY @25106 GOTO 11
  IF ~Global("Know_Lysan","GLOBAL",1)~ THEN REPLY @25107 GOTO 12
  IF ~Global("Know_Conlan","GLOBAL",1)~ THEN REPLY @25108 GOTO 13
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @25109 GOTO 14
  IF ~Global("Know_Egenia","GLOBAL",1)~ THEN REPLY @25110 GOTO 15
  IF ~~ THEN REPLY @25094 DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25113
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @25114
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @25115
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @25116
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @25117
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @25118
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @25119
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF WEIGHT #5
~Global("IWD1_CHAPTER","GLOBAL",2)~ THEN BEGIN 16
  SAY @25120
  IF ~~ THEN REPLY @25121 GOTO 17
  IF ~Global("Know_Conlan","GLOBAL",1)
      GlobalLT("Sheemish_Escape","GLOBAL",1)~ THEN REPLY @25122 GOTO 18
  IF ~Global("Know_Egenia","GLOBAL",1)~ THEN REPLY @25123 GOTO 19
  IF ~~ THEN REPLY @25124 GOTO 20
  IF ~~ THEN REPLY @25125 GOTO 21
  IF ~Global("ID4003_VISITED","GLOBAL",1)~ THEN REPLY @25126 GOTO 23
  IF ~Global("ID4004_VISITED","GLOBAL",1)
      Global("Yuanti_Inferno","GLOBAL",0)
      Global("CDTalkedAlbion","GLOBAL",1)~ THEN REPLY @25127 GOTO 24
  IF ~Global("ID4005_VISITED","GLOBAL",1)
      !Global("SPRITE_IS_DEADYxunomei","GLOBAL",1)~ THEN REPLY @25128 GOTO 25
  IF ~~ THEN REPLY @25129 DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @25130
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @25131
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @25132
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @25133
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @25134
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @25135
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @25136
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @25137
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @25138
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF WEIGHT #4
~Global("IWD1_CHAPTER","GLOBAL",3)~ THEN BEGIN 26
  SAY @25139
  IF ~~ THEN REPLY @25140 GOTO 27
  IF ~Global("ID5103_VISITED","GLOBAL",1)~ THEN REPLY @25141 GOTO 28
  IF ~Global("Know_Larrel","GLOBAL",1)~ THEN REPLY @25142 GOTO 29
  IF ~~ THEN REPLY @25143 GOTO 30
  IF ~Global("ID5103_VISITED","GLOBAL",1)
      GlobalLT("Astrolab","GLOBAL",4)~ THEN REPLY @25144 GOTO 31
  IF ~~ THEN REPLY @25145 GOTO 34
  IF ~GlobalGT("Orrick_Quest","GLOBAL",0)
      !Global("Mythal","GLOBAL",1)~ THEN REPLY @25146 GOTO 40
  IF ~~ THEN REPLY @25147 GOTO 41
  IF ~Global("ArborQuestGiveN","GLOBAL",1)~ THEN REPLY @25148 GOTO 42
  IF ~Global("ID5004_VISITED","GLOBAL",1)~ THEN REPLY @25149 GOTO 44
  IF ~~ THEN REPLY @25129 DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @25163
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @25167
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @25172
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @25175
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @25176
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @25177
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @25178
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @25183
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @25202
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @25210
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @25214
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @25218
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @25228
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 40
  SAY @25229
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY @25230
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 42
  SAY @25231
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @25232
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 44
  SAY @25233
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF WEIGHT #3
~Global("IWD1_CHAPTER","GLOBAL",4)~ THEN BEGIN 45
  SAY @25234
  IF ~~ THEN REPLY @25235 GOTO 46
  IF ~Global("ID6002_Visited","GLOBAL",1)~ THEN REPLY @25236 GOTO 47
  IF ~!Global("Saablic_Quest","GLOBAL",0)~ THEN REPLY @25237 GOTO 48
  IF ~Global("ID6010_Visited","GLOBAL",1)
      !Global("ID6011_Visited","GLOBAL",1)~ THEN REPLY @25238 GOTO 49
  IF ~Global("ID6006_Visited","GLOBAL",1)
      !Global("Forge_On","GLOBAL",0)~ THEN REPLY @25239 GOTO 50
  IF ~~ THEN REPLY @25129 DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 46
  SAY @25241
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 47
  SAY @25242
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 48
  SAY @25243
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 49
  SAY @25244
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 50
  SAY @25245
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF WEIGHT #2
~Global("IWD1_CHAPTER","GLOBAL",5)~ THEN BEGIN 51
  SAY @25246
  IF ~!Global("Saablic_Quest","GLOBAL",0)~ THEN REPLY @25247 GOTO 52
  IF ~Global("Kill_Frost","GLOBAL",3)~ THEN REPLY @25248 GOTO 53
  IF ~Global("Explore_Cave","GLOBAL",3)~ THEN REPLY @25249 GOTO 54
  IF ~Global("Kill_Vera","GLOBAL",3)~ THEN REPLY @25250 GOTO 55
  IF ~Global("Get_Key","GLOBAL",3)~ THEN REPLY @25251 GOTO 56
  IF ~Global("Bridge_Broken","GLOBAL",1)
      Global("Got_BookEng","GLOBAL",0)~ THEN REPLY @25252 GOTO 77
  IF ~~ THEN REPLY @25129 DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 52
  SAY @25254
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 53
  SAY @25255
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 54
  SAY @25256
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 55
  SAY @25263
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 56
  SAY @25264
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF WEIGHT #1
~Global("IWD1_CHAPTER","GLOBAL",6)~ THEN BEGIN 57
  SAY @25265
  IF ~!Global("Saablic_Quest","GLOBAL",0)
      !Global("ID1100_Visited","GLOBAL",1)~ THEN REPLY @25269 GOTO 58
  IF ~Global("Tarnelm_Food","GLOBAL",1)
      !Global("ID1100_Visited","GLOBAL",1)~ THEN REPLY @25270 GOTO 60
  IF ~Global("Malavon_Curse","GLOBAL",1)
      !Global("ID1100_Visited","GLOBAL",1)~ THEN REPLY @25271 GOTO 61
  IF ~!Global("ID1100_Visited","GLOBAL",1)~ THEN REPLY @25272 GOTO 62
  IF ~!Global("Saablic_Quest","GLOBAL",0)
      !Global("ID8013_Visited","GLOBAL",1)~ THEN REPLY @25273 GOTO 64
  IF ~Global("ID1100_Visited","GLOBAL",1)~ THEN REPLY @25274 GOTO 65
  IF ~Global("ID1100_Visited","GLOBAL",1)
      !Global("ID1101_Visited","GLOBAL",1)~ THEN REPLY @25275 GOTO 66
  IF ~!Global("ID1103_Visited","GLOBAL",1)~ THEN REPLY @25276 GOTO 67
  IF ~Global("ID1104_Visited","GLOBAL",1)
      !Global("ID1105_Visited","GLOBAL",1)~ THEN REPLY @25277 GOTO 68
  IF ~~ THEN REPLY @25129 DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 58
  SAY @25279
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @25280
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 60
  SAY @25281
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 61
  SAY @25282
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 62
  SAY @25283
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @25284
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 64
  SAY @25285
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 65
  SAY @25286
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 66
  SAY @25287
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 67
  SAY @25288
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 68
  SAY @25289
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF WEIGHT #0
~GlobalGT("Hjollder_Quest","GLOBAL",2)
 !Global("Exp_Pause","GLOBAL",1)
 //!Global("HOW_COMPLETED","GLOBAL",1)
 //!BitCheck("IWDEET_COMPLETE","GLOBAL",BITS_HOW)
 !Global("IWDEET_HOW_COMPLETE","GLOBAL",1)~ THEN BEGIN 69
  SAY @25290
  IF ~~ THEN REPLY @25292 GOTO 70
  IF ~GlobalGT("Body_Count","GLOBAL",0)
      Global("Emmerich_Quest","GLOBAL",3)~ THEN REPLY @25293 GOTO 71
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",4)~ THEN REPLY @25294 GOTO 72
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",9)~ THEN REPLY @25295 GOTO 73
  IF ~Global("Hjollder_Quest","GLOBAL",9)~ THEN REPLY @25296 GOTO 74
  IF ~Global("Hjollder_Quest","GLOBAL",12)~ THEN REPLY @25297 GOTO 75
  IF ~Global("Know_Vexing","GLOBAL",1)
      !Global("Know_Truename","GLOBAL",1)~ THEN REPLY @25298 DO ~SetGlobal("Know_Truename","GLOBAL",1)~ GOTO 76
  IF ~~ THEN REPLY @25129 DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 70
  SAY @25300
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 71
  SAY @25301
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 72
  SAY @25302
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 73
  SAY @25303
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 74
  SAY @25304
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 75
  SAY @25305
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 76
  SAY @25306
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END

IF ~~ THEN BEGIN 77
  SAY @25307
  IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
END
