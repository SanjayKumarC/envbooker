class Env < ActiveRecord::Base
  belongs_to :envlevel
  has_many :envbookings, :dependent => :delete_all
  
  validates :name, presence: true
  validates :envlevel, presence: true
  validates_uniqueness_of :name
end
