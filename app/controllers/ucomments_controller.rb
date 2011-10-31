class UcommentsController < ApplicationController
  # How the website handles a new comment

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
