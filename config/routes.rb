Rails.application.routes.draw do
  namespace :admin do
    get "dashboard/main"
    get "dashboard/user"
    get "dashboard/blog"
  end

  # get 'pages/about'
  # get 'pages/contact'
  # to get rid of /pages in URI:
  get "about", to: "pages#about"
  # as: allows you to change prefix
  get "leadgen/advertising/asdf/lead", to: "pages#contact", as: "lead"

  resources :blogs
  resources :posts

  # define landing page route
  root to: "pages#home"
end
