class Envlevel < ActiveRecord::Base
	validates_uniqueness_of :name
  has_many :envs, :dependent => :destroy
end
