class PatternsController < ApplicationController
  before_action :set_pattern, only: [:show, :edit, :update, :destroy]

  # GET /patterns
  # GET /patterns.json
  def index
    @patterns = Pattern.all
  end

  # GET /patterns/1
  # GET /patterns/1.json
  def show
  end

  # GET /patterns/new
  def new
    @pattern = Pattern.new
  end

  # GET /patterns/1/edit
  def edit
  end

  # POST /patterns
  # POST /patterns.json
  def create
    @pattern = Pattern.new(pattern_params)

    if @pattern.save
      redirect_to @pattern, notice: 'Pattern was successfully created.'
    else
      render :new, notice: 'Unable to save pattern.'
    end
  end

  # PATCH/PUT /patterns/1
  # PATCH/PUT /patterns/1.json
  def update
    if @pattern.update(pattern_params)
      redirect_to @pattern, notice: 'Pattern was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /patterns/1
  # DELETE /patterns/1.json
  def destroy
    @pattern.destroy
      redirect_to patterns_url, notice: 'Pattern was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pattern
      @pattern = Pattern.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pattern_params
      params.require(:pattern).permit(:name, :slug, :image, :remove_image)
    end
end
