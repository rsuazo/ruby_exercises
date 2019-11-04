
def code_set(code)
  if code < 97
    return 65
  else return 97
  end

end

def mod(n, m)
  return (n % m + m) % m
end

def shift_char(char, shift)
  code = char.ord

  if (code >= 65 && code <= 90) || (code >= 97 && code <= 122)
      return (mod(code + shift - code_set(code), 26) + code_set(code)).chr
  end
  return char  
end


def caesar_cipher(string, shift)
  return string.split("").map{|char| shift_char(char, shift)}.join("")
end


puts caesar_cipher("What a string!", 5)