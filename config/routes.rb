Rails.application.routes.draw do
  
 
  
  resources :contacts do 
    get "delete" 
  end

  resources :contact_types , path: "contact-types" do 
    get "delete" 
  end

  resources :debts do 
    get "delete" 
  end

  resources :debt_types, path: "debt-types" do 
    get "delete" 
  end

  resources :income_saving_items
  resources :income_savings
  resources :income_expense_items
  resources :income_expenses
 
  resources :expense_distributions
  resources :income_distributions
  resources :wallet_movements, path: "wallet-movements" do 
    get "delete" 
  end

  resources :bank_movements, path: "bank-movements" do 
    get "delete" 
  end

  resources :savings do 
    get "delete" 
  end

  resources :income_types, path: "income-types" do 
    get "delete" 
  end

  resources :incomes do 
    get "delete" 
  end

  resources :expenses do 
    get "delete" 
  end

  resources :banks do 
    get "delete" 
  end

  resources :wallets do 
    get "delete" 
  end

  resources :expense_categories, path: "expense-categories" do 
    get "delete" 
  end

  resources :priorities do 
    get "delete" 
  end

  get "/dashboard" => "dashboard#index", as: :dashboard
  resources :profiles do   
    get "delete" 
  end

  resources :permission_items do   
    get "delete" 
  end

  resources :permissions do   
    get "delete" 
  end

  resources :features do   
    get "delete" 
  end

  resources :roles do   
    get "delete" 
  end

  scope "account" do 
    resources :profiles 
    get "profile/:uid" => "profiles#edit", as: :edit_account
  end
  
  

  get "/users"     => "custom_users#index", as: :all_users 
  get "/users/unregistered"     => "custom_users#unregistered", as: :unregistered_commission_percentage 
  post "/users/new"     => "custom_users#create", as: :create_user
  get "/users/new"     => "custom_users#new", as: :new_user
  get "/user/edit/:id" => "custom_users#edit", as: :edit_user
  patch "/user/update/:id" => "custom_users#update", as: :update_user
  delete "/user/destroy/:id" => "custom_users#destroy", as: :destroy_user
  get "/user/delete/:id" => "custom_users#delete", as: :delete_user
  
  
  get "/user/enable/:id" => "custom_users#get_enable", as: :get_enable_user_account
  post "/user/enable/:id" => "custom_users#post_enable", as: :post_enable_user_account
  get "/user/disable/:id" => "custom_users#get_disable", as: :get_disable_user_account
  post "/user/disable/:id" => "custom_users#post_disable", as: :post_disable_user_account


  devise_for :users, path: '', controllers: { 
    registrations: "users/registrations",
    confirmations: 'users/confirmations',
    passwords: "users/passwords",
    sessions: "users/sessions"
        
    }, 
    path_names: {
        sign_in: 'login', 
        sign_out: 'logout', 
        password: 'secret', 
        confirmation: 'verification', 
        unlock: 'unblock', 
        registration: 'signup', 
        sign_up: '' 
    }
   
    devise_scope :user do
      root to: "users/sessions#new"
      authenticated :user do
        root 'dashboard#index', as: :authenticated_root
      end
  
      unauthenticated do
        root 'users/sessions#new', as: :unauthenticated_root
      end
    end


    # Dynamic error pages
    get "/404", to: "errors#not_found"
    get "/422", to: "errors#unacceptable"
    get "/500", to: "errors#internal_error"

  

end