class User < ApplicationRecord
  acts_as_messageable
  has_many :books
	has_many :vidguks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :userparam
  def name
    "#{email}"
  end
  def mailboxer_email(object)
    email
  end
end
