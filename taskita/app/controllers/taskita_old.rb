class TaskitaController < ApplicationController
  before_action :set_taskitum, only: [:show, :edit, :update, :destroy]

  # GET /taskita
  # GET /taskita.json
  def index
    @taskita = Taskita.all
  end

  # GET /taskita/1
  # GET /taskita/1.json
  def show
  end

  # GET /taskita/new
  def new
    @taskitum = Taskitum.new
  end

  # GET /taskita/1/edit
  def edit
  end

  # POST /taskita
  # POST /taskita.json
  def create
    @taskitum = Taskitum.new(taskitum_params)

    respond_to do |format|
      if @taskitum.save
        format.html { redirect_to @taskitum, notice: 'Taskitum was successfully created.' }
        format.json { render :show, status: :created, location: @taskitum }
      else
        format.html { render :new }
        format.json { render json: @taskitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskita/1
  # PATCH/PUT /taskita/1.json
  def update
    respond_to do |format|
      if @taskitum.update(taskitum_params)
        format.html { redirect_to @taskitum, notice: 'Taskitum was successfully updated.' }
        format.json { render :show, status: :ok, location: @taskitum }
      else
        format.html { render :edit }
        format.json { render json: @taskitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskita/1
  # DELETE /taskita/1.json
  def destroy
    @taskitum.destroy
    respond_to do |format|
      format.html { redirect_to taskita_url, notice: 'Taskitum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskitum
      @taskitum = Taskitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taskitum_params
      params.require(:taskitum).permit(:task)
    end
end
