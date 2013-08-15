class User < ActiveRecord::Base

	has_many :conferences
  has_many :transactions, :through => :conferences
  belongs_to :client
	
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :client_id, :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end
