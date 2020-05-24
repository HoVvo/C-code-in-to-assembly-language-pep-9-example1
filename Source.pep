 BR main
w: .EQUATE 2               ;formal parameter
Weight: .EQUATE 0          

void_c:LDWA w,s
      BRLE else            ;if(w<=0) go to label else
      CPWA 1,i             ;if (0<w and w<=1)
      BRGT elseif          ;otherwise goto label elseif
      STRO Out1,D          ;then print message Out1
      RET                  ;return to main program

elseif: LDWA w,S     
        CPWA 3,i           ;else if (1 < w and w <= 3)
        BRGT elseif1       ;otherwise goto label elseif1
        STRO Out2,D        ;then print message Out2
        RET                ;return to main program

elseif1:LDWA w,s       
        CPWA 10,i           ;else if (3 < Weight and Weight <= 10)
        BRGT elseif2        ;otherwise goto label elseif2
        STRO Out3,D         ;then print message Out3
        RET                 ;return to main program

elseif2:LDWA w,s            
        CPWA 20,i          ;else if (10 < Weight && Weight <= 20) 
        BRGT else          ;otherwise goto label else 
        STRO Out4,D        ;then print message Out4
        RET                ;return to main program

else:   STRO Out5,D        ;then print message Out5
        RET                ;return to main program 

main: STRO InputMsg,D          ;printf message for input number
      DECI Weight,s            ;scanf(Weight)
      DECO Weight,s
      ldwa Weight,S            ;move num
      STWA -4,s   
      SUBSP 4,i                ;push parameter  
      CALL void_c              ;c(Weight)
      ADDSP 4,i                ;reset stack pointer  
      STOP
InputMsg:  .ASCII "Please enter the weight of the package:  \x00" 
Out1: .ASCII "\nThe shipping cost is $3.5 \x00"
Out2: .ASCII "\nThe shipping cost is $5.5 \x00"
Out3: .ASCII "\nThe shipping cost is $8.5 \x00"
Out4: .ASCII "\nThe shipping cost is $10.5 \x00"
Out5: .ASCII "\nThe package cannot be shipped. \x00"
.END
      