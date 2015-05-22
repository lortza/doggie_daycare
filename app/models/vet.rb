class Vet < ActiveRecord::Base
  has_many :dogs
end


# == Schema Information
#
# Table name: vets
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#