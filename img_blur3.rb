class Image
  attr_accessor :image, :ones

  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |row|
      row.each do |pixel|
        print "#{pixel} | "
      end 
      puts " "
    end
  end

  def output_ones
    get_ones
    @ones.each do |row|
      row.each do |pixel|
        print "#{pixel}, "
      end 
      puts " "
    end
  end

  def transform(longitude)
    get_ones
    
    @ones.each do |a, b|
      distance = longitude.dup
      while b+distance > b
        @image[a][b+distance] = 1 if b+distance < @image[0].length
        @image[a-distance][b] = 1 if a-distance >= 0
        @image[a][b-distance] = 1 if b-distance >= 0
        @image[a+distance][b] = 1 if a+distance < @image.length
        distance -= 1
      end

      temp = 0
      temp2 = longitude.dup
      temp3 = longitude.dup
      puts longitude
      while temp < longitude
        while temp2 >= 0
          @image[a+temp][b+temp2] = 1 if a+temp < @image.length && b+temp2 < @image[0].length
          @image[a+temp][b-temp2] = 1 if a+temp < @image.length &&  b-temp2 >= 0
          @image[a-temp][b+temp2] = 1 if a-temp >= 0 && b+temp2 < @image[0].length
          @image[a-temp][b-temp2] = 1 if a-temp >= 0 && b-temp2>= 0
          temp2 -= 1
        end
        temp += 1
        temp2 = temp3-1
        temp3 -= 1
      end
    end

  end

  def get_ones
    @ones = []
    @image.each_with_index do |row, index1|
      row.each_with_index do |pixel, index2|
        @ones << [index1, index2] if pixel == 1
      end
    end
  end

end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0, 0, 0]
])
image.output_image
puts " "
image.output_ones
puts " "
image.transform(1)
image.output_image
