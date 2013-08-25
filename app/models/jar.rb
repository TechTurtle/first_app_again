class Jar < ActiveRecord::Base
	validates :name, :description, :user_id, :amount1, :amount2, :amount3, :amount4, presence: true

	belongs_to :user
end