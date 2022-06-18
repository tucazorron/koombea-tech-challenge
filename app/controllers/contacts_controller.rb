class ContactsController < ApplicationController

    before_action :authorize_request
    before_action :find_contact, only: %i[show update destroy]

    def index
        @contacts = Contact.all.where(user_id: @current_user.id)
        render json: @contacts, status: :ok
    end

    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            render json: @contact, status: :created
        else
            render json: @contact.errors, status: :unprocessable_entity
        end
    end

    def show
        render json: @contact, status: :ok
    end

    def update
        if @contact.update(contact_params)
            render json: @contact, status: :ok
        else
            render json: @contact.errors, status: :unprocessable_entity
        end
    end

    def destroy
        if @contact.destroy
            render json: { message: 'Contact deleted successfully' }, status: :ok
        else
            render json: { message: 'Error deleting contact' }, status: :unprocessable_entity
        end
    end

    private

    def find_contact
        @contact = Contact.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
        render json: { errors: e.message }, status: :not_found
    end

    def contact_params
        params.permit(:name, :date_of_birth, :phone, :address, :credit_card, :credit_card_network, :email, :user => @current_user.id)
    end
end
