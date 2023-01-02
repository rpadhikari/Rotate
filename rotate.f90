subroutine rotate(R, a, b, alfa, beta, gama)
implicit none
  real(8) :: R(3,3), A(3), B(3)
  ! R is rotation matrix, A is given vector and on input and rotated vector
  real(8) :: alfa ! angle with x-asis
  real(8) :: beta ! angle with y-axis
  real(8) :: gama ! angle with z-axis
  integer(2) :: i, j ! index variable

  R(1,1)=cos(beta)*cos(gama)
  R(1,2)=sin(alfa)*sin(beta)*cos(gama)-cos(alfa)*sin(gama)
  R(1,3)=cos(alfa)*sin(beta)*cos(gama)+sin(alfa)*sin(gama)
  R(2,1)=cos(beta)*sin(gama)
  R(2,2)=sin(alfa)*sin(beta)*sin(gama)+cos(alfa)*cos(gama)
  R(2,3)=cos(alfa)*sin(beta)*sin(gama)-sin(alfa)*cos(gama)
  R(3,1)=-sin(beta)
  R(3,2)=sin(alfa)*cos(beta)
  R(3,3)=cos(alfa)*cos(beta)
  
  do i = 1, 3 
    B(i) = 0.0d0
    do j = 1, 3
      B(j) = B(j) + R(j,i) * A(j)
    enddo
  enddo

!https://www.physicsforums.com/threads/matrix-times-vector-in-fortran.921314/

end subroutine rotate
 
  
