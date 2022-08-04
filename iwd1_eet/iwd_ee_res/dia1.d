
//BLOCK DACCALIA
ADD_TRANS_TRIGGER DACCALIA 0  ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0 1
ADD_TRANS_TRIGGER DACCALIA 2  ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0 1 2 //3 4 5 6 7
ADD_TRANS_TRIGGER DACCALIA 3  ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 4
ADD_TRANS_TRIGGER DACCALIA 4  ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 1
ADD_TRANS_TRIGGER DACCALIA 16 ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0
EXTEND_TOP DACCALIA 0
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40780 GOTO 1
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40781 GOTO a19
END
EXTEND_TOP DACCALIA 2
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40782 DO ~SetGlobal("Jered_Stone","GLOBAL",1)~ GOTO 8
END
EXTEND_TOP DACCALIA 3
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40783 GOTO a20
END
EXTEND_TOP DACCALIA 3
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40784 GOTO 13
END
EXTEND_TOP DACCALIA 3
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40785 GOTO a21
END

APPEND DACCALIA
  IF ~~ THEN BEGIN a19
    SAY @40786
    IF ~~ THEN GOTO 2
  END
  
  IF ~~ THEN BEGIN a20
    SAY @40787
    IF ~Global("Accalia_Immigrant","GLOBAL",0)~ THEN REPLY @278 DO ~SetGlobal("Accalia_Immigrant","GLOBAL",1)~ GOTO 6
    IF ~~ THEN REPLY @280 GOTO 4
    IF ~~ THEN REPLY @283 EXIT
  END
  
  IF ~~ THEN BEGIN a21
    SAY @40788
    IF ~~ THEN REPLY @315 GOTO 2
    IF ~~ THEN REPLY @317 GOTO 3
    IF ~~ THEN REPLY @318 EXIT
  END
END
//BLOCKEND

//BLOCK DALBION
ADD_TRANS_ACTION  DALBION BEGIN 5 END BEGIN 0 END ~AddJournalEntry(@3354,INFO)~
//BLOCKEND

//BLOCK DAMELIA
//REPLACE_TRANS_ACTION DAMELIA BEGIN 5 END BEGIN 0 1 END ~AddJournalEntry(\([0-9]+\),QUEST)~ ~~
ALTER_TRANS DAMELIA BEGIN 5 END BEGIN 0 1 END BEGIN "ACTION" ~SetGlobal("Aldwin_Story","GLOBAL",1)~ END
ADD_TRANS_TRIGGER DAMELIA 8 ~!Alignment(LastTalkedToBy,MASK_EVIL)~ DO 0 1 2
ADD_TRANS_ACTION  DAMELIA BEGIN 8 END BEGIN   END ~AddJournalEntry(@2057,QUEST)~
EXTEND_BOTTOM DAMELIA 8
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @1797 DO ~AddJournalEntry(@2073,QUEST)~ GOTO 10
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @1798 DO ~AddJournalEntry(@2073,QUEST)~ GOTO 10
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @1799 DO ~AddJournalEntry(@2073,QUEST)~ GOTO 10
END
//BLOCKEND

//BLOCK DANGAAR
ADD_TRANS_ACTION DANGAAR BEGIN 14 END BEGIN 0 END ~AddJournalEntry(@40680,QUEST)~
ADD_TRANS_ACTION DANGAAR BEGIN 17 END BEGIN 0 END ~AddJournalEntry(@23550,QUEST)~
ADD_TRANS_ACTION DANGAAR BEGIN 19 END BEGIN 0 END ~AddJournalEntry(@23549,QUEST)~
ADD_TRANS_TRIGGER DANGAAR 23 ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0
EXTEND_BOTTOM DANGAAR 23
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40799 GOTO an39
END
APPEND DANGAAR
  IF ~~ THEN BEGIN an39
    SAY @40800
    IF ~CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @24031 DO ~SetGlobal("Passed_Test","GLOBAL",1)~ GOTO 26
    IF ~CheckStatGT(LastTalkedToBy,9,CHR)~  THEN REPLY @24031 DO ~SetGlobal("Passed_Test","GLOBAL",1)~ GOTO 25
  END
END
//BLOCKEND

//BLOCK DARUNDEL
REPLACE_TRANS_ACTION DARUNDEL BEGIN 86 END BEGIN 1 END ~Kill(Myself)~ ~~
//BLOCKEND

//BLOCK DBANDOTH
EXTEND_BOTTOM DBANDOTH 0 4
  IF ~Global("PUZZLE_STAIRS_OPEN","GLOBAL",0)
      PartyHasItem("Kalabac")~ THEN REPLY @19609 GOTO 23
END
//BLOCKEND

//BLOCK DEMMRCH
ADD_TRANS_TRIGGER DEMMRCH 17 ~!Global("ID9200_revealed","GLOBAL",1)
                              !Global("ID9200_visited","GLOBAL",1)~ DO 0
ADD_TRANS_ACTION  DEMMRCH BEGIN 17 END BEGIN 0 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
EXTEND_TOP DEMMRCH 17
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @25711 GOTO 18
END
//BLOCKEND

//BLOCK DEVERARD
ADD_TRANS_TRIGGER DEVERARD 0  ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 2
ADD_TRANS_TRIGGER DEVERARD 3  ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 2
ADD_TRANS_TRIGGER DEVERARD 6  ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 2
ADD_TRANS_TRIGGER DEVERARD 14 ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 2
ADD_TRANS_TRIGGER DEVERARD 15 ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0
EXTEND_TOP DEVERARD 0 3
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40789 GOTO ev41
END
EXTEND_TOP DEVERARD 6
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40790 GOTO ev42
END
EXTEND_TOP DEVERARD 12
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40791 GOTO 13
END
EXTEND_TOP DEVERARD 14
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40792 GOTO 15
END
EXTEND_TOP DEVERARD 15
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @16065 DO ~SetGlobal("Jered_Stone","GLOBAL",3)
                                                          AddJournalEntry(@34233,QUEST)~ GOTO ev43
END
EXTEND_TOP DEVERARD 30
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40793 GOTO 31
END
EXTEND_BOTTOM DEVERARD 37
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40794 GOTO 38
END
EXTEND_BOTTOM DEVERARD 38
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40795 DO ~SetGlobal("Freed_Everard","GLOBAL",3)
                                                          SaveLocation("LOCALS","SavedLoc",[608.383])
                                                          StartCutSceneMode()
                                                          StartCutScene("eeEndCt3")~ EXIT
END
APPEND DEVERARD
  IF ~~ THEN BEGIN ev41
    SAY @40796
    IF ~~ THEN GOTO 4
  END
  
  IF ~~ THEN BEGIN ev42
    SAY @40797
    IF ~~ THEN REPLY @540 DO ~SetGlobal("Jered_Stone","GLOBAL",2)~ GOTO 9
    IF ~~ THEN REPLY @524 GOTO 0
    IF ~~ THEN REPLY @376 EXIT
  END
  
  IF ~~ THEN BEGIN ev43
    SAY @40798
    IF ~~ THEN REPLY @16069 GOTO 17
    IF ~~ THEN REPLY @524 GOTO 0
    IF ~~ THEN REPLY @376 EXIT
  END
END
//BLOCKEND

//BLOCK DHJOLLDE
ADD_TRANS_TRIGGER DHJOLLDE 6 ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0 3
EXTEND_TOP DHJOLLDE 2
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40801 GOTO 4
END
EXTEND_TOP DHJOLLDE 6
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40802 GOTO 7
END
EXTEND_BOTTOM DHJOLLDE 6
  IF ~Kit(LastTalkedToBy,OHTEMPUS)
      GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @40803 EXIT
END
//BLOCKEND

//BLOCK DILMADIA
ADD_TRANS_ACTION DILMADIA BEGIN 0 END BEGIN   END ~SetGlobal("MetIlmadia","GLOBAL",1)~
//BLOCKEND

//BLOCK DMIREK
ADD_TRANS_ACTION DMIREK   BEGIN 6 END BEGIN 1 END ~AddJournalEntry(@5069,QUEST)~
ADD_TRANS_ACTION DMIREK   BEGIN 9 END BEGIN 0 END ~EraseJournalEntry(@5069)~
//BLOCKEND

//BLOCK DKRESSEL
ADD_TRANS_TRIGGER DKRESSEL 22 ~!Kit(LastTalkedToBy,ASSASIN)~ DO 0
ADD_TRANS_TRIGGER DKRESSEL 24 ~!Kit(LastTalkedToBy,ASSASIN)~ DO 0
ADD_TRANS_TRIGGER DKRESSEL 26 ~!Kit(LastTalkedToBy,ASSASIN)~ DO 0
ADD_TRANS_TRIGGER DKRESSEL 27 ~Global("Kress_Quest_Gem","GLOBAL",0)~ DO 1
ADD_TRANS_TRIGGER DKRESSEL 41 ~Global("Kress_Quest_Gem","GLOBAL",0)~ DO 1
EXTEND_TOP DKRESSEL 22 #1
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40719 GOTO 23
END
EXTEND_BOTTOM DKRESSEL 22
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40720 GOTO kr42
END
EXTEND_TOP DKRESSEL 24 #1
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40728 GOTO 23
END
EXTEND_BOTTOM DKRESSEL 24
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40720 GOTO kr42
END
EXTEND_TOP DKRESSEL 26 #1
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40730 GOTO 23
END
EXTEND_BOTTOM DKRESSEL 26
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40720 GOTO kr42
END
EXTEND_TOP DKRESSEL 27 #2
  IF ~Kit(LastTalkedToBy,ASSASIN)
      Global("Kress_Quest_Gem","GLOBAL",0)~ THEN REPLY @40720 GOTO kr42
  IF ~RandomNum(4,1)
      Global("Kress_Quest_Gem","GLOBAL",1)~ THEN REPLY @40729 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                                                  GiveItemCreate("MISC33",LastTalkedToBy,0,0,0)~ GOTO 25
  IF ~RandomNum(4,2)
      Global("Kress_Quest_Gem","GLOBAL",1)~ THEN REPLY @40729 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                                                  GiveItemCreate("MISC34",LastTalkedToBy,0,0,0)~ GOTO 25
  IF ~RandomNum(4,3)
      Global("Kress_Quest_Gem","GLOBAL",1)~ THEN REPLY @40729 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                                                  GiveItemCreate("MISC35",LastTalkedToBy,0,0,0)~ GOTO 25
  IF ~RandomNum(4,4)
      Global("Kress_Quest_Gem","GLOBAL",1)~ THEN REPLY @40729 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                                                  GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)~ GOTO 25
END
EXTEND_TOP DKRESSEL 27 41 #1
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40730 EXIT
END
EXTEND_BOTTOM DKRESSEL 41
  IF ~Kit(LastTalkedToBy,ASSASIN)
      Global("Kress_Quest_Gem","GLOBAL",0)~ THEN REPLY @40720 GOTO kr42
  IF ~RandomNum(4,1)
      Global("Kress_Quest_Gem","GLOBAL",1)~ THEN REPLY @40731 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                                                  GiveItemCreate("MISC33",LastTalkedToBy,0,0,0)~ GOTO 25
  IF ~RandomNum(4,2)
      Global("Kress_Quest_Gem","GLOBAL",1)~ THEN REPLY @40731 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                                                  GiveItemCreate("MISC34",LastTalkedToBy,0,0,0)~ GOTO 25
  IF ~RandomNum(4,3)
      Global("Kress_Quest_Gem","GLOBAL",1)~ THEN REPLY @40731 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                                                  GiveItemCreate("MISC35",LastTalkedToBy,0,0,0)~ GOTO 25
  IF ~RandomNum(4,4)
      Global("Kress_Quest_Gem","GLOBAL",1)~ THEN REPLY @40731 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                                                  GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)~ GOTO 25
END

APPEND DKRESSEL
 IF ~~ THEN BEGIN kr42
   SAY @40721
   IF ~RandomNum(4,1)~ THEN REPLY @40722 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                             GiveItemCreate("MISC33",LastTalkedToBy,0,0,0)~ GOTO 25
   IF ~RandomNum(4,2)~ THEN REPLY @40722 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                             GiveItemCreate("MISC34",LastTalkedToBy,0,0,0)~ GOTO 25
   IF ~RandomNum(4,3)~ THEN REPLY @40722 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                             GiveItemCreate("MISC35",LastTalkedToBy,0,0,0)~ GOTO 25
   IF ~RandomNum(4,4)~ THEN REPLY @40722 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                             GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)~ GOTO 25
   IF ~~ THEN REPLY @40723 GOTO kr43
 END
 
 IF ~~ THEN BEGIN kr43
   SAY @40724
   IF ~RandomNum(4,1)~ THEN REPLY @40725 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                             GiveItemCreate("MISC33",LastTalkedToBy,0,0,0)~ GOTO 25
   IF ~RandomNum(4,2)~ THEN REPLY @40725 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                             GiveItemCreate("MISC34",LastTalkedToBy,0,0,0)~ GOTO 25
   IF ~RandomNum(4,3)~ THEN REPLY @40725 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                             GiveItemCreate("MISC35",LastTalkedToBy,0,0,0)~ GOTO 25
   IF ~RandomNum(4,4)~ THEN REPLY @40725 DO ~SetGlobal("Kress_Quest","GLOBAL",3)
                                             GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)~ GOTO 25
   IF ~~ THEN REPLY @40726 DO ~SetGlobal("Kress_Quest","GLOBAL",2)
                               SetGlobal("Kress_Quest_Gem","GLOBAL",1)~ EXIT
   IF ~~ THEN REPLY @40727 DO ~SetGlobal("Kress_Quest","GLOBAL",2)
                               SetGlobal("Kress_Quest_Gem","GLOBAL",1)~ EXIT
 END
END
//BLOCKEND

//BLOCK DKUTOWNG
ADD_TRANS_TRIGGER DKUTOWNG 18 ~GlobalLT("Aldwin_Eidan","GLOBAL",2)~ DO 0
ADD_TRANS_TRIGGER DKUTOWNG 19 ~GlobalLT("Aldwin_Eidan","GLOBAL",2)~ DO 0
EXTEND_TOP DKUTOWNG 18 19 #1
  IF ~Global("Aldwin_Eidan","GLOBAL",2)~ THEN REPLY @12648 GOTO tw64
END
APPEND DKUTOWNG
  IF ~~ THEN BEGIN tw64
    SAY @40331
    IF ~~ THEN REPLY @12637 GOTO 14
    IF ~~ THEN REPLY @12638 GOTO 0
    IF ~~ THEN REPLY @376 EXIT
  END
END
//BLOCKEND

//BLOCK DPLANAR
APPEND DPLANAR
  IF WEIGHT #-1 ~GlobalGT("Master_Quest","GLOBAL",0)
                 !Dead("LUREMASTER")~ THEN BEGIN u78
    SAY @40665
    IF ~~ THEN REPLY @40666 GOTO u79
    IF ~~ THEN REPLY @40667 GOTO u80
    IF ~~ THEN REPLY @40668 GOTO u81
    IF ~~ THEN REPLY @40669 GOTO u82
    IF ~~ THEN REPLY @40670 GOTO u83
    IF ~Global("Know_Vexing","GLOBAL",1)
        !Global("Know_Truename","GLOBAL",1)
        OR(2)
          PartyHasItem("vexed")
          PartyHasItem("vexed2")~ THEN REPLY @25298 DO ~SetGlobal("Know_Truename","GLOBAL",1)~ GOTO u84
    IF ~PartyHasItem("lxbowbm")~ THEN REPLY @40541 DO ~TransformItem("lxbowbm","cdxbowbm")~ GOTO u85
    IF ~~ THEN REPLY @25129 GOTO u87
  END
  
  IF ~~ THEN BEGIN u79 
    SAY @40671
    IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
  END
  
  IF ~~ THEN BEGIN u80 
    SAY @40672
    IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
  END
  
  IF ~~ THEN BEGIN u81 
    SAY @40673
    IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
  END
  
  IF ~~ THEN BEGIN u82 
    SAY @40674
    IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
  END
  
  IF ~~ THEN BEGIN u83 
    SAY @40675
    IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
  END
  
  IF ~~ THEN BEGIN u84
    SAY @40676
    IF ~~ THEN DO ~StartCutScene("cdvexcut")~ EXIT
  END
  
  IF ~~ THEN BEGIN u85
    SAY @40677
    IF ~~ THEN GOTO u86
  END
  
  IF ~~ THEN BEGIN u86
    SAY @40678
    IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
  END
  
  IF ~~ THEN BEGIN u87 
    SAY @40679
    IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
  END
END
//BLOCKEND

//BLOCK DRAWL
ADD_TRANS_TRIGGER DRAWL 1  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 2 
ADD_TRANS_TRIGGER DRAWL 2  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 0 
ADD_TRANS_TRIGGER DRAWL 4  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 0 
ADD_TRANS_TRIGGER DRAWL 8  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 1 
ADD_TRANS_TRIGGER DRAWL 9  ~!Global("ID9200_revealed","GLOBAL",1)      
                            !Global("ID9200_visited","GLOBAL",1)~ DO 0 
ADD_TRANS_TRIGGER DRAWL 11 ~!Global("ID9200_revealed","GLOBAL",1)
                            !Global("ID9200_visited","GLOBAL",1)~ DO 1
ADD_TRANS_ACTION  DRAWL BEGIN 1   END BEGIN 2 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DRAWL BEGIN 2   END BEGIN 0 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DRAWL BEGIN 4 9 END BEGIN 0 END ~RevealAreaOnMap("ID9200")
                                                   SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DRAWL BEGIN 8   END BEGIN 1 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DRAWL BEGIN 11  END BEGIN 1 END ~RevealAreaOnMap("ID9200")
                                                   SetGlobal("ID9200_revealed","GLOBAL",1)~
ALTER_TRANS DRAWL BEGIN 5 END BEGIN 0 END BEGIN "ACTION" ~~ END
EXTEND_TOP DRAWL 1 #2
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @21662 GOTO 3
END
EXTEND_TOP DRAWL 2
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @21662 GOTO 3
END
EXTEND_TOP DRAWL 4 9
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @21662 GOTO 5
END
EXTEND_TOP DRAWL 8 11 #1
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @21662 GOTO 3
END
//BLOCKEND

//BLOCK DROALD
ADD_TRANS_TRIGGER DROALD 0  ~!Global("ID9200_revealed","GLOBAL",1)       
                             !Global("ID9200_visited","GLOBAL",1)~ DO 1  
ADD_TRANS_TRIGGER DROALD 1  ~!Global("ID9200_revealed","GLOBAL",1)       
                             !Global("ID9200_visited","GLOBAL",1)~ DO 1  
ADD_TRANS_TRIGGER DROALD 2  ~!Global("ID9200_revealed","GLOBAL",1)       
                             !Global("ID9200_visited","GLOBAL",1)~ DO 0  
ADD_TRANS_TRIGGER DROALD 17 ~!Global("ID9200_revealed","GLOBAL",1)
                             !Global("ID9200_visited","GLOBAL",1)~ DO 1
ADD_TRANS_ACTION  DROALD BEGIN 0 1 17 END BEGIN 1 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
ADD_TRANS_ACTION  DROALD BEGIN 2      END BEGIN 0 END ~SetGlobal("ID9200_revealed","GLOBAL",1)~
EXTEND_TOP DROALD 0 1 17 #1
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @22909 GOTO 3
END
EXTEND_TOP DROALD 2
  IF ~OR(2)
        Global("ID9200_revealed","GLOBAL",1)
        Global("ID9200_visited","GLOBAL",1)~ THEN REPLY @22909 GOTO 3
END
//BLOCKEND

//BLOCK DTARNELM
ADD_TRANS_TRIGGER DTARNELM 4  ~!Global("MetIlmadia","GLOBAL",1)
                               !Dead("Ilmadia")~ DO 2   
ADD_TRANS_TRIGGER DTARNELM 16 ~!Global("MetIlmadia","GLOBAL",1)
                               !Dead("Ilmadia")~ DO 2
//BLOCKEND

//BLOCK DWYLF
ADD_TRANS_TRIGGER DWYLF 15 ~!Kit(LastTalkedToBy,OHTEMPUS)~ DO 0
ADD_TRANS_TRIGGER DWYLF 19 ~!Kit(LastTalkedToBy,ASSASIN)~ DO 0 1
ADD_TRANS_TRIGGER DWYLF 26 ~!Kit(LastTalkedToBy,BARBARIAN)~ DO 0
ADD_TRANS_TRIGGER DWYLF 40 ~!Kit(LastTalkedToBy,ASSASIN)~ DO 0
EXTEND_BOTTOM DWYLF 15
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @40804 GOTO 16
END
EXTEND_TOP DWYLF 19 #1
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40732 DO ~SetGlobal("Know_Assassin","GLOBAL",2)~ GOTO 20
END
EXTEND_BOTTOM DWYLF 19
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40733 DO ~SetGlobal("Know_Assassin","GLOBAL",2)
                                                         SetGlobal("Know_Plot","GLOBAL",1)
                                                         AddXP2DA("ID1EX9H")
                                                         DisplayStringNoNameDlg(Myself,@26703)~ GOTO 40
END
EXTEND_BOTTOM DWYLF 26 
  IF ~Kit(LastTalkedToBy,BARBARIAN)~ THEN REPLY @40809 GOTO 27
END
EXTEND_BOTTOM DWYLF 40
  IF ~Kit(LastTalkedToBy,ASSASIN)~ THEN REPLY @40732 GOTO 20
END
//BLOCKEND







































