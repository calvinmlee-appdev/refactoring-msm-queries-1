# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  def director 
    dir_id = self.director_id

    matching_results = Director.where({ :id => dir_id})

    first_result = matching_results.at(0)
    return first_result
  end

  def characters
    the_id = self.id

    matching_chars = Character.where({ :movie_id => the_id})

    return the_id
  end
end

