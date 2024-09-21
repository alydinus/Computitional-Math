program GPTgeneratedFloatToBinaryUsingArray
implicit none
real:: float,integralPart
integer:: index,wholePart,indexToFillArray,indexForOutput
character(32)::BinaryString
real,dimension(32)::integralParts
integer,dimension(32):: binaryArrayForWholeNumber,binaryArrayForFloatNumber
float = 1.45
wholePart = int(float)
integralPart = float - wholePart
do indexToFillArray = 1,32
    binaryArrayForWholeNumber(indexToFillArray) = -1
    binaryArrayForFloatNumber(indexToFillArray) = -1
end do    
 
index = 32
do while(wholePart /= 0)
    if (mod(wholePart,2)==0) then
        wholePart = wholePart/2
        binaryArrayForWholeNumber(index) = 0
    else
        wholePart = (wholePart-1)/2
        binaryArrayForWholeNumber(index) = 1
    end if        
    index = index - 1
end do    
index = 1
do while(integralPart /= 0)
    if(any(integralParts.eq.integralPart)) then
        exit
    end if
    integralParts(index) = integralPart
    
    integralPart = integralPart * 2
    if (integralPart >= 1) then
        integralPart = integralPart - 1
        binaryArrayForFloatNumber(index) = 1
    else
        binaryArrayForFloatNumber(index) = 0
    end if
    index = index + 1          
end do  
BinaryString = ''
if (wholePart == 0) then
    BinaryString = '0'
end if    
indexForOutput = 32
do while(binaryArrayForWholeNumber(indexForOutput) /= -1)
    if (binaryArrayForWholeNumber(indexForOutput) == 0) then
        BinaryString = trim('0')//trim(BinaryString)
    else
        BinaryString= trim('1')//trim(BinaryString) 
    end if
    indexForOutput = indexForOutput - 1       
end do    
BinaryString = trim(BinaryString) // trim('.') 
indexForOutput = 1
do while(binaryArrayForFloatNumber(indexForOutput) /= -1)
    if (binaryArrayForFloatNumber(indexForOutput) == 0) then
        BinaryString = trim(BinaryString)//trim('0')
    else
        BinaryString = trim(BinaryString)//trim('1')
    end if
    indexForOutput = indexForOutput + 1
end do            
print*,trim(BinaryString)
! print*,binaryArrayForWholeNumber
! print*,binaryArrayForFloatNumber

end program GPTgeneratedFloatToBinaryUsingArray