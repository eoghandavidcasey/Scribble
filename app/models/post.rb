class Post < ActiveRecord::Base
	belongs_to :User

	def average_ratings
		comments.average(ratings)
end

end
