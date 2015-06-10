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

  has_attached_file :avatar, :styles => { 
    :medium => "300x300#", 
    :thumb => "100x100#", 
    :tiny => "75x75#"}, 
    :default_url => "missingowner_:style.png", #points to app/assets/images/missing_medium.jpg
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates_attachment_size :avatar, :less_than => 3.megabytes,
    :unless => Proc.new {|m| m[:avatar_file_name].blank?}

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
