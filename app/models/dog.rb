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

class Dog < ActiveRecord::Base
  belongs_to :breed
  belongs_to :owner
  belongs_to :vet
end
