class FavoritesController < ApplicationController
  def index
    matching_favorites = Favorite.all

    @list_of_favorites = matching_favorites.order({ :created_at => :desc })

    render({ :template => "favorites/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_favorites = Favorite.where({ :id => the_id })

    @the_favorite = matching_favorites.at(0)

    render({ :template => "favorites/show" })
  end

  def create
    the_favorite = Favorite.new
    the_favorite.user_id = params.fetch("query_user_id")
    the_favorite.job_id = params.fetch("query_job_id")

    if the_favorite.valid?
      the_favorite.save
      redirect_to("/favorites", { :notice => "Favorite created successfully." })
    else
      redirect_to("/favorites", { :alert => the_favorite.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_favorite = Favorite.where({ :id => the_id }).at(0)

    the_favorite.user_id = params.fetch("query_user_id")
    the_favorite.job_id = params.fetch("query_job_id")

    if the_favorite.valid?
      the_favorite.save
      redirect_to("/favorites/#{the_favorite.id}", { :notice => "Favorite updated successfully."} )
    else
      redirect_to("/favorites/#{the_favorite.id}", { :alert => the_favorite.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_favorite = Favorite.where({ :id => the_id }).at(0)

    the_favorite.destroy

    redirect_to("/favorites", { :notice => "Favorite deleted successfully."} )
  end
end
