class Rover
  def initialize
    #start the rover at 5,5
    @xloc = 5
    @yloc = 5
    @direction = "n"
  end
  def xloc
    @xloc
  end
  def yloc
    @yloc
  end
  def command(command)
    case direction.downcase
    when "L"
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
    when "R"
      case @direction
      when "n"
        @direction = "e"
      when "s"
        @direction = "w"
      when "e"
        @direction = "s"
      when "w"
        @direction = "n"
    when "M"
      case @direction
      when "n"

      when "s"
      when "e"
      when "w"
      end
    else
    end

  end
end
