class Contact < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :phone, presence: true
    validates :address, presence: true
    validates :credit_card, presence: true
    validates :credit_card_network, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    # validates :phone, format: { with: /\A\d{3}[-]\d{3}[-]\d{4}\z/ }
    # validates :credit_card, format: { with: /\A\d{4}[-]\d{4}[-]\d{4}[-]\d{4}\z/ }
end
