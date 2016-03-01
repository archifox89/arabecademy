class Grade < ActiveRecord::Base
	resourcify
	has_many :courses
end
