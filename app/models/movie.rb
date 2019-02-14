class Movie < ApplicationRecord
  belongs_to :shelf
  validates :title, presence: true
  validates :movie_format, presence: true

  enum movie_format: ["dvd", "vhs"]
end
