BEGIN ~F_WULFGJ~

IF ~HappinessLT(Myself,0)~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN DO ~ActionOverride("F_DRIZZT",LeaveParty())
ActionOverride("F_DRIZZT",EscapeArea())
ActionOverride("F_BRUENOR",LeaveParty())
ActionOverride("F_BRUENOR",EscapeArea())
ActionOverride("F_CATTIBR",LeaveParty())
ActionOverride("F_CATTIBR",EscapeArea())
ActionOverride("F_REGIS2",LeaveParty())
ActionOverride("F_REGIS2",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF ~True()~ THEN BEGIN 1 // from:
  SAY @2 
  IF ~~ THEN DO ~ActionOverride("F_DRIZZT",LeaveParty())
ActionOverride("F_DRIZZT",EscapeArea())
ActionOverride("F_BRUENOR",LeaveParty())
ActionOverride("F_BRUENOR",EscapeArea())
ActionOverride("F_CATTIBR",LeaveParty())
ActionOverride("F_CATTIBR",EscapeArea())
ActionOverride("F_REGIS2",LeaveParty())
ActionOverride("F_REGIS2",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END
