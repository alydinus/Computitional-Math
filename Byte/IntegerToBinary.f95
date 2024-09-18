program GPTgeneratedIntegerToBinary
implicit none
integer:: GPTgeneratedInteger
character(len=10):: GPTgeneratedString
GPTgeneratedString = ''
GPTgeneratedInteger = 10
do while(GPTgeneratedInteger /= 0)
    if (mod(GPTgeneratedInteger,2) == 0) then
        GPTgeneratedInteger = GPTgeneratedInteger/2
        GPTgeneratedString = '0'//GPTgeneratedString
    else
        GPTgeneratedInteger = (GPTgeneratedInteger-1)/2
        GPTgeneratedString = '1'//GPTgeneratedString    
    end if
end do
write(*,*)GPTgeneratedString        



end program GPTgeneratedIntegerToBinary