5  A(0)=5:A(1)=3:A(2)=4:A(3)=3:A(4)=3:A(5)=3
10 X=5: Y=3: L=3
20 S=-1: N=2   // N - НАПРАВЛЕНИЕ ДВИЖЕНИЯ 1 - ВВЕРХ, 2 - ВПРАВО, 3 - ВНИЗ, 4 - ВЛЕВО
30 R=1

100 GOSUB 490  // ВЫЗОВ ПОДПРОГРАММЫ ПРОРИСОВКИ ЭКРАНА
110 GOSUB 300  // ВЫЗОВ ПОДПРОГРАММЫ ПРОВЕРКИ НАЖАТИЯ КЛАВИШ 
120 GOSUB 700  // ВЫЗОВ ПОДПРОГРАММЫ ИЗМЕНЕНИЯ КООРДИНАТ ГОЛОВЫ ЗМЕЙКИ
130 GOSUB 1000 // ВЫЗОВ ПОДПРОГРАММЫ ОБНОВЛЕНИЯ МАССИВА КООРДИНАТ ЗМЕЙКИ
140 GOTO 100

300 $=KEY
310 IF $=CHR 54; N=2:RETURN       //ЕСЛИ НАЖАТА "6"
320 IF $=CHR 52; N=4:RETURN       //ЕСЛИ НАЖАТА "4"
330 IF $=CHR 56; N=1:RETURN       //ЕСЛИ НАЖАТА "8"
340 IF $=CHR 50; N=3:RETURN       //ЕСЛИ НАЖАТА "2"
350 IF $=CHR 83; S=S*(-1):RETURN    //ЕСЛИ НАЖАТА "S"
360 RETURN

490 CSR ,: PRINT " "
500 FOR I=0 TO L*2-1 STEP 2
510 DRAW A(I),A(I+1)
520 NEXT I
530 RETURN


700 IF S=(-1); RETURN
710 IF N=2; X=X+1
715     IF X>59; X=0 : RETURN
717 RETURN
720 IF N=4; X=X-1
725     IF X<0; X=59 : RETURN
727 RETURN
730 IF N=1; Y=Y+1
735     IF Y>6; Y=0 : RETURN
737 RETURN
740 IF N=3; Y=Y-1
745     IF Y<0; Y=6 : RETURN
747 RETURN

1000 FOR I = L*2-1 TO 3 STEP -2
1010 A(I-1) = A(I-3)
1020 A(I) = A(I-2)
1030 NEXT I
1040 A(0) = X
1050 A(1) = Y
1060 RETURN
