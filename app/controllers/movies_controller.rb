class MoviesController < ApplicationController
  def index

  end

  def person_list
    @directors = Director.all
    @actors = Actor.all

    if params[:person_type] == "directors"
      @person = @directors
      @title = "Directors"
      @url = "director"
    elsif params[:person_type] == "actors"
      @person = @actors
      @title = "Actors"
      @url = "actor"
    end

  end

  def movie_list
    @movies = Movie.all

  end

  def individual
    @directors = Director.all
    @actors = Actor.all

    if params[:person_type] == "directors"
      @person = @directors
      @title = "Directors"
      @url = "director"

    elsif params[:person_type] == "actors"
      @person = @actors
      @title = "Actors"
      @url = "actor"
    end

    i = @person.find(params[:id])
    @id = i.id
    @name = i.name
    @bio = i.bio
    @dob = i.dob
    @image = i.image_url

  end

  def individual_movie
    @movies = Movie.all

    i = @movies.find(params[:id])
    @id = i.id
    @title = i.title
    @year = i.year
    @duration = i.duration
    @description = i.description
    @image = i.image_url

  end

  def delete_person
    @directors = Director.all
    @actors = Actor.all

    if params[:person_type] == "director"
      @person = @directors
      @title = "Directors"
    elsif params[:person_type] == "actor"
      @person = @actors
      @title = "Actors"
    end

    i = @person.find(params[:id])
    i.destroy

    redirect_to("http://localhost:3000/#{@title.downcase}")
  end

  def add_person
    @directors = Director.all
    @actors = Actor.all

    if params[:person_type] == "directors"
      @person = @directors
      @title = "Directors"
      @url = "director"

    elsif params[:person_type] == "actors"
      @person = @actors
      @title = "Actors"
      @url = "actor"
    end
  end

  def create_person
    @directors = Director.all
    @actors = Actor.all

    if params[:person_type] == "director"
      @person = @directors
      @title = "Directors"
      @url = "director"
      i = Director.new

    elsif params[:person_type] == "actor"
      @person = @actors
      @title = "Actors"
      @url = "actor"
      i = Actor.new
    end

    i.name = params[:name]
    i.bio = params[:bio]
    i.dob = params[:dob]
    i.image_url = params[:image_url]
    i.save

    redirect_to("http://localhost:3000/#{@title.downcase}")
  end

  def add_movie
    @movies = Movie.all

  end

  def create_movie
    @movies = Movie.all
    i = @movies.new

    i.title = params[:title]
    i.year = params[:year]
    i.duration = params[:duration]
    i.description = params[:description]
    i.image_url = params[:image_url]
    i.save

    redirect_to("http://localhost:3000/movies")
  end

  def edit_individual
    @directors = Director.all
    @actors = Actor.all

    if params[:person_type] == "directors"
      @person = @directors
      @title = "Directors"
      @url = "director"

    elsif params[:person_type] == "actors"
      @person = @actors
      @title = "Actors"
      @url = "actor"
    end

    @i = @person.find(params[:id])
    @id = @i.id
  end

  def update_person
    @directors = Director.all
    @actors = Actor.all

    if params[:person_type] == "director"
      @person = @directors
      @title = "Directors"
      @url = "director"
      i = Director.find(params[:id])

    elsif params[:person_type] == "actor"
      @person = @actors
      @title = "Actors"
      @url = "actor"
      i = Actor.find(params[:id])
    end

    i.name = params[:name]
    i.bio = params[:bio]
    i.dob = params[:dob]
    i.image_url = params[:image_url]
    i.save

    redirect_to("http://localhost:3000/#{@title.downcase}")
  end

  def edit_movie
    @movies = Movie.all


    i = @movies.find(params[:id])
    @id = i.id

    @title = i.title
    @year = i.year
    @duration = i.duration
    @description = i.description
    @image_url = i.image_url
  end

  def update_movie
    @movies = Movie.all

    i = @movies.find(params[:id])

    i.title = params[:title]
    i.year = params[:year]
    i.duration = params[:duration]
    i.description = params[:description]
    i.image_url = params[:image_url]
    i.save

    redirect_to("http://localhost:3000/movies")

  end
end
