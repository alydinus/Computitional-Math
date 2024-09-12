program Task5
implicit none
real(8) :: epsilon
integer :: k
epsilon = 5.96046448e-8
k = int(log(epsilon)/log(2.0))
write(*,*) "k is equal to:", k

end program Task5