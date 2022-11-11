class MusicTracker
  def initialize
   #.....
   @tracks = []
  end

  def list # a method to print out the list of the tracks as strings
    return @tracks
  end

  def add(track) #track is a string that the user wants to add to the list of tracks
    @tracks.push(track)
    return list
  end

end


=begin

Single-Class Programs Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.
2. Design the Class Interface

The interface of a class includes:
The name of the class.
The design of its initializer and the parameters it takes.
The design of its public methods, including:
Their names and purposes
What parameters they take and the data types.
What they return and that data type
Any other side effects they might have.

class MusicTracker
  def initialize
   #.....
  end
  def add(track) #track is a string that the user wants to add to the list of tracks

  end
  def list # a method to print out the list of the tracks as strings

  end

end



Steps 3 and 4 then operate as a cycle.
3. Create Examples as Tests
These are examples of the class being used with different initializer arguments, method calls, and how it should behave.
For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.

music_tracker = MusicTracker.new
music_tracker.list # => returns the list of tracks

music_tracker = MusicTracker.new
music_tracker.add("Eminem: Lose Yourself") # =>  add the track
music_tracker.list # => returns the list with the new track in.

music_tracker = MusicTracker.new
music_tracker.add("Eminem: Lose Yourself") # =>  add the track
music_tracker.add("Eminem: Monster ft. Rihanna") # =>  add the track
music_tracker.add("Eminem: Stan") # =>  add the track
music_tracker.add("Eminem: Sing for The Moment") # =>  add the track
music_tracker.list # => returns the list with the new tracks in.


music_tracker = MusicTracker.new
music_tracker.add("") # =>  add nothing and print error "No text found here!"

music_tracker = MusicTracker.new
music_tracker.add(0) # =>  add nothing and print error "No text found here!"



todo_task = TodoTask.new
todo_task.add("Yoga")
todo_task.list # => list_array = ["Yoga"]


todo_task = TodoTask.new
todo_task.add("Yoga")
todo_task.completed("Yoga")
todo_task.list # => returns []

todo_task = TodoTask.new
todo_task.add("Yoga", "Going for run")
todo_task.completed("Yoga", "Going for run")
todo_task.list # => returns []


4. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.
At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.
Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.


Jot something down

=end
