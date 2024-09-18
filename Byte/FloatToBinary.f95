program GPTgeneratedFloatToBinary
character(len=16):: BinaryString,Mantissa
real,dimension(32):: IntegralParts
real:: float,integralPart
integer:: i,wholePart
float = 0.999755859375
i = 1
wholePart = int(float)
integralPart = float - wholePart
BinaryString = ''
Mantissa = ''
if(wholePart == 0) then
    BinaryString = '0'
end if
do while(wholePart /= 0)
    if (mod(wholePart,2) == 0) then
        wholePart = wholePart/2
        BinaryString = '0'//BinaryString
    else
        wholePart = (wholePart-1)/2
        BinaryString = '1'//BinaryString    
    end if
end do
BinaryString = trim(BinaryString)//trim('.')
do while(integralPart /= 0 )
    if (any(IntegralParts.eq.integralPart)) then 
        exit
    end if    
    IntegralParts(i) = integralPart
    integralPart = integralPart * 2
    if(integralPart >= 1) then
        Mantissa = trim(Mantissa)//trim('1')
        integralPart = integralPart - 1
    else if(integralPart < 1) then
        Mantissa = trim(Mantissa)//trim('0')
    end if
    i = i + 1
end do
print *, trim(BinaryString)//trim(Mantissa)    
end program GPTgeneratedFloatToBinary