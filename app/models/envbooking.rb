class Envbooking < ActiveRecord::Base
  belongs_to :env, :dependent => :delete
  belongs_to :project, :dependent => :delete
  belongs_to :user, :dependent => :delete

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user, presence: true
  validates :env, presence: true
  validates :project, presence: true
end
