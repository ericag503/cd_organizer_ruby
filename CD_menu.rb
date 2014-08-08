require './lib/cd_organizerr'

 def main_menu
   loop do
      puts "Press [1] to add an artist"
      puts "Press [2] to add a album"
      puts "Press [3] to search by artist"
      puts "Press [4] to search by album"
      puts "Press [5] to list your stuff"
      puts "Press [6] to exit"
      user_choice = gets.chomp

      if user_choice == '1'
        add_cd
      elsif user_choice == '2'
        add_album
      elsif user_choice == '3'
        search_artist
      elsif user_choice == '4'
        search_album
      elsif user_choice == '5'
        list_cd
      elsif user_choice == '6'
        exit
      end
    end
  end


  def add_cd
    puts "***Add Artist***"
    user_artist = gets.chomp
    puts "***Add Album***"
    user_album = gets.chomp
    new_cd = CD.new({:artist => user_artist, :album => user_album})
    new_cd.add_cd
    puts "Artist: #{new_cd.artist} Album: #{new_cd.album} has been added!"
  end

  def search_artist
    puts "***Enter the name of the artist you are searching for***"
    user_artist = gets.chomp
    list = CD.all.each do |cd|
      if user_artist == cd.artist
        puts "Artist: #{cd.artist} Album: #{cd.album}\n\n"
      end
    end
  end

  def search_album
    puts "***Enter the album name you are searching for***"
    user_album = gets.chomp
    list = CD.all.each do |library|
      if user_album == library.album
        puts library.album
      end
    end
  end

  def list_cd
    puts "***LIST 'EM***"
    CD.all.each do |cd|
      puts "Artist: #{cd.artist} Album: #{cd.album}"
    end
  end


 main_menu
