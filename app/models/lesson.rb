class Lesson < ActiveRecord::Base
	resourcify
	belongs_to :chapter
end
