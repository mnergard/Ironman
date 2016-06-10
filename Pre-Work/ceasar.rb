def solve_cipher(input)
  input.chars.map do |x|
    var = x.ord - 3
    while var > 'z'.ord
      var = 'a'.ord
    end
    if var < 'a'.ord
      var = 'z'.ord - ('a'.ord - var) + 1
    end
    var.chr
  end.join.capitalize.gsub(/[7]/, ' ')
end

puts solve_cipher("pb uhdo qdph lv grqdog gxfn")