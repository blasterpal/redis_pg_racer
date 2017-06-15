class StarWarsFactsController < ApplicationController
  before_action :set_star_wars_fact, only: [:show, :update, :destroy]

  # GET /star_wars_facts
  def index
    @star_wars_facts = StarWarsFact.all

    render json: @star_wars_facts
  end

  # GET /star_wars_facts/1
  def show
    render json: @star_wars_fact
  end

  # POST /star_wars_facts
  def create
    @star_wars_fact = StarWarsFact.new(star_wars_fact_params)

    if @star_wars_fact.save
      render json: @star_wars_fact, status: :created, location: @star_wars_fact
    else
      render json: @star_wars_fact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /star_wars_facts/1
  def update
    if @star_wars_fact.update(star_wars_fact_params)
      render json: @star_wars_fact
    else
      render json: @star_wars_fact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /star_wars_facts/1
  def destroy
    @star_wars_fact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_star_wars_fact
      @star_wars_fact = StarWarsFact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def star_wars_fact_params
      params.require(:star_wars_fact).permit(:character, :droid, :planet, :quote, :vehicle)
    end
end
