Qok::Application.routes.draw do
  
  root :to => 'static_pages#home'

  get 'static_pages/home'
  get "static_pages/about"
  get "static_pages/help"
  get "static_pages/policy"
  get "static_pages/contact"
  
  match '/home',    :to => 'static_pages#home'
  match '/contact', :to => 'static_pages#contact'
  match '/about',   :to => 'static_pages#about'
  match '/help',    :to => 'static_pages#help'
  match '/policy',    :to => 'static_pages#policy'

end
