class Dog < ActiveRecord::Base
  belongs_to :breed
  belongs_to :owner
  belongs_to :vet

  validates :name, :breed_id, :birth_date, :owner_id, :vet_id, presence: true

  has_attached_file :avatar, :styles => { 
    :medium => "300x300#", 
    :thumb => "100x100#" }, 
    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates_attachment_size :avatar, :less_than => 3.megabytes,
    :unless => Proc.new {|m| m[:avatar_file_name].blank?}

end

# == Schema Information
#
# Table name: dogs
#
#  id         :integer          not null, primary key
#  name       :string
#  breed_id   :integer
#  birth_date :date
#  owner_id   :integer
#  vet_id     :integer
#  in_daycare :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
