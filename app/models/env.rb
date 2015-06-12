class Env < ActiveRecord::Base
  belongs_to :envlevel, :dependent => :delete
  validates :name, presence: true
  validates :envlevel, presence: true
  validates_uniqueness_of :name
end
