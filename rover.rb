class Rover
  def initialize
    #start the rover at 5,5
    @xloc = 10
    @yloc = 5
    @direction = "n"
  end
  def xloc
    @xloc
  end
  def yloc
    @yloc
  end
  def return_loc
    "X:#{xloc} Y:#{yloc} Heading:#{@direction.capitalize}"
  end
  def command(command)
    case command.downcase
    when "l"
      case @direction
      when "n"
        @direction = "w"
      when "s"
        @direction = "e"
      when "e"
        @direction = "n"
      when "w"
        @direction = "s"
      end
    when "r"
      case @direction
      when "n"
        @direction = "e"
      when "s"
        @direction = "w"
      when "e"
        @direction = "s"
      when "w"
        @direction = "n"
      end
    when "m"
      #cant go below x = 2 or over 18
      #cant go below y = 1 or over 9
      case @direction
        when "n"
          if (@yloc > 1)
            @yloc -= 1
          end
        when "s"
          if (@yloc < 9)
            @yloc += 1
          end
        when "e"
          if (@xloc < 18)
            @xloc += 2
          end
        when "w"
          if (@xloc > 2 )
          @xloc -= 2
        end
      end
    end
  end
end
