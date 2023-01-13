class DataSessionsController < ApplicationController
  before_action :set_data_session, only: %i[ show edit update destroy ]

  # GET /data_sessions or /data_sessions.json
  def index
    @data_sessions = DataSession.all
  end

  # GET /data_sessions/1 or /data_sessions/1.json
  def show
  end

  # GET /data_sessions/new
  def new
    @data_session = DataSession.new
  end

  # GET /data_sessions/1/edit
  def edit
  end

  # POST /data_sessions or /data_sessions.json
  def create
    @data_session = DataSession.new(data_session_params)

    respond_to do |format|
      if @data_session.save
        format.html { redirect_to data_session_url(@data_session), notice: "Data session was successfully created." }
        format.json { render :show, status: :created, location: @data_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @data_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_sessions/1 or /data_sessions/1.json
  def update
    respond_to do |format|
      if @data_session.update(data_session_params)
        format.html { redirect_to data_session_url(@data_session), notice: "Data session was successfully updated." }
        format.json { render :show, status: :ok, location: @data_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @data_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_sessions/1 or /data_sessions/1.json
  def destroy
    @data_session.destroy

    respond_to do |format|
      format.html { redirect_to data_sessions_url, notice: "Data session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_session
      @data_session = DataSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def data_session_params
      params.require(:data_session).permit(:title, :subtitle, :image, :body, :keywords)
    end
end
