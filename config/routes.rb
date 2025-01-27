Rails.application.routes.draw do
  # Routes for the Favorite resource:

  # CREATE
  post("/favorite", { :controller => "favorites", :action => "create" })
          
  # READ
  get("/favorites", { :controller => "favorites", :action => "index" })
  
  get("/favorites/:path_id", { :controller => "favorites", :action => "show" })
  
  # UPDATE
  
  post("/favorite/:path_id", { :controller => "favorites", :action => "update" })
  
  # DELETE
  get("/favorite/:path_id", { :controller => "favorites", :action => "destroy" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  post("/comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Job resource:

  # CREATE
  post("/job", { :controller => "jobs", :action => "create" })
          
  # READ
  get("/jobs", { :controller => "jobs", :action => "index" })
  
  get("/jobs/:path_id", { :controller => "jobs", :action => "show" })
  
  # UPDATE
  
  post("/job/:path_id", { :controller => "jobs", :action => "update" })
  
  # DELETE
  get("/job/:path_id", { :controller => "jobs", :action => "destroy" })

  #------------------------------

  devise_for :users

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
