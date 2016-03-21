class Recipe < ActiveRecord::Base
  belongs_to :event
  validates :name, presence: true, length: {minimum: 5}
  #validates :type, inclusion: { in: [true, false]}
end
