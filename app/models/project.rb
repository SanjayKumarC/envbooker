class Project < ActiveRecord::Base
  has_many :envbookings, :dependent => :delete_all
	validates_uniqueness_of :name
end
