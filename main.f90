program main
implicit none
  real(8) :: R(3,3), A(3), B(3)
  ! R is rotation matrix, A is given vector and on input and rotated vector
  real(8) :: alfa ! angle with x-asis
  real(8) :: beta ! angle with y-axis
  real(8) :: gama ! angle with z-axis
  integer(2) :: i, j ! index variable
  real(8), parameter :: pi=3.141592653589793238460d0

  open(1, file='vector.dat', action='read', status='old')
  open(2, file='angle.dat', action='read', status='old')
  
  read(1,*) (A(i), i = 1, 3) ! read vector from file
  close(1)
  read(2,*) alfa, beta, gama ! read angles from file
  close(2)
  alfa = alfa*pi/180.0d0
  beta = beta*pi/180.0d0
  gama = gama*pi/180.0d0
  call rotate(R, A, B, alfa, beta, gama)
  write(*,100) (B(i), i = 1, 3)
  100 format(3f15.8)

end program main



