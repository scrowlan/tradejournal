class Stock < ApplicationRecord
  validates :symbol, presence: true,
                    length: { maximum: 5 }
  belongs_to :user

end