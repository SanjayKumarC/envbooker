class Envbooking < ActiveRecord::Base

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user, presence: true
  validates :env, presence: true
  validates :project, presence: true
  validates :app, presence: true

  belongs_to :app
  belongs_to :env
  belongs_to :project
  belongs_to :user

  #validate :start_date_greater_than_today, :on => :create - might want to allow this actually.
  validate :end_date_greater_than_start_date, :on => :create
  validate :end_date_greater_than_start_date, :on => :update

  def start_date_greater_than_today
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "Start Date Cannot be in the past.")
    end
  end

  def end_date_greater_than_start_date
    if end_date.present? && start_date.present? && end_date < start_date
      errors.add(:end_date, "End Date must be greater than start date.")
    end
  end
end
