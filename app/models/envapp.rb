class Envapp < ActiveRecord::Base
  belongs_to :env
  belongs_to :app

  validates :env, presence: true
  validates :app, presence: true
  validates_uniqueness_of :env
  validates_uniqueness_of :app
end
