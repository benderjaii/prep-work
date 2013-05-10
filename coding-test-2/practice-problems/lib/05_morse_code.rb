def morse_code( letter )
  codes = {
    a: '.-',
    b: '-...',
    c: '-.-.',
    d: '-..',
    e: '.',
    f: '..-.',
    g: '--.',
    h: '....',
    i: '..',
    j: '.---',
    k: '-.-',
    l: '.-..',
    m: '--',
    n: '-.',
    o: '---',
    p: '.--.',
    q: '--.-',
    r: '.-.',
    s: '...',
    t: '-',
    u: '..-',
    v: '...-',
    w: '.--',
    x: '-..-',
    y: '-.--',
    z: '--..'
  }
  codes[letter.downcase.to_sym]
end

def morse_encode(str)
  words = str.split(" ")
  words.map! { |word| morse_encode_word(word) }
  words.join("  ")
end

def morse_encode_word(word)
  letters = word.split("")
  letters.map! { |letter| morse_code(letter) }
  letters.join(" ")
end
