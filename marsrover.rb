require "./Rover.rb"
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
x = (0..xnum).to_a
y=[]
ynum.times {|num|
  y[num] = x
}
curiosity = Rover.new

#Method to display grid,rover,location and heading
#todo: fix redundant variable names inside and outside of method
def display(passed_rover,passed_y,passed_x)
  y = passed_y
  x = passed_x
  curiosity = passed_rover
  #temp block to create grid
  yloc = 0 #using var to keep track of y as having difficulty returning current y value in each loop below
  y.each{|currenty|

    x.each{|currentx|
      if yloc == 0
        case currentx
        when 2,4,6,8,10,12,14,16,18
          print "_"
        else
          print " "
        end
      elsif yloc == 10
        if (currentx % 2) == 0
          print "#{currentx/2}"
        else
          print " "
        end
      else
            # if condition
            #
            # else
          case currentx
            when 0
              print "#{(10-yloc).abs}"
            when 2,4,6,8,10,12,14,16,18
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

      # end


    }
    yloc += 1
    print "\n"
  }
  puts curiosity.return_loc

end

display(curiosity,y,x)

#test movement
# 1.times {curiosity.command("R")
# puts curiosity.return_loc}
#
# 10.times {puts curiosity.return_loc
# curiosity.command("M")}

#end of temp block to make grid

# puts curiosity.return_loc
