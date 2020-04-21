class Genre < ActiveRecord::Base
  # include Slugifiable
  has_many :song_genre
  has_many :artists
  has_many :songs, through: :song_genre
end