class PorteirosController < ApplicationController
  before_action :set_porteiro, only: [:show, :edit, :update, :destroy]

  # GET /porteiros
  # GET /porteiros.json
  def index
    @porteiros = Porteiro.all
  end

  # GET /porteiros/1
  # GET /porteiros/1.json
  def show
  end

  # GET /porteiros/new
  def new
    @porteiro = Porteiro.new
  end

  # GET /porteiros/1/edit
  def edit
  end

  # POST /porteiros
  # POST /porteiros.json
  def create
    @porteiro = Porteiro.new(porteiro_params)

    respond_to do |format|
      if @porteiro.save
        format.html { redirect_to porteiros_url, notice: 'Porteiro was successfully created.' }
        format.json { render :show, status: :created, location: @porteiro }
      else
        format.html { render :new }
        format.json { render json: @porteiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /porteiros/1
  # PATCH/PUT /porteiros/1.json
  def update
    respond_to do |format|
      if @porteiro.update(porteiro_params)
        format.html { redirect_to porteiros_url, notice: 'Porteiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @porteiro }
      else
        format.html { render :edit }
        format.json { render json: @porteiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /porteiros/1
  # DELETE /porteiros/1.json
  def destroy
    @porteiro.destroy
    respond_to do |format|
      format.html { redirect_to porteiros_url, notice: 'Porteiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_porteiro
      @porteiro = Porteiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def porteiro_params
      params.require(:porteiro).permit(:nome, :cpf, :rg, :telefone)
    end
end
