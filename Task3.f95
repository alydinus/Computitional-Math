program Task3
implicit none
integer, parameter :: dp = selected_real_kind(15, 307)
real(kind=dp):: z
integer:: iterations
z = 1.0_dp
iterations = 0
do while (2*z>z)
    z = z/2
    iterations = iterations + 1
end do
write(*,*) "Machine epsilon for float64:", z
write(*,*) "Number of iterations:", iterations  
end program Task3    