program Task3
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