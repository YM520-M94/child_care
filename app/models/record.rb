class Record < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :title
    validates :diary
    validates :weather
  end
end
