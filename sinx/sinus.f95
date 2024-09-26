program gptGeneratedSolution
implicit none
real(8)::a,b, pie, S1,S2, randomNumber,S3
integer::i,M
i = 1
S3 = 0.0
S1 = 0.0
S2 = 0.0
M = 1000
pie = 4*datan(1.0d0)
a = pie
b = 3*pie/2
do while(i<M)
    randomNumber= (b-a)*rand() + a
    S3 = sin(randomNumber) + S3
    i = i + 1
end do    
print*,S3/M*(b-a)
print*,pie
end program gptGeneratedSolution    