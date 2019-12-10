class PratosController < ApplicationController

  def index
    @restaurante = Restaurante.find(params[:restaurante_id])
    @pratos = @restaurante.pratos
  end
end
