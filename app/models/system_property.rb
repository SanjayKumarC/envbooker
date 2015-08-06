class SystemProperty < ActiveRecord::Base
  belongs_to :system

  validates :key, :presence => true
  validates_uniqueness_of :key, :scope => :system_id
end
