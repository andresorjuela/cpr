class Event < ActiveRecord::Base
	has_many :recipes, dependent: :destroy
	validates :lecture, presence: true, length: {minimum: 5}
end
