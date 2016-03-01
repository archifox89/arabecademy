class PackageChapter < ActiveRecord::Base
	belongs_to :chapter
	belongs_to :package
end
