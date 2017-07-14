songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
def help
  puts 'I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program'
end
def play(array)
puts "Please enter a song name or number:"
num_str = '12345678'
choice = gets.chomp
  count = 0
  while count < array.length
    if choice != array[count] && !(num_str.index(choice))
      puts 'Invalid input, please try again'
      return 'Invalid input, please try again'
    elsif array.index(choice)
      puts "Playing #{choice}"
      return
    else
      puts "Playing #{array[choice.to_i-1]}"
      return
    end
    count += 1
  end
end

def help
  puts 'I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program'
end

def list(array)
  array.each do |song|
    puts song
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(array)
  help
  puts 'Please enter a command:'
  command = gets.chomp
  if command != 'exit'
    if command == 'list'
      list(array)
      run(array)
    elsif command == 'play'
      play(array)
      run(array)
    elsif command == 'help'
      run(array)
    else
      run(array)
    end
  else
    exit_jukebox
  end
end
