// syntax errors
REPLACE_ACTION_TEXT  ~drikasha~ ~,"?GLOBAL"?,~ ~,"GLOBAL",~
REPLACE_TRIGGER_TEXT ~drikasha~ ~,"?GLOBAL"?,~ ~,"GLOBAL",~

// harpy matriarch unused state, hostility
ALTER_TRANS DHARPY BEGIN 0 END BEGIN 2 END BEGIN EPILOGUE ~GOTO 2~ "REPLY" ~#10717~ END // route to unused state
ALTER_TRANS DHARPY BEGIN 7 END BEGIN 2 END BEGIN EPILOGUE ~GOTO 1~ END // route to hostile state