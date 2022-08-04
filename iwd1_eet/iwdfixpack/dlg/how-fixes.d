// syntax errors
//REPLACE_TRIGGER_TEXT ~dedion~   ~ClassEx(Protagonist,Priest)~ ~ClassEx(Protagonist,CLERIC)~
//REPLACE_ACTION_TEXT  ~dwylf~    ~SetGlobal(Looked_Mirror","GLOBAL", 1)~ ~SetGlobal("Looked_Mirror","GLOBAL",1)~

// checking for wrong item resref
//REPLACE_TRIGGER_TEXT ~dicasa~   ~PartyHasItem("jhosiwd2")~ ~PartyHasItem("jhoswd2")~

// hjollder's broken transition
//ALTER_TRANS DHJOLLDE BEGIN 65 END BEGIN 3 END // file, state, trans
//  BEGIN EPILOGUE ~GOTO 68~ END // go to proper response
  
//REPLACE_STATE_TRIGGER dplanar 69 
//~GlobalGT("Hjollder_Quest","GLOBAL",2)
//!Global("Exp_Pause","GLOBAL",1)
//!Global("HOW_COMPLETED","GLOBAL",1)~

// fix for ambere (plainab)
//ADD_TRANS_TRIGGER ~dambere~ 11 ~Global("Screwed_Ambere", "GLOBAL", 0)~  DO 0

// contact other plane waits until after exposure to drop hints about albion
//REPLACE_TRIGGER_TEXT ~dplanar~ ~GlobalGT("Yuanti_Inferno","GLOBAL",0)~ ~Global("Yuanti_Inferno","GLOBAL",0) Global("CDTalkedAlbion","GLOBAL",1)~
//ADD_TRANS_ACTION DALBION BEGIN 0 END BEGIN END ~SetGlobal("CDTalkedAlbion","GLOBAL",1)~

// loosen variables for murdaugh's quest
//REPLACE_TRIGGER_TEXT ~dmurdaug~ ~Global("Know_Murdaugh", *"GLOBAL", *0)~ ~Global("Murdaugh_Quest","GLOBAL",0)~

// syntax error fixes for gog-only version
//REPLACE_TRIGGER_TEXT ~dfengla~  ~GlobaGT("8002_Archers_Dead","GLOBAL",4)~ ~GlobalGT("8002_Archers_Dead","GLOBAL",4)~
//REPLACE_TRIGGER_TEXT ~dkayless~ ~NumTimesTalkedGT(0)~ ~NumTimesTalkedToGT(0)~
