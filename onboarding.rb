STDOUT.sync = true # DO NOT REMOVE
# The code below will read all the game information for you.
# On each game turn, information will be available on the standard input, you will be sent:
# -> the total number of visible enemies
# -> for each enemy, its name and distance from you
# The system will wait for you to write an enemy name on the standard output.
# Once you have designated a target:
# -> the cannon will shoot
# -> the enemies will move
# -> new info will be available for you to read on the standard input.

$enemies = Hash.new
# game loop
loop do
    $enemies.clear
    $count = gets.to_i # The number of current enemy ships within range
    $count.times do
        # enemy: The name of this enemy
        # dist: The distance to your cannon of this enemy
        $enemy, $dist = gets.split(" ")
        $dist = $dist.to_i
        $enemies["#{$enemy}"] = $dist
    end
    
    $closest = $enemies.sort_by{|enemy| enemy.last}.first
    $target = $closest.first
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
    STDERR.puts $enemies, $closest, $target

    puts $target # The name of the most threatening enemy (HotDroid is just one example)
end
