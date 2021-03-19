class User < ApplicationRecord
    has_many :appointments
    # has_many :providers, through: :appointments
    has_many :comments
    has_many :provider_comments, :through => :comments, :source => :provider

    has_secure_password
end
