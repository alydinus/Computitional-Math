program Task2
    implicit none
    integer, parameter :: dp = selected_real_kind(15, 307)
    real(kind=dp) :: e
    integer:: iterations
    iterations = 0
    e = 1.0_dp
    do while (1.0_dp + e > 1.0_dp)
        e = e / 2.0_dp
        iterations = iterations + 1
    end do
    write(*,*) "Number of iterations:", iterations
    write(*,*) "Machine epsilon for float64:", e

end program Task2
