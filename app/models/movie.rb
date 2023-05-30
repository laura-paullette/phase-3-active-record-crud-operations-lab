class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    #create
    #a movie can be instantiated, given a title, and saved
    def self.create_with_title(title)
        movie = Movie.new(title:title)
        movie.save
        movie
      end
      
      #read
      #Can return the first item in the table
      def self.first_movie
        Movie.first
        end

        #Can return the last item in the table
      def self.last_movie
        Movie.last
        end

        #Can return the number of records in the table
      def self.movie_count
        Movie.count
      end
      
      #Can return a movie from the table based on its id with the .find method
      def self.find_movie_with_id(id)
        Movie.find(id)
      end
    
      #Can return a movie from the table based on its attributes with the .find_by method
      def self.find_movie_with_attributes(age)
        Movie.find_by(age)
      end
    
      #Can use a .where clause to select the appropriate movies released after 2002
      def self.find_movies_after_2002
        Movie.where("release_date > ?", 2002)
      end
    
      #update.
      #Can update a single movie using the #update method
      def update_with_attributes(attr)
        update(attr)
      end
    
      #Can update the title of all records at once using the .update
      def self.update_all_titles(title)
        Movie.update_all(title:title)
      end
    
      #delete.
      #Can delete a single item with the #destroy method
      def self.delete_by_id(id)
        Movie.delete(id)
      end
    
      #Can delete all items at once with the .destroy_all method
      def self.delete_all_movies
        Movie.destroy_all
      end
end