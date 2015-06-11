class Envbooking < ActiveRecord::Base
  belongs_to :env
  belongs_to :project
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user, presence: true
  validates :env, presence: true
  validates :project, presence: true
end
