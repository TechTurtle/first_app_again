class User < ActiveRecord::Base
	validates :email, uniqueness: true
  	validates :email, :first_name, :middle_name, :last_name, :paypal_id presence: true

  	has_many :jars
end
