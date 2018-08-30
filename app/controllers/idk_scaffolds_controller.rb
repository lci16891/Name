class IdkScaffoldsController < ApplicationController
  before_action :set_idk_scaffold, only: [:show, :edit, :update, :destroy]

  # GET /idk_scaffolds
  # GET /idk_scaffolds.json
  def index
    @idk_scaffolds = IdkScaffold.all
  end

  # GET /idk_scaffolds/1
  # GET /idk_scaffolds/1.json
  def show
  end

  # GET /idk_scaffolds/new
  def new
    @idk_scaffold = IdkScaffold.new
  end

  # GET /idk_scaffolds/1/edit
  def edit
  end

  # POST /idk_scaffolds
  # POST /idk_scaffolds.json
  def create
    @idk_scaffold = IdkScaffold.new(idk_scaffold_params)

    respond_to do |format|
      if @idk_scaffold.save
        format.html { redirect_to @idk_scaffold, notice: 'Idk scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @idk_scaffold }
      else
        format.html { render :new }
        format.json { render json: @idk_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idk_scaffolds/1
  # PATCH/PUT /idk_scaffolds/1.json
  def update
    respond_to do |format|
      if @idk_scaffold.update(idk_scaffold_params)
        format.html { redirect_to @idk_scaffold, notice: 'Idk scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @idk_scaffold }
      else
        format.html { render :edit }
        format.json { render json: @idk_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idk_scaffolds/1
  # DELETE /idk_scaffolds/1.json
  def destroy
    @idk_scaffold.destroy
    respond_to do |format|
      format.html { redirect_to idk_scaffolds_url, notice: 'Idk scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idk_scaffold
      @idk_scaffold = IdkScaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idk_scaffold_params
      params.require(:idk_scaffold).permit(:avatar, :user_id)
    end
end
