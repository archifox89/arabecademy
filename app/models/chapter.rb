class Chapter < ActiveRecord::Base
 resourcify
 belongs_to :course
 has_many :lessons
 has_many :package_chapters
 has_many :packages, :through => :package_chapters
end
