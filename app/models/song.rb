class Song < ApplicationRecord
  belongs_to :billboard, optional: true
  has_many :artists, dependent: :destroy
end
