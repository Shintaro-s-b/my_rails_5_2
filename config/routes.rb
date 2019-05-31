Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/manage'
  post 'posts/new'
  get 'works/index'
  get 'works/manage'
  post 'works/upload'
  post 'works/add_comment'
  post 'works/reset_comment'
  post 'works/set_description'
  post 'works/set_name'
  post 'works/set_url'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
