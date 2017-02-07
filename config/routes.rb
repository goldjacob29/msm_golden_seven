Rails.application.routes.draw do

  get("/", { :controller => "msm", :action => "index" })

  # Directors

  get("/directors/director_new_form", { :controller => "msm", :action => "director_add"})
  get("/directors/director_create", { :controller => "msm", :action => "director_create"})

  get("/directors/:id/edit_form", { :controller => "msm", :action => "director_edit"})
  get("/directors/director_update/:id", { :controller => "msm", :action => "director_update"})

  get("/directors", { :controller => "msm", :action => "director_index" })
  get("/directors/:id", { :controller => "msm", :action => "director_show" })

  get("/delete_director/:id", { :controller => "msm", :action => "director_delete"})



  # Actors

  get("/actors", { :controller => "msm", :action => "actor_index" })

  get("/actors/actor_new_form", { :controller => "msm", :action => "actor_add"})
  get("/actors/actor_create", { :controller => "msm", :action => "actor_create"})

  get("/actors/:id/edit_form", { :controller => "msm", :action => "actor_edit"})
  get("/actors/actor_update/:id", { :controller => "msm", :action => "actor_update"})

  get("/actors", { :controller => "msm", :action => "actor_index" })
  get("/actors/:id", { :controller => "msm", :action => "actor_show" })

  get("/delete_actor/:id", { :controller => "msm", :action => "actor_delete"})

  # Movies

  get("/movies", { :controller => "msm", :action => "movie_index" })

end
