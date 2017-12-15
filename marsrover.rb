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
xnum=20-1
ynum=11

x = (0..xnum).to_a
y=[]
ynum.times {|num|
  y[num] = x
}
# print x
# print y

yloc = 0

y.each{|currenty|

  x.each{|currentx|
    # print "!!#{currenty}!!"
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
      case currentx
      when 0
        print "#{(10-yloc).abs}"
      when 2,4,6,8,10,12,14,16,18
        print "_"
      when 1,3,5,7,9,11,13,15,17,19
        print "|"
      else
        print currenty[currentx]
      end
    end


  }
  yloc += 1
  print "\n"
}

# print y
