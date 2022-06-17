class User < ApplicationRecord
    include ActiveModel::SecurePassword
    has_secure_password
    validates :name, presence: true
    validates :date_of_birth, presence: true
    validates :phone, presence: true
    validates :address, presence: true
    validates :credit_card, presence: true
    validates :credit_card_network, presence: true
    validates :email, uniqueness: :true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password_digest, presence: true

end
