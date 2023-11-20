program rainfall
implicit none
integer,parameter::Nmax=50
integer::i,k,st,N
character(20)::town(Nmax)
integer::rain(Nmax)

  open(10,file='data.txt')
  read(10,*)
  k=1
  do 
    read(10,*,iostat=st) town(k),rain(k)
    if (st/=0) exit
    k=k+1
  end do
  N=k-1
  do i=1,N
    print*,town(i),rain(i)
  end do
end program
