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
  # Relations
  has_many :movies, dependent: :nullify

  # Validations
  validates :name, presence: true
  validates :age, numericality: { :greater_than_or_equal_to => 13 }

  # pg_search
  include PgSearch::Model
  pg_search_scope :search_name, against: :name
end
