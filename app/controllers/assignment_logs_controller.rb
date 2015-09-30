class AssignmentLogsController < ApplicationController
  before_action :set_assignment_log, only: [:show, :edit, :update, :destroy]

  # GET /assignment_logs
  # GET /assignment_logs.json
  def index
    @assignment_logs = AssignmentLog.all
  end

  # GET /assignment_logs/1
  # GET /assignment_logs/1.json
  def show
  end

  # GET /assignment_logs/new
  def new
    @assignment_log = AssignmentLog.new
  end

  # GET /assignment_logs/1/edit
  def edit
  end

  # POST /assignment_logs
  # POST /assignment_logs.json
  def create
    @assignment_log = AssignmentLog.new(assignment_log_params)

    respond_to do |format|
      if @assignment_log.save
        format.html { redirect_to @assignment_log, notice: 'Assignment log was successfully created.' }
        format.json { render :show, status: :created, location: @assignment_log }
      else
        format.html { render :new }
        format.json { render json: @assignment_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignment_logs/1
  # PATCH/PUT /assignment_logs/1.json
  def update
    respond_to do |format|
      if @assignment_log.update(assignment_log_params)
        format.html { redirect_to @assignment_log, notice: 'Assignment log was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment_log }
      else
        format.html { render :edit }
        format.json { render json: @assignment_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignment_logs/1
  # DELETE /assignment_logs/1.json
  def destroy
    @assignment_log.destroy
    respond_to do |format|
      format.html { redirect_to assignment_logs_url, notice: 'Assignment log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_log
      @assignment_log = AssignmentLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_log_params
      params.require(:assignment_log).permit(:staff)
    end
end
