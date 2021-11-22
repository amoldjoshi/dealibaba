class DealersController < ApplicationController
  load_and_authorize_resource
  skip_authorize_resource :only => [ :weeklyadds, :dailydeals,:blackfriday ,:finders, :associates]
  
  #before_action :authenticate_user!, :except => [:show, :index, :weeklyadds, :dailydeals, :finders]
  
  before_action :set_dealer, only: [:show, :edit, :update, :destroy]

  

  # GET /dealers
  # GET /dealers.json
  def index
    @dealers = Dealer.all
  end

    # GET /products/dailydeals (dealerid1)
  def dailydeals
      @dealers = Dealer.all.order(:dealerid)
  end

    # GET /products/dailydeals (dealerid2)
  def finders
      @dealers = Dealer.all.order(:dealerid)
  end

  # GET /products/weeklyadds (dealerid3)
  def weeklyadds
    @dealers = Dealer.all.order(:dealerid)
  end

# GET /products/blackfriday (dealerid4)
  def blackfriday
    @dealers = Dealer.all.order(:dealerid)
  end

# GET /products/associates (dealerid5)
  def associates
    @dealers = Dealer.all.order(:dealerid)
  end

  # GET /dealers/1
  # GET /dealers/1.json
  def show
  end

  # GET /dealers/new
  def new
    @dealer = Dealer.new
  end

  # GET /dealers/1/edit
  def edit
  end

  # POST /dealers
  # POST /dealers.json
  def create
    @dealer = Dealer.new(dealer_params)

    respond_to do |format|
      if @dealer.save
        format.html { redirect_to @dealer, notice: 'Dealer was successfully created.' }
        format.json { render :show, status: :created, location: @dealer }
      else
        format.html { render :new }
        format.json { render json: @dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealers/1
  # PATCH/PUT /dealers/1.json
  def update
    respond_to do |format|
      if @dealer.update(dealer_params)
        format.html { redirect_to @dealer, notice: 'Dealer was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealer }
      else
        format.html { render :edit }
        format.json { render json: @dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealers/1
  # DELETE /dealers/1.json
  def destroy
    @dealer.destroy
    respond_to do |format|
      format.html { redirect_to dealers_url, notice: 'Dealer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealer
      @dealer = Dealer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dealer_params
      params.require(:dealer).permit(:dealerid, :dealername, :dealerurl, :dealertype, :dealercategory, :logo)
    end
end
