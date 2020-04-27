class IngredientesController < ApplicationController
  def index
    @ingredientes = Ingrediente.all
    render json: @ingredientes, status: 200
  end

  def create
    if (params[:id] && params[:nombre] && params[:descripcion])
      @ingrediente = Ingrediente.create(
                                      id: params[:id],
                                      nombre: params[:nombre],
                                      descripcion: params[:descripcion],
                                      )
      render json: {code: 201, description: "Ingrediente creado"}, status: 201
    else
      render json: {code: 400, description: "input invalido"}, status: 400
    end

    rescue ActiveRecord::RecordNotUnique
    render json: {code: 400, description: "input invalido"}, status: 400
  end

  def show
    if (Integer(params[:id]).is_a? Integer) #El id entregado es un integer
      @ingrediente = Ingrediente.find(params[:id])
      render json: @ingrediente, status: 200
    end

    rescue ArgumentError # no se integer
      render json: {code: 400, description: "id invalido"}, status: 400
    rescue ActiveRecord::RecordNotFound
      render json: {code: 404, description: "ingrediente inexistente"}, status: 404
  end

  def destroy
    @ingrediente = Ingrediente.find(params[:id])
    @ingrediente.destroy
    render json: {code: 200, description: "ingrediente eliminado"}, status: 200

    rescue ActiveRecord::RecordNotFound
      render json: {code: 404, description: "ingrediente inexistente"}, status: 404
  end

end
