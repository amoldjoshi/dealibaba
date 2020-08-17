class ArticledetailsController < ApplicationController
  before_action :set_articledetail, only: [:show, :edit, :update, :destroy]

  # GET /articledetails
  # GET /articledetails.json
  def index
    @articledetails = Articledetail.all
  end

  # GET /articledetails/1
  # GET /articledetails/1.json
  def show
  end

  # GET /articledetails/new
  def new
    @articledetail = Articledetail.new
  end

  # GET /articledetails/1/edit
  def edit
  end

  # POST /articledetails
  # POST /articledetails.json
  def create
    @articledetail = Articledetail.new(articledetail_params)

    respond_to do |format|
      if @articledetail.save
        format.html { redirect_to @articledetail, notice: 'Articledetail was successfully created.' }
        format.json { render :show, status: :created, location: @articledetail }
      else
        format.html { render :new }
        format.json { render json: @articledetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articledetails/1
  # PATCH/PUT /articledetails/1.json
  def update
    respond_to do |format|
      if @articledetail.update(articledetail_params)
        format.html { redirect_to @articledetail, notice: 'Articledetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @articledetail }
      else
        format.html { render :edit }
        format.json { render json: @articledetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articledetails/1
  # DELETE /articledetails/1.json
  def destroy
    @articledetail.destroy
    respond_to do |format|
      format.html { redirect_to articledetails_url, notice: 'Articledetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articledetail
      @articledetail = Articledetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articledetail_params
      params.require(:articledetail).permit(:title, :content, :article_id)
    end
end
