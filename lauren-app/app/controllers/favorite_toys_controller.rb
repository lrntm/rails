class FavoriteToysController < ApplicationController
  before_action :set_favorite_toy, only: [:show, :edit, :update, :destroy]

  # GET /favorite_toys
  # GET /favorite_toys.json
  def index
    @favorite_toys = FavoriteToy.all
  end

  # GET /favorite_toys/1
  # GET /favorite_toys/1.json
  def show
  end

  # GET /favorite_toys/new
  def new
    @favorite_toy = FavoriteToy.new
  end

  # GET /favorite_toys/1/edit
  def edit
  end

  # POST /favorite_toys
  # POST /favorite_toys.json
  def create
    @favorite_toy = FavoriteToy.new(favorite_toy_params)

    respond_to do |format|
      if @favorite_toy.save
        format.html { redirect_to @favorite_toy, notice: 'Favorite toy was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_toy }
      else
        format.html { render :new }
        format.json { render json: @favorite_toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_toys/1
  # PATCH/PUT /favorite_toys/1.json
  def update
    respond_to do |format|
      if @favorite_toy.update(favorite_toy_params)
        format.html { redirect_to @favorite_toy, notice: 'Favorite toy was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_toy }
      else
        format.html { render :edit }
        format.json { render json: @favorite_toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_toys/1
  # DELETE /favorite_toys/1.json
  def destroy
    @favorite_toy.destroy
    respond_to do |format|
      format.html { redirect_to favorite_toys_url, notice: 'Favorite toy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_toy
      @favorite_toy = FavoriteToy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_toy_params
      params.require(:favorite_toy).permit(:name, :type)
    end
end
