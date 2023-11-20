program rainfall
implicit none
integer,parameter::Nmax=50
integer::i,N
character(20)::town(Nmax)
integer::rain(Nmax)

  call readfile(town,rain,Nmax,N)
  do i=1,N
    print*,town(i),rain(i)
  end do
contains

  subroutine readfile(T,R,Nmax,N)
  integer,intent(in)::Nmax
  character(20),intent(out)::T(Nmax)
  integer,intent(out)::R(Nmax)
  integer,intent(out)::N
  integer::k,st
    open(10,file='data.txt')
    read(10,*)
    k=1
    do 
      read(10,*,iostat=st) T(k),R(k)
      if (st/=0) exit
      k=k+1
    end do  
    close(10)
    N=k-1
  end subroutine
end program
