program MachineEpsilon
    implicit none
<<<<<<< HEAD
    integer, parameter :: hp = selected_real_kind(3, 15)
    real(kind=hp) :: epsilon
    integer :: iterations
    iterations = 0
    epsilon = 1.0_hp
    do while (1.0_hp + epsilon > 1.0_hp)
        epsilon = epsilon / 2.0_hp
        iterations = iterations + 1
    end do
    write(*,*) "Machine epsilon for float16:", epsilon
    write(*,*) "Number of iterations:", iterations

=======
    real :: epsilon
    integer:: iterations
    epsilon = 1.0
    iterations = 0
    do while (1.0 + epsilon /= 1.0)
        epsilon = epsilon / 10.0
        iterations = iterations + 1
    end do
    print *, "The machine epsilon is: ", epsilon
    print *, "The number of iterations is: ", iterations
>>>>>>> 475ce48a6c49a4297c95c688e0887fe7418c7a4c
end program MachineEpsilon