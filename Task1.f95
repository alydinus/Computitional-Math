program MachineEpsilon
    implicit none
    real :: epsilon
    integer:: iterations
    epsilon = 1.0
    iterations = 0
    do while (1.0 + epsilon /= 1.0)
        epsilon = epsilon / 2.0
        iterations = iterations + 1
    end do
    print *, "The machine epsilon is: ", epsilon
    print *, "The number of iterations is: ", iterations
end program MachineEpsilon