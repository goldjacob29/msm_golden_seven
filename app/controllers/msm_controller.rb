class MsmController < ApplicationController

  def index

  end

  # directors

  def director_index

    @list_of_directors = Director.all
    render("/msm/directors/director_index.html.erb")

  end

  def director_show
    @d = Director.find_by({:id => params[:id]})
    render("/msm/directors/director_show.html.erb")
  end

  def director_delete
    d = Director.find_by({:id => params[:id]})
    d.destroy
    redirect_to("/directors")
  end

  def director_add
    render("/msm/directors/new_form.html.erb")

  end

  # actors

  def actor_index

    render("/msm/actors/actor_index.html.erb")

  end

  #movies

  def movie_index

    render("/msm/movies/movie_index.html.erb")

  end


end
