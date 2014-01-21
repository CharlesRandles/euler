#Python code to generate all anagrams of a word
def anagrams(word):
    if len(word)==1:
        return [word]
    result=[]
    for i in range(len(word)):
        letter=word[i]
        rest=word[0:i] + word[i+1:]
        for tail in anagrams(rest):
            result.append(letter + tail)
    return result

def all_digit_perms():
    digits = "0123456789"
    perms = anagrams(digits)
    perms.sort()
    return perms

print all_digit_perms()[999999]

    
