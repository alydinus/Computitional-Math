program Task3
<<<<<<< HEAD
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
=======
    implicit none
    real(kind=8):: z, x
    integer:: iterations
    z = 1.0
    iterations = 0
    do while (2*z > z)
        x = z
        z = z/2.0
        iterations = iterations + 1
    end do
    write(*,*) "Machine epsilon for float64:", x
    write(*,*) "Number of iterations:", iterations  
    end program Task3    
>>>>>>> 475ce48a6c49a4297c95c688e0887fe7418c7a4c
