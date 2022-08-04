// tighten up harken's state triggers
REPLACE_STATE_TRIGGER dharken 0
~NumTimesTalkedTo(0) GlobalLT("Voice_Quest","GLOBAL",2)~
REPLACE_STATE_TRIGGER dharken 6
~NumTimesTalkedToGT(0) GlobalLT("Voice_Quest","GLOBAL",2)~
REPLACE_STATE_TRIGGER dharken 7
~GlobalGT("Voice_Quest","GLOBAL",1)~

// make harken actually summon voice
ADD_TRANS_ACTION dharken BEGIN 4 5 6 END BEGIN END
~SetGlobal("CDVoiceLocation","GLOBAL",5)
SetGlobal("CDVoiceIsHere","MYAREA",0)
SetGlobal("SPRITE_IS_DEADVoice","GLOBAL",0)
SetGlobalTimer("CDVoiceTimer","GLOBAL",7200)~

// add dialogue option to discuss nym's theft while she's making shield
EXTEND_BOTTOM dnym 18 19
  IF ~~ THEN REPLY @11187 GOTO 5
END

// since voice is now being created/destroyed, use global instead of NumTimesTalkedTo for triggers
REPLACE_STATE_TRIGGER dvoiceda 0
~Global("CDVoiceSpoken","GLOBAL",0)~

REPLACE_STATE_TRIGGER dvoiceda 1
~!Global("CDVoiceSpoken","GLOBAL",0)~

// create bones when killed via end of quest
ADD_TRANS_ACTION dvoiceda BEGIN  1 END BEGIN 1 END ~GiveItemCreate("voicebn",Myself,1,1,1) DestroyItem("min2hp")~

// set var for spoken and set respawn/move timer for first time spoken
ADD_TRANS_ACTION dvoiceda BEGIN  4 END BEGIN END ~SetGlobal("CDVoiceSpoken","GLOBAL",1) SetGlobalTimer("CDVoiceTimer","GLOBAL",7200)~

// add enemy and attack command
ADD_TRANS_ACTION dvoiceda BEGIN 13 END BEGIN END ~Enemy()~
ALTER_TRANS dvoiceda BEGIN 1 END BEGIN 0 END
  BEGIN ACTION ~Enemy()~ END

// kill self if quest completed
ADD_TRANS_ACTION dvoiceda BEGIN 16 END BEGIN END ~Kill(Myself)~


//BELL DIALOG
CHAIN
IF WEIGHT #-1 ~Global("LDD_BELL_BROKE","GLOBAL",1)~ THEN DCALLARD bll01
  @777701
    DO ~SetGlobal("LDD_BELL_BROKE","GLOBAL",2)~
END
  IF ~Global("SPRITE_IS_DEADMarketh","GLOBAL",0)
      Global("Marketh_Gone","GLOBAL",0)
      Global("SPRITE_IS_DEADCallards_Son","GLOBAL",0)~  THEN EXTERN DCALLARD bll02
  IF ~!Global("Marketh_Gone","GLOBAL",0)
      Global("SPRITE_IS_DEADCallards_Son","GLOBAL",0)~  THEN EXTERN DCALLARD bll03
  IF ~!Global("SPRITE_IS_DEADMarketh","GLOBAL",0)
      Global("SPRITE_IS_DEADCallards_Son","GLOBAL",0)~  THEN EXTERN DCALLARD bll04
  IF ~!Global("SPRITE_IS_DEADCallards_Son","GLOBAL",0)~ THEN EXTERN DCALLARD bll08

CHAIN
IF ~~ THEN DCALLARD bll02
  @777702
END
  IF ~~ THEN REPLY @777703 EXTERN DCALLARD bll05
  IF ~~ THEN REPLY @777704 EXTERN DCALLARD bll06

CHAIN
IF ~~ THEN DCALLARD bll03
  @777705
END 
  IF ~~ THEN REPLY @777707 EXTERN DCALLARD bll07

CHAIN
IF ~~ THEN DCALLARD bll04
  @777706
END 
  IF ~~ THEN REPLY @777707 EXTERN DCALLARD bll07

CHAIN
IF ~~ THEN DCALLARD bll05
  @777708
END 
  IF ~~ THEN REPLY @777707 EXTERN DCALLARD bll07

CHAIN
IF ~~ THEN DCALLARD bll06
  @777709
END 
  IF ~~ THEN REPLY @777707 EXTERN DCALLARD bll07

CHAIN
IF ~~ THEN DCALLARD bll07
  @777710
    DO ~ActionOverride("cutspy",DestroySelf())
        MoveViewObject(LastTalkedToBy,INSTANT)~
EXIT

CHAIN
IF ~~ THEN DCALLARD bll08
  @777711
    DO ~ActionOverride("cutspy",DestroySelf())
        MoveViewObject(LastTalkedToBy,INSTANT)~
EXIT






