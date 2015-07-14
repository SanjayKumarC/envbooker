class Envproperty < ActiveRecord::Base
  validates :key, :presence => true
  validates_uniqueness_of :key, :scope => :env_id
end
