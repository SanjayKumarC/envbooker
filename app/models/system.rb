class System < ActiveRecord::Base
  belongs_to :env
  belongs_to :app

  validates_uniqueness_of :env, scope: :app

  has_many :system_properties
  accepts_nested_attributes_for :system_properties, reject_if: proc { |sp| sp['key'].blank? }, allow_destroy: true
end
