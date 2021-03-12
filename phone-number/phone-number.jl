function clean(phone_number)
    # start by stripping out all non numbers
    numbers = [i for i in phone_number if isnumeric(i)]

    if (size(numbers)[1] == 10) && (parse(Int,numbers[1]) > 1 ) && (parse(Int,numbers[4]) > 1)
        return join(numbers)
    elseif (size(numbers)[1] == 11) && (parse(Int, numbers[1]) == 1) && (parse(Int,numbers[2:end][1]) >= 2) && (parse(Int,numbers[2:end][4]) >=2)
        return join(numbers[2:end])
    end
end