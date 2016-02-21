class Course < ActiveRecord::Base
	# TODO: add validations
	belongs_to :grade
	has_many :chapters
end
