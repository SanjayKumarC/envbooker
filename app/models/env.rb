class Env < ActiveRecord::Base
  belongs_to :envlevel
  has_many :envbookings, dependent: :destroy
  
  validates :name, presence: true
  validates :envlevel, presence: true
  validates_uniqueness_of :name
end
