Rails.application.routes.draw do
  scope ":locale" , defaults: { locale: I18n.locale } do
    resources :vidguks
    get 'abouts/about_us'

    get 'abouts/about_program'

    get 'userparams/new'

    get 'userparams/edit'

    get 'userparams/profile'

    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)

  devise_scope :admin_user do
    get 'admin/logout', :to => 'active_admin/devise/sessions#destroy'
  end
    resources :kritics do
      member do
        get 'like', to: 'kritics#like'
        get 'dislike', to: 'kritics#dislike'
      end
    end
    resources :zhanrs
    resources :books do
      member do
        get 'read', to: 'books#read'
      end
    end
    resources :auths do
      member do
        get 'like', to: 'auths#like'
        get 'dislike', to: 'auths#dislike'
      end
    end
    resources :line_items
    resources :books do
      member do
        get 'like', to: 'books#like'
        get 'dislike', to: 'books#dislike'
      end
    end
    resources :vidguks do
      member do
        get 'like', to: 'vidguks#like'
        get 'dislike', to: 'vidguks#dislike'
      end
    end
    resources :abouts
  #  get 'home#index'
    root :to => 'index#index'
    get 'index', to: 'index#index'

    #get 'edit', to: 'books#edit'
    get'books', to: 'books#index'
    get 'new', to:'books#new'
    #get 'read', to:'books#read'
    get 'show', to: 'books#show'
    post 'downl', to: 'books#downl'

    #get 'edit', to: 'zhanr#edit'
    get'zhanr', to: 'zhanr#index'
    #get 'new', to:'zhanr#new'
    get 'show', to: 'zhanr#show'

    get 'edit', to: 'auth#edit'
    get'auth', to: 'auth#index'
    get 'new', to:'auth#new'
    get 'show', to: 'auth#show'

    get 'edit', to: 'kritics#edit'
    get'kritics', to: 'kritics#index'
    get 'new', to:'kritics#new'
    get 'show', to: 'kritics#show'

    get 'edit', to: 'vidguks#edit'
    get'vidguks', to: 'vidguks#index'
    get 'new', to:'vidguks#new'
    get 'show', to: 'vidguks#show'


    get 'about_us', to: 'abouts#about_us'
    get 'about_us', to: 'abouts#about_program'
    get 'for_holders', to: 'abouts#for_holders'

    resources :conversations, only: [:index, :show, :destroy] do

      member do
        post :reply
        post :restore
      end
      collection do
        delete :empty_trash
      end
      member do
        post :mark_as_read
      end
    end


resources :messages, only: [:new, :create]


  devise_scope :user do
    get 'sign_up', to: 'devise/registrations#new'
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_out', to: 'devise/sessions#destroy'
  end
  get 'show', to: 'home#show'
  get  'profile', to: 'userparams#profile'
  get 'my_books', to: "userparams#my_books"
  resources :userparams



    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  get '*path', to: redirect("/#{I18n.default_locale}/%{*path}")
  get '', to: redirect("/#{I18n.default_locale}/index")
end
