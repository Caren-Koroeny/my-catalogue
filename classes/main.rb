require_relative './welcome'

def main
  welcome = Welcome.new
  welcome.run
end
main



require_relative './app'
class Main
  def main
    app = App.new

    loop do
      puts 'Choose an option:'
      puts '1.  List all books'
      puts '2.  List all music albums'
      puts '3.  List all movies'
      puts '4.  List of games'
      puts '5.  List all genres'
      puts '6.  List all labels'
      puts '7.  List all authors'
      puts '8.  List all sources'
      puts '9.  Add a book'
      puts '10. Add a Music Album'
      puts '11. Add a Movie'
      puts '12. Add a Game'
      puts '13. Quit the program'
      choose_option(app)
    end
  end

  def choose_option(app)
    option = gets.chomp.to_i
    case option
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.add_people
    when 4
      app.add_book
    when 5
      app.rent_book
    when 6
      app.list_rental
    else
      puts 'Invalid option. Please try again.'
      exit
    end
  end
end

main_app = Main.new
main_app.main
