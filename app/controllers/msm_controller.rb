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
    render("/msm/directors/director_new_form.html.erb")

  end

  def director_create
    d = Director.new
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]
    d.save

    redirect_to("/directors/#{d.id}")
  end

  def director_edit

    @d = Director.find_by({:id => params[:id]})

    render("/msm/directors/director_edit.html.erb")

  end

  def director_update

    d = Director.find_by({:id => params[:id]})
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.image_url = params[:image_url]
    d.save

    redirect_to("/directors/#{d.id}")

  end




  # actors

  def actor_index

    @list_of_actors = Actor.all
    render("/msm/actors/actor_index.html.erb")

  end

  def actor_show
    @a = Actor.find_by({:id => params[:id]})
    render("/msm/actors/actor_show.html.erb")
  end

  def actor_delete
    a = Actor.find_by({:id => params[:id]})
    a.destroy
    redirect_to("/actors")
  end

  def actor_add
    render("/msm/actors/actor_new_form.html.erb")

  end

  def actor_create
    a = Actor.new
    a.name = params[:name]
    a.bio = params[:bio]
    a.dob = params[:dob]
    a.image_url = params[:image_url]
    a.save

    redirect_to("/actors/#{a.id}")
  end

  def actor_edit

    @a = Actor.find_by({:id => params[:id]})

    render("/msm/actors/actor_edit.html.erb")

  end

  def actor_update

    a = Actor.find_by({:id => params[:id]})
    a.name = params[:name]
    a.bio = params[:bio]
    a.dob = params[:dob]
    a.image_url = params[:image_url]
    a.save

    redirect_to("/actors/#{a.id}")

  end

  #movies

  def movie_index

    @list_of_movies = Movie.all
    render("/msm/movies/movie_index.html.erb")

  end

  def movie_show
    @m = Movie.find_by({:id => params[:id]})
    render("/msm/movies/movie_show.html.erb")
  end

  def movie_delete
    m = Movie.find_by({:id => params[:id]})
    m.destroy
    redirect_to("/movies")
  end

  def movie_add
    render("/msm/movies/movie_new_form.html.erb")

  end

  def movie_create
    m = Actor.new
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.description = params[:description]
    m.image_url = params[:image_url]
    m.save

    redirect_to("/movies/#{m.id}")
  end

  def movie_edit

    @m = Movie.find_by({:id => params[:id]})

    render("/msm/movies/movie_edit.html.erb")

  end

  def movie_update

    m = Movie.find_by({:id => params[:id]})
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.description = params[:description]
    m.image_url = params[:image_url]
    m.save

    redirect_to("/movies/#{m.id}")

  end


end
