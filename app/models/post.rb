class Post < ActiveRecord::Base
	# Validations
	validates :title, :content, presence: true
end
