class Envapp < ActiveRecord::Base
  belongs_to :env, :dependent => :delete
  belongs_to :app, :dependent => :delete

  validates :env, presence: true
  validates :app, presence: true

  validates_uniqueness_of :env, :scope => [:app]
end
