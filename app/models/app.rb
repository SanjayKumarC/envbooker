class App < ActiveRecord::Base
  validates :name, presence: true
  validates_uniqueness_of :name

  has_many :envapps, :dependent => :delete_all
  has_many :enbookings, :dependent => :delete_all
end
