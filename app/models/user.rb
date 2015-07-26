class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :envbookings, :dependent => :destroy
  has_one :user_preference, :dependent => :destroy

  after_create :create_user_preference

  def create_user_preference
    appconfig = Appconfig.find(1) #use global defaults
    up = UserPreference.new
    up.template = appconfig.template
    up.show_extra_color_box = appconfig.show_extra_color_box
    up.color_by_project = appconfig.color_by_project
    up.user_id = self.id
    up.save!
  end

  def remove_user_preference
    up = UserPreference.find_by user_id: self.id
    up.destroy
  end

  def admin?
  	admin
  end
end
