BEGIN ~DWKNGHT~

IF ~Global("Spirits_Freed","GLOBAL",0)~ THEN BEGIN 0
  SAY @27541
  IF ~~ THEN DO ~SetGlobal("Spirits_Freed","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("csGBrdEx")~ EXIT
END

IF ~Global("Spirits_Freed","GLOBAL",1)~ THEN BEGIN 1
  SAY @27542
  IF ~~ THEN DO ~SetGlobal("Spirits_Freed","GLOBAL",2)
                 StartCutSceneMode()
                 StartCutScene("csGBrdEx")~ EXIT
END

IF ~Global("Spirits_Freed","GLOBAL",2)~ THEN BEGIN 2
  SAY @27543
  IF ~~ THEN DO ~SetGlobal("Spirits_Freed","GLOBAL",3)
                 StartCutSceneMode()
                 StartCutScene("csGBrdEx")~ EXIT
END

IF ~Global("Spirits_Freed","GLOBAL",3)~ THEN BEGIN 3
  SAY @27544
  IF ~~ THEN DO ~SetGlobal("Spirits_Freed","GLOBAL",4)
                 SetGlobal("Master_Quest","GLOBAL",3)
                 AddXP2DA("ID1EX12H")
                 StartCutSceneMode()
                 StartCutScene("csGBrdEx")~ EXIT
END
