Rails.application.routes.draw do
  get 'works/index'
  get 'works/show'
  post 'works/upload'
  post 'works/add_comment'
  post 'works/reset_comment'
  post 'works/set_description'
  post 'works/set_name'
  post 'works/set_url'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
