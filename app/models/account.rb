class Account < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :image_url, presence: true
    validates :institution, presence: true
    validates :gender, presence: true
    validates :bio, presence: true ,length: {minimum: 10}
end
