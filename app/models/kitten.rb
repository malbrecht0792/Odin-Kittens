class Kitten < ApplicationRecord
	validates :name, presence: :true, length: { maximum: 50 },
			  format: { with: /\A[a-zA-Z]+\z/ }
end
