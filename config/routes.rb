Rails.application.routes.draw do

  get("/", { :controller => "msm", :action => "index" })

  # Directors

  get("/directors/new_form", { :controller => "msm", :action => "director_add"})

  get("/directors", { :controller => "msm", :action => "director_index" })
  get("/directors/:id", { :controller => "msm", :action => "director_show" })

  get("/delete_director/:id", { :controller => "msm", :action => "director_delete"})



  # Actors

  get("/actors", { :controller => "msm", :action => "actor_index" })

  # Movies

  get("/movies", { :controller => "msm", :action => "movie_index" })

end
