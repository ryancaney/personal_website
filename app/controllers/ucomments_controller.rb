class UcommentsController < ApplicationController
  # How the website handles a new comment
  def index
    @ucomment = Ucomment.where("recipe_id = ? and created_at > ?", params[:recipe_id], Time.at(params[:after].to_i + 1))

    respond_to do |f|
      f.js do

      end
    end
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ucomment = @recipe.ucomments.create(params[:ucomment])

    respond_to do |f|
      if @ucomment.save
        f.html { redirect_to recipe_path(@recipe)}
        f.js
      else
        f.html { render :action => "new" }
        f.js
      end
    end
  end

  # How the website deletes a comment
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @ucomment = @recipe.ucomments.find(params[:id])
    @ucomment.destroy
    redirect_to recipe_path(@recipe)
  end
end
