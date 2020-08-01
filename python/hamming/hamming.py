def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("Error: length mismatch") 
        exit(1)
    if strand_a == strand_b:
        return 0
    strand_length = len(strand_b)
    return sum([1 for i in range(strand_length) if strand_a[i] != strand_b[i]])

