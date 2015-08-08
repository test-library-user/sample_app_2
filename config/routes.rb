Rails.application.routes.draw do
  
  # STATIC PAGES
  root 'static_pages#home'
  get 'static_pages/help'
  get 'static_pages/about'

end
