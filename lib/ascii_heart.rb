require "ascii_heart/version"

# Defines a method that creates an ASCII art heart.
module AsciiHeart
 include Math

  RED = "\033[31m"
  HEART = RED + "\u2665"

  # Returns a string that will look like an heart
  def heart(size)
    return HEART if size < 3
    px = size * 0.5
    py = size * 0.37
    r = size * 0.625

    y_nums = (1..size).map {|m| m }.reverse
    matrix = y_nums.map do |y|
      (1..size).map do |x|
        if y > size * 0.7
          sqrt( (px - x) ** 2 + (py - y) ** 2 ) < r
        else
          x < 1.7 * y
        end
      end
    end
    matrix[0][0] = false
    matrix[1][0] = false if matrix.size > 1

    RED + matrix.map do |row|
      row = row.dup.reverse + row.dup
      row = row.map {|b| b ? "@" : " " }
      row[0] = " "
      row[row.size-1] = " "
      row << "\n" 
      row.join
    end.join
  end

end
