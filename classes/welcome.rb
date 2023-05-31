require_relative './app'
class Welcome
  def initialize(app)
    @app = app
  end

  def greet
    puts 'Welcome to School Library App!'
  end

  def display_books
    @app.display_books
  end

  def display_music
    @app.display_music
  end

  def display_movies
    @app.display_movies
  end

  def display_games
    @app.display_games
  end

  def display_genres
    @app.display_genres
  end

  def display_labels
    @app.display_labels
  end

  def display_authors
    @app.display_authors
  end

  def display_sources
    @app.display_sources
  end

  def add_book
    @app.add_book
  end

  def add_music
    @app.add_music
  end

  def add_movie
    @app.add_movie
  end

  def add_game
    @app.add_game
  end

  def exit_message
    puts 'Thank you for using this app!'
    @app.exit_app
  end

  def run
    greet

    options = {
      '1' => method(:display_books),
      '2' => method(:display_music),
      '3' => method(:display_movies),
      '4' => method(:display_games),
      '5' => method(:display_genres),
      '6' => method(:display_labels),
      '7' => method(:display_authors),
      '8' => method(:display_sources),
      '9' => method(:add_book),
      '10' => method(:add_music),
      '11' => method(:add_movie),
      '12' => method(:add_game),
      '13' => method(:exit_message),
      'q' => method(:exit_message),
      'quit' => method(:exit_message)
    }

    loop do
      display_menu

      option = gets.chomp

      action = options[option]
      if action
        action.call
        break if %w[13 q quit].include?(option)
      else
        puts 'Invalid option. Please try again.'
      end
    end
  end

  def display_menu
    puts 'Please choose an option by entering a number:'
    puts "\t1 - List all books"
    puts "\t2 - List all music albums"
    puts "\t3 - List all movies"
    puts "\t4 - List of games"
    puts "\t5 - List all genres"
    puts "\t6 - List all labels"
    puts "\t7 - List all authors"
    puts "\t8 - List all sources"
    puts "\t9 - Add a book"
    puts "\t10- Add a Music Album"
    puts "\t11- Add a Movie"
    puts "\t12- Add a Game"
    puts "\t13- Quit the program"
  end
end

app = App.new
welcome = Welcome.new(app)
welcome.run
