class Movie < ActiveRecord::Base
  attr_accessible :description, :mpaa_rating, :title
end
