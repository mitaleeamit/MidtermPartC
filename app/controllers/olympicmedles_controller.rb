class OlympicmedlesController < ApplicationController
  before_action :set_olympicmedle, only: [:show, :edit, :update, :destroy]

  # GET /olympicmedles
  # GET /olympicmedles.json
  def index
    @olympicmedles = Olympicmedle.all
  end

  # GET /olympicmedles/1
  # GET /olympicmedles/1.json
  def show
  end

  # GET /olympicmedles/new
  def new
    @olympicmedle = Olympicmedle.new
  end

  # GET /olympicmedles/1/edit
  def edit
  end

  # POST /olympicmedles
  # POST /olympicmedles.json
  def create
    @olympicmedle = Olympicmedle.new(olympicmedle_params)

    respond_to do |format|
      if @olympicmedle.save
        format.html { redirect_to @olympicmedle, notice: 'Olympicmedle was successfully created.' }
        format.json { render :show, status: :created, location: @olympicmedle }
      else
        format.html { render :new }
        format.json { render json: @olympicmedle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /olympicmedles/1
  # PATCH/PUT /olympicmedles/1.json
  def update
    respond_to do |format|
      if @olympicmedle.update(olympicmedle_params)
        format.html { redirect_to @olympicmedle, notice: 'Olympicmedle was successfully updated.' }
        format.json { render :show, status: :ok, location: @olympicmedle }
      else
        format.html { render :edit }
        format.json { render json: @olympicmedle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /olympicmedles/1
  # DELETE /olympicmedles/1.json
  def destroy
    @olympicmedle.destroy
    respond_to do |format|
      format.html { redirect_to olympicmedles_url, notice: 'Olympicmedle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_olympicmedle
      @olympicmedle = Olympicmedle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def olympicmedle_params
      params.require(:olympicmedle).permit(:athlete_name, :event, :country, :medal_type, :eventdate)
    end
end
