def convert(number):
    factor = [[3,"Pling"],[5,"Plang"],[7,"Plong"]]
    result = str()

    try:
        for i in factor:
            if number % i[0] == 0:
                result += i[1]

        if not result:
            result += str(number)

        return result

    except Exception as e:
        raise Exception("Meaningful message indicating the source of the error")
        pass
