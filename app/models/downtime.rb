class Downtime < ActiveRecord::Base
  belongs_to :env

  validates :hours, :numericality => true, :presence => true
  validates :reason, :presence => true

  scope :lastmonth, lambda {
    where("date between ? and ?", Date.today-30, Date.today)
  }
end
