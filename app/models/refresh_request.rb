class RefreshRequest < ActiveRecord::Base
  belongs_to :env
  belongs_to :app
  belongs_to :status
end
