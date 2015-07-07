class Appconfig < ActiveRecord::Base
  validates_inclusion_of :singleton_guard, :in => [0]

  def self.instance
    begin
      find(1)
    rescue ActiveRecord::RecordNotFound
      row = Appconfig.new
      row.singleton_guard = 0
      row.save
    end
  end  
end
