FC=gfortran -c
LD=gfortran
SRC=rotate.f90 main.f90
OBJ=rotate.o main.o
rotate:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o rotate.x
	rm -rf *.o

clean:
	rm -rf *.o *.x

