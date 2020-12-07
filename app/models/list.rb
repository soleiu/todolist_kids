class List < ApplicationRecord
  elongs_to:user
  validates :title, length: { in: 1..255 }
end
