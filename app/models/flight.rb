# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  description :string
#  reminder    :boolean
#  time        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer
#

class Flight < ApplicationRecord
  belongs_to :user, :foreign_key => "owner_id"
end
