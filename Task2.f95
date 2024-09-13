program Task2
    implicit none
    real(kind=8) :: e
    integer:: iterations
    iterations = 0
    e = 1.0
    do while (1.0 + e > 1.0)
        e = e / 2.0
        iterations = iterations + 1
    end do
    write(*,*) "Number of iterations:", iterations
    write(*,*) "Machine epsilon for float64:", e
end program Task2
