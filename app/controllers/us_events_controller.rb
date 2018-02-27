class UsEventsController < ApplicationController
  before_action :set_us_event, only: [:show, :edit, :update, :destroy]

  # GET /us_events
  # GET /us_events.json
  def index
    @us_events = UsEvent.all
  end

  # GET /us_events/1
  # GET /us_events/1.json
  def show
  end

  # GET /us_events/new
  def new
    @us_event = UsEvent.new
  end

  # GET /us_events/1/edit
  def edit
  end

  # POST /us_events
  # POST /us_events.json
  def create
    @us_event = UsEvent.new(us_event_params)

    respond_to do |format|
      if @us_event.save
        format.html { redirect_to @us_event, notice: 'Us event was successfully created.' }
        format.json { render :show, status: :created, location: @us_event }
      else
        format.html { render :new }
        format.json { render json: @us_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /us_events/1
  # PATCH/PUT /us_events/1.json
  def update
    respond_to do |format|
      if @us_event.update(us_event_params)
        format.html { redirect_to @us_event, notice: 'Us event was successfully updated.' }
        format.json { render :show, status: :ok, location: @us_event }
      else
        format.html { render :edit }
        format.json { render json: @us_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /us_events/1
  # DELETE /us_events/1.json
  def destroy
    @us_event.destroy
    respond_to do |format|
      format.html { redirect_to us_events_url, notice: 'Us event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_us_event
      @us_event = UsEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def us_event_params
      params.require(:us_event).permit(:name, :start_date, :address, :latitude, :longitude)
    end
end
