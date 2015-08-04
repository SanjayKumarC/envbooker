class System < ActiveRecord::Base
  belongs_to :env
  belongs_to :app
end
