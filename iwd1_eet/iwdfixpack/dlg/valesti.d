APPEND DVALESTI

  IF ~~ THEN BEGIN CDDoSomeMore SAY @1100102
    IF ~~ THEN REPLY @1100103 EXIT
  END

  IF ~~ THEN BEGIN CDAllDone SAY @1100104
    IF ~~ THEN REPLY @1100105 DO ~DestroySelf()~ EXIT
  END

END

// add the transition actions to increment the tracking global for completion
ADD_TRANS_ACTION DVALESTI BEGIN 8 END BEGIN 2 3 4 5 END ~IncrementGlobal("Arbor_Total","GLOBAL",1)~

// change existing transitions to new 'keep going' end state
ALTER_TRANS DVALESTI BEGIN 9 11 13 15 END BEGIN 0 END // file, state, trans
  BEGIN 
    ~TRIGGER~ ~!Global("Arbor_Total","GLOBAL",3)~
    ~REPLY~ ~@1100106~
    ~EPILOGUE~ ~GOTO CDDoSomeMore~
  END

// now add new transitions to 'all done' states
EXTEND_BOTTOM DVALESTI 9
  IF ~Global("Arbor_Total","GLOBAL",3)~  THEN REPLY @1100106 /* ~Think nothing of it.~ */ DO ~AddXpVar("Level_11_Average",8131)~ GOTO CDAllDone
END

EXTEND_BOTTOM DVALESTI 11
  IF ~Global("Arbor_Total","GLOBAL",3)~  THEN REPLY @1100106 /* ~Think nothing of it.~ */ DO ~AddXpVar("Level_10_Hard",8133)~ GOTO CDAllDone
END

EXTEND_BOTTOM DVALESTI 13
  IF ~Global("Arbor_Total","GLOBAL",3)~  THEN REPLY @1100106 /* ~Think nothing of it.~ */ DO ~AddXpVar("Level_9_Hard",8134)~ GOTO CDAllDone
END

EXTEND_BOTTOM DVALESTI 15
  IF ~Global("Arbor_Total","GLOBAL",3)~  THEN REPLY @1100106 /* ~Think nothing of it.~ */ DO ~AddXpVar("Level_9_Hard",8137)~ GOTO CDAllDone
END