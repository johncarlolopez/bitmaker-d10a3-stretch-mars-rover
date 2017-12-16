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
    #xloc divided by 2 as the xloc visually is every 2 spaces
    #yloc subtracted from 10 and given absolute value as the grid is y inverted
    "X:#{xloc/2} Y:#{(10-yloc).abs} Heading:#{@direction.capitalize}"
  end
  def command(command)
    #case to determine which L,R, or M command is chosen
    case command.downcase
    when "l"
      #case to set new heading/direction base on current heading/direction
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
      #case to set new heading/direction base on current heading/direction
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
      #forward movement of rover based on current heading/direction
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
