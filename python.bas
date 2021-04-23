10 X=5: Y=3: L=3
20 S=0: N="L"
30 R=1
40 
300 $=KEY
310 IF $=CHR 54; N="R":RETURN       //ЕСЛИ НАЖАТА "6"
320 IF $=CHR 52; N="L":RETURN       //ЕСЛИ НАЖАТА "4"
330 IF $=CHR 56; N="U":RETURN       //ЕСЛИ НАЖАТА "8"
340 IF $=CHR 50; N="D":RETURN       //ЕСЛИ НАЖАТА "2"
350 IF $=CHR 83; S=1:RETURN         //ЕСЛИ НАЖАТА "S"
360 RETURN
500 DRAW X,Y
510 DRAW X-1,Y
520 DRAW X-2,Y
