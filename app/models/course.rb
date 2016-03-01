class Course < ActiveRecord::Base
	# TODO: add validations
	resourcify
	belongs_to :grade
	has_many :chapters
	has_many :packages
end
