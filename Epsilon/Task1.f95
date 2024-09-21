program MachineEpsilon
    implicit none
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

end program MachineEpsilon