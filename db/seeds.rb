# add some movies
movies = [
  {:title => 'The Matrix', :rating => 'R', :release_date => '31-Mar-1999', :description => 'A computer hacker learns about the true nature of reality and his role in the war against its controllers.'},
  {:title => 'Inception', :rating => 'PG-13', :release_date => '16-Jul-2010', :description => 'A skilled thief is given a chance at redemption if he can accomplish the impossible task of inception.'},
  {:title => 'The Dark Knight', :rating => 'PG-13', :release_date => '18-Jul-2008', :description => 'Batman faces the Joker, a criminal mastermind who seeks to undermine Batman and create chaos.'},
  {:title => 'Pulp Fiction', :rating => 'R', :release_date => '14-Oct-1994', :description => 'The lives of two mob hitmen, a boxer, a gangster and his wife intertwine in four tales of violence and redemption.'}
]

movies.each do |m|
  Movie.create!(m)
end


