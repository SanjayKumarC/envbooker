class Project < ActiveRecord::Base
  has_many :envbookings, dependent: :destroy

	validates_uniqueness_of :name
end
