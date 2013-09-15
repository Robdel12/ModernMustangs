MondernMustangs::Application.routes.draw do

  resources :comments 

  # This line mounts Forem's routes at /forums by default.
  # This means, any requests to the /forums URL of your application will go to Forem::ForumsController#index.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Forem relies on it being the default of "forem"
  mount Forem::Engine, :at => '/forums'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root :to => "blog#index"
  
  get 'blog' => 'blog#index'
  get 'blog/:title' => 'blog#post'
  get 'blog/:title/:comments' => 'comments#index'

end