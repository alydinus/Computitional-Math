program Task6
    implicit none
    real(8) :: i
    integer :: iterations
    i = 1.0
    iterations = 0
    do while (2*i > i)
        i = 10*i
        iterations = iterations + 1
    end do
    write(*,*) "Machine epsilon for float64:", i
    write(*,*) "Number of iterations:", iterations
end program Task6       