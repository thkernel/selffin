# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  before_action :configure_sign_up_params, only: [:create]

  # GET /resource/sign_up
  # def new
  #   super
  # end


  def new
    # Override Devise default behaviour and create a profile as well
    build_resource({})
    
    
    #resource.build_customer
    respond_with self.resource
  end

  # POST /resource
  # def create
  #   super
  # end


  def create
    
    
      customer_params = sign_up_params[:customer]
      
      
      role_id = sign_up_params[:role_id]

      new_sign_up_params = sign_up_params.except(:customer)

      puts "DATA: #{sign_up_params.inspect}"
      unless role_id.present?
        build_resource(new_sign_up_params.merge(role_id: Role.find_by(name: "Client").id))
      end

      customer = Customer.new(customer_params)

      puts "CUSTOMER AFTER CREATE: #{customer.inspect}"
      #customer.build_account(resource)
      if customer.valid? && resource.valid?
        customer.save
        resource.accountable = customer
        resource.save
        
      end
      puts "RESOURCE: #{resource.inspect}"

      yield resource if block_given?
      if resource.persisted?
        if resource.active_for_authentication?
          set_flash_message! :notice, :signed_up
          sign_up(resource_name, resource)
          respond_with resource, location: after_sign_up_path_for(resource)
        else
          set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
          expire_data_after_sign_in!
          respond_with resource, location: after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords resource
        set_minimum_password_length
        respond_with resource
      end
     end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end


  def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
    devise_parameter_sanitizer.permit(:sign_up, keys: [customer: [:first_name, :last_name, :civility, :phone, :city]])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:login, :company, :city, :address, :phone, :avatar])
   end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end


  def after_update_path_for(resource)
    profile_path
  end

  def after_sign_in_path_for(resource)
   
        dashboard_path
 

  end

  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
  end

end
