class Package < ActiveRecord::Base
	resourcify
	has_many :package_chapters
	has_many :chapters, :through => :package_chapters
	belongs_to :course
	# validate_uniqueness_of :chapter_id
end
