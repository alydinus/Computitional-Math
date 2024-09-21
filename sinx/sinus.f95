program gptGeneratedSolution
implicit none
real(8)::a,b, pie, S1,S2, randomNumber
integer::i,M
i = 1
S1 = 0.0
S2 = 0.0
M = 100000
pie = 4*datan(1.0d0)
a = pie
b = 3*pie/2
do while(i<M)
    randomNumber= (b-a)*rand() + a
    S1 = sin(randomNumber) + S1
    S2 = sin(randomNumber)*randomNumber + S2
    ! print*, S/i
    i = i + 1
end do    
print*,S1/M
print*,S2/M
print*,pie
end program gptGeneratedSolution    