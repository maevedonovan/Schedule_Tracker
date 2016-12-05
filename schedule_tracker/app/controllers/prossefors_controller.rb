class ProsseforsController < ApplicationController
  before_action :set_prossefor, only: [:show, :edit, :update, :destroy]

  # GET /prossefors
  # GET /prossefors.json
  def index
    @prossefors = Prossefor.all
  end

  # GET /prossefors/1
  # GET /prossefors/1.json
  def show
  end

  # GET /prossefors/new
  def new
    @prossefor = Prossefor.new
  end

  # GET /prossefors/1/edit
  def edit
  end

  # POST /prossefors
  # POST /prossefors.json
  def create
    @prossefor = Prossefor.new(prossefor_params)

    respond_to do |format|
      if @prossefor.save
        format.html { redirect_to @prossefor, notice: 'Prossefor was successfully created.' }
        format.json { render :show, status: :created, location: @prossefor }
      else
        format.html { render :new }
        format.json { render json: @prossefor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prossefors/1
  # PATCH/PUT /prossefors/1.json
  def update
    respond_to do |format|
      if @prossefor.update(prossefor_params)
        format.html { redirect_to @prossefor, notice: 'Prossefor was successfully updated.' }
        format.json { render :show, status: :ok, location: @prossefor }
      else
        format.html { render :edit }
        format.json { render json: @prossefor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prossefors/1
  # DELETE /prossefors/1.json
  def destroy
    @prossefor.destroy
    respond_to do |format|
      format.html { redirect_to prossefors_url, notice: 'Prossefor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prossefor
      @prossefor = Prossefor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prossefor_params
      params.require(:prossefor).permit(:f_name, :l_name, :department)
    end
end
