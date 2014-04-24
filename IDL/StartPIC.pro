FUNCTION getdata, snapshot, wkdir=wkdir,_EXTRA=extra
COMMON background,wkdir_global
on_error, 2
IF NOT KEYWORD_SET(wkdir) THEN wkdir=wkdir_global

IF N_PARAMS() EQ 0 THEN BEGIN
    print, "Usage: result = getdata(snapnumber [,wkdir=<dir>, /empty | /rho, /temp, /vx ...])"
    RETURN, "Usage: result = getdata(snapnumber [,wkdir=<dir>, /empty | /rho, /temp, /vx ...])"
ENDIF
file = wkdir + string(snapshot,format='("/",I04,".cfd")')

RETURN, LoadCFDFile(file,_EXTRA=extra)

END
