class PratosController < ApplicationController

  def index
    @restaurante = Restaurante.find(params[:restaurante_id])
    @pratos = @restaurante.pratos
  end


    # GET /restaurantes/1
    # GET /restaurantes/1.json
    def show
    end

    # GET /restaurantes/new
    def new
      @prato = Prato.new
    end

    # GET /restaurantes/1/edit
    def edit
    end

    # POST /restaurantes
    # POST /restaurantes.json
    def create
      @prato = Prato.new(prato_params)

      respond_to do |format|
        if @prato.save
          format.html { redirect_to @prato, notice: 'Prato was successfully created.' }
          format.json { render :show, status: :created, location: @prato }
        else
          format.html { render :new }
          format.json { render json: @prato.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /restaurantes/1
    # PATCH/PUT /restaurantes/1.json
    def update
      respond_to do |format|
        if @prato.update(restaurante_params)
          format.html { redirect_to @prato, notice: 'Prato was successfully updated.' }
          format.json { render :show, status: :ok, location: @prato }
        else
          format.html { render :edit }
          format.json { render json: @pratos.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /restaurantes/1
    # DELETE /restaurantes/1.json
    def destroy
      @restaurante.destroy
      respond_to do |format|
        format.html { redirect_to restaurantes_url, notice: 'Restaurante was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_restaurante
        @restaurante = Restaurante.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def restaurante_params
        params.require(:restaurante).permit(:cnpj, :nome_oficial, :nome_fantasia, :phone, :horario, :tipo_comida, :endereco)
      end

      def authorize
        head :unauthorized if !current_user
      end
  end
