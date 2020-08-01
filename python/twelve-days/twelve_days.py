def recite(start_verse, end_verse):
    ordinal_lyrics = {
        1: ["first", "a Partridge in a Pear Tree"],
        2: ["second", "two Turtle Doves"],
        3: ["third", "three French Hens"],
        4: ["fourth", "four Calling Birds"],
        5: ["fifth", "five Gold Rings"],
        6: ["sixth", "six Geese-a-Laying"],
        7: ["seventh", "seven Swans-a-Swimming"],
        8: ["eighth", "eight Maids-a-Milking"],
        9: ["ninth", "nine Ladies Dancing"],
        10: ["tenth", "ten Lords-a-Leaping"],
        11: ["eleventh", "eleven Pipers Piping"],
        12: ["twelfth", "twelve Drummers Drumming"]
    }
    ans = []
    for i in range(start_verse, end_verse+1):
        lyrics = ' , and '.join([ ordinal_lyrics[i][1] for i in range(i,start_verse-1,-1) ])
        ans.append("On the {} day of Christmas my true love gave to me: {}.".format(ordinal_lyrics[i][0],lyrics ))
    return ans
