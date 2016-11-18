class HousingDetailManagementsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_housing_detail_management, only: [:show, :edit, :update, :destroy]

  # GET /housing_detail_managements
  # GET /housing_detail_managements.json
  def index
    @housing_detail_managements = HousingDetailManagement.all.order("id DESC")
  end

  # GET /housing_detail_managements/1
  # GET /housing_detail_managements/1.json
  def show
  end

  # GET /housing_detail_managements/new
  def new
    @housing_detail_management = HousingDetailManagement.new
  end

  # GET /housing_detail_managements/1/edit
  def edit
    @housing_detail = HousingDetail.find_by(housing_detail_managements_id: @housing_detail_management.id)
    if @housing_detail.present?
      if @housing_detail_management.update(status: 'Holding')
        redirect_to edit_housing_detail_path(@housing_detail)
      end
    end
  end

  # POST /housing_detail_managements
  # POST /housing_detail_managements.json
  def create
    @housing_detail_management = HousingDetailManagement.new(housing_detail_management_params)

    respond_to do |format|
      if @housing_detail_management.save
        format.html { redirect_to housing_detail_managements_path, notice: 'Housing detail management was successfully created.' }
        #format.html { redirect_to @housing_detail_management, notice: 'Housing detail management was successfully created.' }
        format.json { render :show, status: :created, location: @housing_detail_management }
      else
        format.html { render :new }
        format.json { render json: @housing_detail_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housing_detail_managements/1
  # PATCH/PUT /housing_detail_managements/1.json
  def update
    respond_to do |format|
      if @housing_detail_management.update(housing_detail_management_params)
        format.html { redirect_to @housing_detail_management, notice: 'Housing detail management was successfully updated.' }
        format.json { render :show, status: :ok, location: @housing_detail_management }
      else
        format.html { render :edit }
        format.json { render json: @housing_detail_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housing_detail_managements/1
  # DELETE /housing_detail_managements/1.json
  def destroy
    @housing_detail_management.destroy
    respond_to do |format|
      format.html { redirect_to housing_detail_managements_url, notice: 'Housing detail management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housing_detail_management
      @housing_detail_management = HousingDetailManagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housing_detail_management_params
      params.require(:housing_detail_management).permit(:status, :approval, :approved_user_id)
    end
end
