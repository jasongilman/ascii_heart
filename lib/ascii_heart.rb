require "ascii_heart/version"

module AsciiHeart
 include Math

  def heart(width, height)
    px = width * 0.5
    py = height * 0.37
    r = width * 0.625

    y_nums = (1..width).map {|m| m }.reverse
    matrix = y_nums.map do |y|
      (1..height).map do |x|
        if y > height * 0.7
          sqrt( (px - x) ** 2 + (py - y) ** 2 ) < r
        else
          x < 1.7 * y
        end
      end
    end
    matrix[0][0] = false
    matrix[1][0] = false

    new_matrix = matrix.map do |row|
      row = row.dup.reverse + row.dup
      row = row.map {|b| b ? "@" : " " }
      row[0] = " "
      row[row.size-1] = " "
      row << "\n" 
      row.join
    end.join
  end

end
