class IngredientesController < ApplicationController
  def index
    @ingredientes = Ingrediente.all
    render json: @ingredientes, status: 200
  end

  def create
    if (params[:id] && params[:nombre] && params[:descripcion])
      if (params[:id].blank? || params[:nombre].blank? ||  params[:descripcion].blank?)
        render json: {code: 400, description: "input invalido"}, status: 400
      else
        @ingrediente = Ingrediente.create(
                                        id: params[:id],
                                        nombre: params[:nombre],
                                        descripcion: params[:descripcion],
                                        )
        render json: @ingrediente, status: 201
      end
    else
      render json: {code: 400, description: "input invalido"}, status: 400
    end

    rescue ActiveRecord::RecordNotUnique
      render json: {code: 400, description: "input invalido"}, status: 400
  end

  def show
    if (Integer(params[:id]).is_a? Integer) #El id entregado es un integer
      if Ingrediente.exists?(id: params[:id])
        @ingrediente = Ingrediente.find(params[:id])
        render json: @ingrediente, status: 200
      else
        render json: {code: 404, description: "ingrediente inexistente"}, status: 404
      end
    end

    rescue ArgumentError # no es integer
      render json: {code: 400, description: "id invalido"}, status: 400
  end

  def destroy
    if Ingrediente.exists?(id: params[:id])
      @ingrediente = Ingrediente.find(params[:id])
      if IngredienteEnHamburguesa.exists?(ingrediente_id: @ingrediente.id)
        render json: {code: 409, description: "Ingrediente no se puede borrar, se encuentra presente en una hamburguesa"}, status: 409
      else
        @ingrediente.destroy
        render json: {code: 200, description: "ingrediente eliminado"}, status: 200
      end
    else
      render json: {code: 404, description: "ingrediente inexistente"}, status: 404
    end
  end
end
