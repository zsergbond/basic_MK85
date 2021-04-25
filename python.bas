5  A(0)=5:A(1)=3:A(2)=4:A(3)=3:A(4)=3:A(5)=3
10 X=5: Y=3: L=3
20 S=0: N="L"
30 R=1

100 GOSUB 500
110 GOSUB 300 

300 $=KEY
310 IF $=CHR 54; N="R":RETURN       //ЕСЛИ НАЖАТА "6"
320 IF $=CHR 52; N="L":RETURN       //ЕСЛИ НАЖАТА "4"
330 IF $=CHR 56; N="U":RETURN       //ЕСЛИ НАЖАТА "8"
340 IF $=CHR 50; N="D":RETURN       //ЕСЛИ НАЖАТА "2"
350 IF $=CHR 83; S=1:RETURN         //ЕСЛИ НАЖАТА "S"
360 RETURN

500 FOR I=0 TO L STEP 2
510 DRAW A(I),A(I+1)
520 NEXT I
530 RETURN

1000 FOR I = L*2-1 TO 3 STEP -2
1010 A(I-1) = A(I-3)
1020 A(I) = A(I-2)
1030 NEXT I
1040 A(0) = X
1050 A(1) = Y
