program rainfall
implicit none
integer::i
character(20)::town(5)
integer::rain(5)

  open(10,file='data.txt')
  read(10,*)
  
  do i=1,5
    read(10,*) town(i),rain(i)
  end do

  do i=1,5
    print*,town(i),rain(i)
  end do
end program
