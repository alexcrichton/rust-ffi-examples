module wrapper

    implicit none
    private
    public double_input

contains

    function double_input(input)
        implicit none
        integer :: input, double_input

        double_input = 2*input
    end function

end module wrapper
