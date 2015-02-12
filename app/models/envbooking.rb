class Envbooking < ActiveRecord::Base
  belongs_to :env
  belongs_to :project

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :env, presence: true
  validates :project, presence: true
end
