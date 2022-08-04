

ADD_STATE_TRIGGER DBANDOTH 1 ~Global("Bandoth_Quest","GLOBAL",0)~
SET_WEIGHT DBANDOTH 0 #1 // never spoken
SET_WEIGHT DBANDOTH 1 #2 // spoken once+
SET_WEIGHT DBANDOTH 2 #3 // razorvine in progress
SET_WEIGHT DBANDOTH 3 #5 // raxorvine complete
SET_WEIGHT DBANDOTH 4 #6 // razorvine wonk
SET_WEIGHT DBANDOTH 6 #4 // forge is on

REPLACE_TRIGGER_TEXT ~dckquest~ ~RandomNum(5,0)~ ~RandomNum(5,5)~

ADD_TRANS_ACTION DELISIA BEGIN 20 END BEGIN END ~SetInterrupt(FALSE)~

SET_WEIGHT DDIRTYLL 22 #-1

