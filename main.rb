def caeser_cipher(s, shift)
  ans = []
  s.split('').map do |ch|
    if ('A'..'Z').include?(ch)
      x = ((ch.ord + shift - 'A'.ord) % 26) + 'A'.ord
    elsif ('a'..'z').include?(ch)
      x = ((ch.ord + shift - 'a'.ord) % 26) + 'a'.ord
    else
      x = ch.ord
    end
    ans.push(x.chr)
  end
  ans.join('')
end

puts caeser_cipher('AbcdE!', 1)
puts caeser_cipher('Zabc', 5)
