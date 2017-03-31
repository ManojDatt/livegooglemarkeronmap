class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable
         
  attr_accessor :login
  def login=(login)
    @login=login
  end
  def login
    @login ||self.username ||self.email
  end

  def self.find_for_database_authentication(warden)
    condition = warden.dup
    if login = condition.delete(:login)
      where(condition.to_hash).where(["lower(email) = :value OR lower(username) = :value",{:value=> login.downcase}]).first
    elsif condition.has_key?(:username) || condition.has_key?(:email)
      where(condition.to_hash).first
    end
  end
end
