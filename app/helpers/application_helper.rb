module ApplicationHelper
	# Include all helpers
	
	
    
	

		def food_thumbnail(food)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if food.thumbnail.attached?
			#image_tag product.thumbnail.variant(resize: "308x205")
			image_tag food.thumbnail.variant(combine_options: {resize: "308x205^",  gravity: 'Center', crop: '308x205+0+0' })
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end

	def food_cover_thumbnail(food)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if food.thumbnail.attached?
            image_tag food.thumbnail.variant(resize: "700x400")
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end


	

	

	def devise_title(controller)
		if controller == "sessions"
			t(:login)
		elsif controller == "registrations"
			t('sign_up')

		elsif controller == "admin_setup"
			t(:admin_setup)
		end
	end

	def application_page_title(controller, action)
		if controller == "home" && action == "index"
			t(:application_home_page)
		end
	end

	

	def get_account(acount_id)
		account = Account.find(user_id)
	end

	def unreaded_notification?(notification)
		if notification.readed_at.present?
			false
		else
			true
		end
	end


	
	

	
	def user_notifications
		#current_user.recipient_notifications.order(created_at: 'DESC').take(5)
		
	end

	


	def is_account_locked?(account)
		if account.status == 'enable'
			false
		else
			true
		end
	end

	def configs?
		configs = Config.take

		if configs.present? 
			true
		else
			false
		end
	end

	def smtp_config?
		config = Config.take

		if config.present? && config.smtp_user_name.present? &&  config.smtp_user_password.present? && 
			config.smtp_address.present? && config.smtp_port
		
			true 
		else
			false
		end
	end

	def current?(key, path)
		"#{key}" if current_page? path
		# We use string interpolation "#{key}" here to access the CSS classes we are going to create.
	end

	



end
