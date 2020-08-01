class Matrix:
    def __init__(self, matrix_string):
        self.matrix_string = [list(map(int,i.split())) for i in matrix_string.split("\n")]

    def row(self, index):
        #return list(map(int,list((self.matrix_string).split("\n")[index-1])))
        return self.matrix_string[index-1]

    def column(self, index):
        return [i[index-1] for i in self.matrix_string]
