class App < ActiveRecord::Base
  validates :name, presence: true
  validates_uniqueness_of :name

  belongs_to :enbookings, :dependent => :destroy
end
