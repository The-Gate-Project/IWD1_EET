// gnomarm doesn't exist; need to weight b_q = 5 state so that it actually appears
// also need to adjust post-rescue dialogue state (11) to account for b_q > 4
//REPLACE_ACTION_TEXT  DGUELLO ~GiveItemCreate("GnomArm",LastTalkedToBy,1,1,1)~ ~GiveItemCreate("bootfor",LastTalkedToBy,1,1,1)~
REPLACE_STATE_TRIGGER DGUELLO 10 ~GlobalGT("Beorn_Quest","GLOBAL",3)~
SET_WEIGHT DGUELLO 9 #-1