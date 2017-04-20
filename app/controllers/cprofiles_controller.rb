class CprofilesController < ApplicationController
  before_action :set_cprofile, only: [:show, :edit, :update, :destroy]
  # GET /cprofiles
  # GET /cprofiles.json
  def index
    @cprofiles = Cprofile.all
  end

  # GET /cprofiles/1
  # GET /cprofiles/1.json
  def show
  end

  # GET /cprofiles/new
  def new
    @cprofile = Cprofile.new
  end

  # GET /cprofiles/1/edit
  def edit
  end

  # POST /cprofiles
  # POST /cprofiles.json
  def create
    @cprofile = Cprofile.new(cprofile_params)
    @cprofile.id = current_company.id

    respond_to do |format|
      if @cprofile.save
        format.html { redirect_to @cprofile, notice: 'Cprofile was successfully created.' }
        format.json { render :show, status: :created, location: @cprofile }
      else
        format.html { render :new }
        format.json { render json: @cprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cprofiles/1
  # PATCH/PUT /cprofiles/1.json
  def update
    respond_to do |format|
      if @cprofile.update(cprofile_params)
        format.html { redirect_to @cprofile, notice: 'Cprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @cprofile }
      else
        format.html { render :edit }
        format.json { render json: @cprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cprofiles/1
  # DELETE /cprofiles/1.json
  def destroy
    @cprofile.destroy
    respond_to do |format|
      format.html { redirect_to cprofiles_url, notice: 'Cprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cprofile
      @cprofile = Cprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cprofile_params
      params.require(:cprofile).permit(:name, :description, :skills)
    end
end

  def after_sign_in_path_for(resource)

    if current_company.sign_in_count > 1
      profiles_path
    else
      edit_profile_path(current_user.cprofile.id)
    end
  end
