class PagesController < ActionController::Base
  
  #Make static pages use the application layout.
  layout  "application"
  
  def home
    #static (for now)
  end
end