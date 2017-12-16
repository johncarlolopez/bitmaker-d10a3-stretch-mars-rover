![Bitmaker](https://github.com/johncarlolopez/bitmaker-reference/blob/master/bitmakerlogo.svg)
# Stretch: Mars Rover
### Friday, Dec 15th

## Mars Rover
___
This is a longer problem and recommended for group work. You can all work at your own computers, but talking through this problem as a group will help break it down and solve it. Don't forget to commit early and often!

### The Story
___
A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

Imagine a grid that looks something like this:
```
  _ _ _ _ _ _ _ _ _
9|_|_|_|_|_|_|_|_|_|        N
8|_|_|_|_|_|_|_|_|_|      W   E
7|_|_|_|_|_|_|_|_|_|        S
6|_|_|_|_|_|_|_|_|_|
5|_|_|_|_|_|_|_|_|_|
4|_|_|_|_|_|_|_|_|_|
3|_|_|_|_|_|_|_|_|_|
2|_|_|_|_|_|_|_|_|_|
1|_|_|_|_|_|_|_|_|_|
0 1 2 3 4 5 6 7 8 9
```
In order to control a rover, NASA sends a string of letters. The possible letters are 'L', 'R' and 'M'.

  * 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot.
  * 'M' means move forward one grid point, and maintain the same heading.

### Example Input and Output
___
```
Test Input 1:
1 2 N                > our start position and direction
LMLMLMLMM            > a series of move and turn instructions.


Expected Output:
1 3 N                > rover's new position


Test Input 2:
3 3 E                
MMRMMRMRRM

Expected Output:
5 1 E
```
### How To Approach This Problem
___
There's a lot of different aspects to this problem. This is a great opportunity to practice your problem solving skills! The most important step is to start by breaking things down into small pieces and solve one thing at a time.

Given that we're practicing Object-Oriented Programming, we're going to want to focus on identifying different "things" in this program.

What is the easiest "thing" to reason about here? The Rover! We can already start picturing rovers moving across Mars.

As we already know, objects have state and behaviour. In Ruby, our classes have instance variables and methods. What kind of state do we need for our rovers? What about behaviours?

**State**

  * x coordinate
  * y coordinate
  * direction

**Behaviour**

  * read instruction
  * move
  * turn  

Start by creating a Rover class that has these properties. Given that each rover starts with a location and direction, perhaps it's a good idea to have an initialize method for each rover that accepts these parameters.

Next up we'll need to think about behaviour. Behaviours have the ability to read and affect the state of an object. We express those as methods.

read_instruction should accept an instruction and decide whether to tell the rover to move or turn. It simply delegates to more specific behaviour.

move affects the position of the rover. Depending on current direction and position, you'll need to update the x or y coordinates.

turn affects the direction of the rover. Depending on the current direction of the rover, the new direction will be determined with either turning L or R.

Once you've figured out how to move and turn your rover, the rest gets much easier because you got the seemingly complex stuff out of the way first! All you'll need to figure out from here is how to read and split up the instructions so that you can pass them on to your rovers.
