class Envlevel < ActiveRecord::Base
	validates_uniqueness_of :name
	validates :name, :presence => true
	validates :description, :presence => true
  has_many :envs, :dependent => :restrict_with_error
end
