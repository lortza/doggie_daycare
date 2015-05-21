# == Schema Information
#
# Table name: owners
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  phone          :string
#  street_address :string
#  city           :string
#  state          :string
#  zip            :string
#  signed_waiver  :boolean
#  emerg_contact  :string
#  emerg_phone    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Owner < ActiveRecord::Base
  has_many :dogs
  belongs_to :state

  def last_first
    "#{last_name}, #{first_name}"
  end
end
