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
def list(songs)
  songs.each_with_index do |val, index| 
    puts "#{index + 1}. #{val}"
  end
end 

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  index = 1
  songs.each do |song| 
    if input == song 
      puts "Playing #{song}"
    elsif input.to_i == index
      puts "Playing #{songs[index - 1]}"
    end   
    index += 1 
  end
    if !songs.include?(input)
      puts "Invalid input, please try again"
  end
  
end




def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help 
  loop do
    puts "Please enter a command:"
    input = gets.strip
      while input != "exit"
        if input == "list" 
          list(songs)
        elsif input == "play"
          play(songs)
        end
      end 
      exit_jukebox
 end
end 