class Owner < ActiveRecord::Base
  has_many :dogs
  belongs_to :state

  def last_first
    "#{last_name}, #{first_name}"
  end

  def first_last
    "#{first_name} #{last_name}"
  end

  def address_block
    "#{street_address}, #{city}, ST #{zip}"
  end

  validates :first_name, :last_name, :street_address, :city, :zip, presence: true, length: {minimum: 1}
  validates :phone, presence: true

end

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
#  zip            :string
#  signed_waiver  :boolean
#  emerg_contact  :string
#  emerg_phone    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
