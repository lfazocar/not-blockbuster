# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :bigint
#
class Movie < ApplicationRecord
  # Relations
  belongs_to :client, optional: true

  # Validations
  validates :name, presence: true
  
  # pg_search
  include PgSearch::Model
  pg_search_scope :search_name, against: :name

  # Other

  def to_s
    self.name
  end
end
