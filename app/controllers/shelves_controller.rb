# frozen_string_literal: true

class ShelvesController < ApplicationController
  def index
    @shelves = policy_scope(Shelf)
  end

  def show
    @shelf = policy_scope(Shelf).find(params[:id])
    authorize @shelf
  end

  def new
    @shelf = Shelf.new
    authorize @shelf
  end

  def create
    @shelf = current_user.shelves.new(shelf_params)
    authorize @shelf
    if @shelf.save
      redirect_to shelves_path
    else
      render 'new'
    end
  end

  def edit
    @shelf = cpolicy_scope(Shelf).find(params[:id])
    authorize @shelf
  end

  def update
    @shelf = policy_scope(Shelf).find(params[:id])
    authorize @shelf
    if @shelf.update(shelf_params)
      redirect_to shelves_path
    else
      render 'edit'
    end
  end

  def destroy
    shelf = policy_scope(Shelf).find(params[:id])
    authorize @shelf
    shelf.destroy
    redirect_to shelves_path
  end

  private

  def shelf_params
    params.require(:shelf).permit(:name)
  end
end
