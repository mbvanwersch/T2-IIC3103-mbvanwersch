class HamburguesasController < ApplicationController
  def index
    @hamburguesas = Hamburguesa.all
    #render json: {code: 200, description: "resultados obtenidos", data: @hamburguesas}, status: 200
    render json: @hamburguesas, status: 200
  end

  def create
    if (params[:nombre] && params[:precio] && params[:descripcion] && params[:imagen])
      if (params[:nombre].blank? || params[:precio].blank? || params[:descripcion].blank? || params[:imagen].blank?)
        render json: {code: 400, description: "input invalido"}, status: 400
      else
        @hamburguesa = Hamburguesa.create(
                                        nombre: params[:nombre],
                                        precio: params[:precio],
                                        descripcion: params[:descripcion],
                                        imagen: params[:imagen],
                                        )
        render json: @hamburguesa, status: 201
      end
    else
      render json: {code: 400, description: "input invalido"}, status: 400
    end
  end

  def show
    if (Integer(params[:id]).is_a? Integer) #El id entregado es un integer
      if Hamburguesa.exists?(id: params[:id])
        @hamburguesa = Hamburguesa.find(params[:id])
        render json: @hamburguesa, status: 200
      else
        render json: {code: 404, description: "hamburguesa inexistente"}, status: 404
      end
    end

    rescue ArgumentError # no es integer
      render json: {code: 400, description: "id invalido"}, status: 400
  end

  def update
    if Hamburguesa.exists?(id: params[:id])
      @hamburguesa = Hamburguesa.find(params[:id])
      contador = 0
      if (params[:nombre])
        if params[:nombre].blank?
          render json: {code: 400, description: "parametros invalidos"}, status: 400
        else
          @hamburguesa.update(
                          nombre: params[:nombre]
                          )
          contador = contador + 1
        end
      end
      if (params[:precio])
        if params[:precio].blank?
          render json: {code: 400, description: "parametros invalidos"}, status: 400
        else
          @hamburguesa.update(
                          precio: params[:precio]
                          )
          contador = contador + 1
        end
      end
      if (params[:descripcion])
        if params[:descripcion].blank?
          render json: {code: 400, description: "parametros invalidos"}, status: 400
        else
          @hamburguesa.update(
                              descripcion: params[:descripcion]
                              )
          contador = contador + 1
        end
      end
      if (params[:imagen])
        if params[:imagen].blank?
          render json: {code: 400, description: "parametros invalidos"}, status: 400
        else
          @hamburguesa.update(
                              imagen: params[:imagen]
                              )
          contador = contador + 1
        end
      end
      if contador == 0
        render json: {code: 400, description: "parametros invalidos"}, status: 400
      else
        render json: @hamburguesa, status: 200
      end
    else
      render json: {code: 404, description: "hamburguesa inexistente"}, status: 404
    end
  end

  def destroy
    if Hamburguesa.exists?(id: params[:id])
      @hamburguesa = Hamburguesa.find(params[:id])
      IngredienteEnHamburguesa.where(hamburguesa_id: @hamburguesa.id).destroy_all # Elimino todos sus ingredientes asociados
      @hamburguesa.destroy
      render json: {code:200, description: "hamburguesa eliminada"}, status: 200
    else
      render json: {code:404, description: "hamburguesa inexistente"}, status: 404
    end
  end

end
