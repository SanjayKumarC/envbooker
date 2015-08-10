class BookingRequest < ActiveRecord::Base
  validates :notes, :presence => true
  validates :project, :presence => true
  validates :user, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true

  validate :end_date_is_greater_than_start_date, :on => :create
  validate :end_date_is_greater_than_start_date, :on => :update

  def end_date_is_greater_than_start_date
    if end_date < start_date
      errors.add(:end_date, "End Date must be greater than start date.")
    end
  end

end
