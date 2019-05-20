class Song < ApplicationRecord
  belongs_to :billboard
  has_many :artists, dependent: :destroy
end
