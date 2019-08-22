class Image 

  attr_accessor :image

  def initialize(picture)
    @image = picture
  end

  def output_image
    @image.each do |rows|
      rows.each do |pixel|
        print pixel
      end
      puts ""
    end
  end

  def transform
    # @image = [[0, 0, 0, 0],
    #       [0, 1, 0, 0],
    #       [0, 0, 0, 1],
    #       [0, 0, 0, 0]]
    ones = []
    @image.each_with_index do |row, index|
      row.each_with_index do |pixel, index2|
        if  pixel == 1
          ones << [index, index2]
        end
      end
    end

    @image.each_with_index do |row, index|
      row.each_with_index do |pixel, index2|
        ones.each do |a, b|
           @image[a+1][b] = 1 if a+1 != @image.length
           @image[a-1][b] = 1 if a-1 >= 0
           @image[a][b+1] = 1 if b+1 != row.length
           @image[a][b-1] = 1 if b-1 >= 0
        end
      end
    end
  end

end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

 image.output_image
 image.transform
 puts ""
 image.output_image





#each_with_index