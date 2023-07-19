# == Schema Information
#
# Table name: clients
#
#  id         :bigint           not null, primary key
#  name       :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Client < ApplicationRecord
  has_many :movies, dependent: :nullify
  validates :name, presence: true
  validates :age, numericality: { :greater_than_or_equal_to => 13 }
end
