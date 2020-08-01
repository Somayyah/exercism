def is_pangram(sentence):
    alphabet="abcdefghijklmnopqrstuvwxyz"
    return 0 not in [c in sentence.lower() for c in alphabet]
    pass
