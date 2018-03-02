class Ranking2017sController < ApplicationController
  before_action :set_ranking2017, only: [:show, :edit, :update, :destroy]

  # GET /ranking2017s
  # GET /ranking2017s.json
  def index
    @ranking2017s = Ranking2017.all
    render JSON:Ranking2017
  end

  # GET /ranking2017s/1
  # GET /ranking2017s/1.json
  def show
  end

  # GET /ranking2017s/new
  def new
    @ranking2017 = Ranking2017.new
  end

  # GET /ranking2017s/1/edit
  def edit
  end

  # POST /ranking2017s
  # POST /ranking2017s.json
  def create
    @ranking2017 = Ranking2017.new(ranking2017_params)

    respond_to do |format|
      if @ranking2017.save
        format.html { redirect_to @ranking2017, notice: 'Ranking2017 was successfully created.' }
        format.json { render :show, status: :created, location: @ranking2017 }
      else
        format.html { render :new }
        format.json { render json: @ranking2017.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ranking2017s/1
  # PATCH/PUT /ranking2017s/1.json
  def update
    respond_to do |format|
      if @ranking2017.update(ranking2017_params)
        format.html { redirect_to @ranking2017, notice: 'Ranking2017 was successfully updated.' }
        format.json { render :show, status: :ok, location: @ranking2017 }
      else
        format.html { render :edit }
        format.json { render json: @ranking2017.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ranking2017s/1
  # DELETE /ranking2017s/1.json
  def destroy
    @ranking2017.destroy
    respond_to do |format|
      format.html { redirect_to ranking2017s_url, notice: 'Ranking2017 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ranking2017
      @ranking2017 = Ranking2017.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ranking2017_params
      params.require(:ranking2017).permit(:this_week, :name, :country, :average_points, :total_points, :events_played, :points_lost_this_year, :points_gained_this_year, :events_played)
    end
end
