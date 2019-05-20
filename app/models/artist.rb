class Artist < ApplicationRecord
  belongs_to :song, optional: true

end
