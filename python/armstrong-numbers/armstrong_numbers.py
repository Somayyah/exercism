def is_armstrong_number(number):
    try: 
        number_of_digits=len(str(number))
        digits = str(number)
        return sum(int(i) ** number_of_digits for i in digits) == number
    except Exception as e:
        raise Exception("Something bad is happening!!")
    pass
