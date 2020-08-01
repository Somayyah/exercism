def is_isogram(string):
    my_st = string.translate(str.maketrans('','','- ')).lower()
    return all(my_st.count(i) == 1 for i in my_st)
