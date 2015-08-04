class App < ActiveRecord::Base
  has_many :envbookings, :dependent => :restrict_with_error
  has_many :systems
  has_many :envs, :through => :systems

  validates :name, presence: true
  validates :description, presence: true
  validates :color, presence: true
  validates :color, :format => { :with => /\A#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})\z/i, :message => "Must be a valid CSS hex color code." }
  validates_uniqueness_of :name
end
