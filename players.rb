class Players
  def initialize (name)
    @name = name
    @position = 1
  end

  def name()
    return @name
  end

  def position()
    return @position
  end

  def add_position(num)
    @position += num
    if @position >= 100
      @position = 100
    end
    puts "#{@name} has moved to square #{@position}."
  end

  def change_position(num)
    @position = num
  end

end