class Ranking2016sController < ApplicationController
  before_action :set_ranking2016, only: [:show, :edit, :update, :destroy]

  # GET /ranking2016s
  # GET /ranking2016s.json
  def index
    @ranking2016s = Ranking2016.all
    render JSON:Ranking2016
  end

  # GET /ranking2016s/1
  # GET /ranking2016s/1.json
  def show
  end

  # GET /ranking2016s/new
  def new
    @ranking2016 = Ranking2016.new
  end

  # GET /ranking2016s/1/edit
  def edit
  end

  # POST /ranking2016s
  # POST /ranking2016s.json
  def create
    @ranking2016 = Ranking2016.new(ranking2016_params)

    respond_to do |format|
      if @ranking2016.save
        format.html { redirect_to @ranking2016, notice: 'Ranking2016 was successfully created.' }
        format.json { render :show, status: :created, location: @ranking2016 }
      else
        format.html { render :new }
        format.json { render json: @ranking2016.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ranking2016s/1
  # PATCH/PUT /ranking2016s/1.json
  def update
    respond_to do |format|
      if @ranking2016.update(ranking2016_params)
        format.html { redirect_to @ranking2016, notice: 'Ranking2016 was successfully updated.' }
        format.json { render :show, status: :ok, location: @ranking2016 }
      else
        format.html { render :edit }
        format.json { render json: @ranking2016.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ranking2016s/1
  # DELETE /ranking2016s/1.json
  def destroy
    @ranking2016.destroy
    respond_to do |format|
      format.html { redirect_to ranking2016s_url, notice: 'Ranking2016 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ranking2016
      @ranking2016 = Ranking2016.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ranking2016_params
      params.require(:ranking2016).permit(:this_week, :name, :country, :average_points, :total_points, :events_played, :points_lost_this_year, :points_gained_this_year, :events_played)
    end
end
