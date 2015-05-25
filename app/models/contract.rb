class Contract < ActiveRecord::Base
    belongs_to :user
    validates :desc, presence: true, length: { minimum: 5, maximum: 100 }
end
