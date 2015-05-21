# == Schema Information
#
# Table name: breeds
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Breed < ActiveRecord::Base
  has_many :dogs
end
