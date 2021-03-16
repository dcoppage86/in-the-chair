class Provider < ApplicationRecord
    has_many :appointments
    has_many :users, through: :appointments
    has_many :comments
    has_many :user_comments, :through => :comments, :source => :user
end
