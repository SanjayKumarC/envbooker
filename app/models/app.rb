class App < ActiveRecord::Base
  validates :name, presence: true
  validates_uniqueness_of :name

  has_many :envbookings, dependent: :destroy
end
