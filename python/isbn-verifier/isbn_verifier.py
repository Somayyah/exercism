
def is_valid(isbn):
    isbn_str = isbn.replace("-","")
    length_str = len(isbn_str)
    if not isbn_str[:9].isnumeric() or isbn_str[-1] not in "X0123456789" or length_str != 10:
        return False
    return 0 == sum([int(isbn_str[i])*(length_str-i) if isbn_str[i] != "X" and i != length_str else 10 for i in range(length_str)]) % 11

