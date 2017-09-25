Rails.application.routes.draw do
  devise_for :users
  root 'welcome#yy'

  get "yy" => "welcome#yy"


  resources :categories do
    collection do
      get :for_wechat_product_new_picker
      get :for_wechat_category_new_picker
      post :create_form_api
    end
    member do
      post :update_column
      post :update_form_api
      get :get_category_detail
      post :update_image_form_api
      post :index_show
      post :index_hide
    end
  end
  resources :products do
    collection do
      post :create_form_wechat
    end
    member do
      post :update_form_wechat
      post :update_product_image
      get :get_product_detail
    end
  end
  resources :homeset do
    member do
      post :update_column
      post :hide
      post :public
    end
  end
end
