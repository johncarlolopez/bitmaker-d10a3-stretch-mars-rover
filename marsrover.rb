#Stretch: Mars Rover
#John Lopez
require "./Rover.rb"
#reference
#   _ _ _ _ _ _ _ _ _
# 9|_|_|_|_|_|_|_|_|_|        N
# 8|_|_|_|_|_|_|_|_|_|      W   E
# 7|_|_|_|_|_|_|_|_|_|        S
# 6|_|_|_|_|_|_|_|_|_|
# 5|_|_|_|_|_|_|_|_|_|
# 4|_|_|_|_|_|_|_|_|_|
# 3|_|_|_|_|_|_|_|_|_|
# 2|_|_|_|_|_|_|_|_|_|
# 1|_|_|_|_|_|_|_|_|_|
# 0 1 2 3 4 5 6 7 8 9

#grid xy positions
xnum=19
ynum=11
#create nested array for grid
#outside of method and passed to method to reduce having to repeat every time method runs
x = (0..xnum).to_a
y=[]
ynum.times {|num|
  y[num] = x
}
curiosity = Rover.new
#init command
command = ""
lastcommand = ""

#Method to display grid,rover,location and heading
#todo: fix redundant variable names inside and outside of method
def display(passed_rover,passed_y,passed_x)
  y = passed_y
  x = passed_x
  curiosity = passed_rover
  #temp block to create grid
  yloc = 0 #using var to keep track of y as having difficulty returning current y value in each loop below
  puts "\n----- Mars Rover Command Center -----"

  y.each{|currenty|

    x.each{|currentx|
      #yloc variable used and not currenty because currenty contains a nested array of x and not the current ylocation
      #if top of grid
      if yloc == 0
        case currentx
        when 2,4,6,8,10,12,14,16,18
          print "_"
        else
          print " "
        end
      #if bottom of grid
      elsif yloc == 10
        if (currentx % 2) == 0
          print "#{currentx/2}"
        else
          print " "
        end
      else
          case currentx
            #when left side of grid
            when 0
              print "#{(10-yloc).abs}"
            when 2,4,6,8,10,12,14,16,18
              #checks if curiosity is in that location and displays instead of an underscore
              if (curiosity.xloc == currentx) && (curiosity.yloc == yloc)
                print "X"
              else
                print "_"
              end

            when 1,3,5,7,9,11,13,15,17,19
              print "|"
            else
              print currenty[currentx]
          end
        end
    }
    #proceed to next y row
    yloc += 1
    print "\n"
  }
  puts curiosity.return_loc
end

#loop to allow program to run until user wants to quit
loop do
  #clears console for better presentation
  system "clear"
  display(curiosity,y,x)
  print "\n(Last Command:#{lastcommand})"
  print "\nPlease input rover command (L,R,M,Quit):"
  command = gets.chomp
  if command.downcase == "quit"
    break
  elsif command.downcase == "l"
    curiosity.command("l")
    lastcommand = command.capitalize
  elsif command.downcase == "r"
    curiosity.command("r")
    lastcommand = command.capitalize
  elsif command.downcase == "m"
    curiosity.command("m")
    lastcommand = command.capitalize
  else
    lastcommand = "Invalid"
  end
end
