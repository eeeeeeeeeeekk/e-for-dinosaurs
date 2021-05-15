program main
    ! inits
    implicit none
    integer :: iterations
    integer :: sum_total = 0
    integer :: counter = 0
    real :: rand, e = 0

    real :: temp = 0
    integer :: inner_counter

    ! print no new line
    write(*,"(A)",advance="no") "Number of iterations: "
    read *, iterations
    
    ! main iteration loop
    do while (counter < iterations)
        temp = 0
        inner_counter = 0
        ! inner loop
        do while (temp < 1)
            call random_number(rand)
            temp = rand + temp
            inner_counter = inner_counter + 1
        end do

        sum_total = sum_total + inner_counter
        counter = counter + 1
    end do

    ! approximates e
    e = real(sum_total) / real(iterations)
    ! print e
    print *, "e = ", e
end program main