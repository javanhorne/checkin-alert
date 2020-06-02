# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  password_digest :string
#  phone           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  validates :phone, :length => { :minimum => 10, :maximum => 10 }
  validates :phone, :presence => true
  validates :phone, :uniqueness => { :message => "There is already an account associated with this phone number" }
  validates :first_name, :presence => { :message => "First name can't be blank" }
  has_secure_password
  has_many :flights, :foreign_key => "owner_id", :dependent => :destroy

  def flights
    return Flight.where({ :owner_id => self.id })
  end
end
