class ConsultaMedicamentosController < ApplicationController
  before_action :set_consulta_medicamento, only: %i[ show edit update destroy ]

  # GET /consulta_medicamentos or /consulta_medicamentos.json
  def index
    @consulta_medicamentos = ConsultaMedicamento.all
  end

  # GET /consulta_medicamentos/1 or /consulta_medicamentos/1.json
  def show
  end

  # GET /consulta_medicamentos/new
  def new
    @consulta_medicamento = ConsultaMedicamento.new
  end

  # GET /consulta_medicamentos/1/edit
  def edit
  end

  # POST /consulta_medicamentos or /consulta_medicamentos.json
  def create
    @consulta_medicamento = ConsultaMedicamento.new(consulta_medicamento_params)

    respond_to do |format|
      if @consulta_medicamento.save
        format.html { redirect_to consulta_medicamento_url(@consulta_medicamento), notice: "Consulta medicamento was successfully created." }
        format.json { render :show, status: :created, location: @consulta_medicamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consulta_medicamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulta_medicamentos/1 or /consulta_medicamentos/1.json
  def update
    respond_to do |format|
      if @consulta_medicamento.update(consulta_medicamento_params)
        format.html { redirect_to consulta_medicamento_url(@consulta_medicamento), notice: "Consulta medicamento was successfully updated." }
        format.json { render :show, status: :ok, location: @consulta_medicamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consulta_medicamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta_medicamentos/1 or /consulta_medicamentos/1.json
  def destroy
    @consulta_medicamento.destroy

    respond_to do |format|
      format.html { redirect_to consulta_medicamentos_url, notice: "Consulta medicamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulta_medicamento
      @consulta_medicamento = ConsultaMedicamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consulta_medicamento_params
      params.require(:consulta_medicamento).permit(:consulta_id, :medicamento_id)
    end
end
