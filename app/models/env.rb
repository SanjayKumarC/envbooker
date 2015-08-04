class Env < ActiveRecord::Base
  belongs_to :envlevel
  has_many :envbookings, :dependent => :restrict_with_error
  has_many :systems
  has_many :apps, :through => :systems

  validates :name, presence: true
  validates :description, presence: true
  validates :envlevel, presence: true
  validates_uniqueness_of :name
end
