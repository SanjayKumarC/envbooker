class Project < ActiveRecord::Base
  has_many :envbookings, :dependent => :restrict_with_error
	validates_uniqueness_of :name
end
