class HamburguesasController < ApplicationController
  def index
    @hamburguesas = Hamburguesa.all
    #render json: {code: 200, description: "resultados obtenidos", data: @hamburguesas}, status: 200
    render json: @hamburguesas, status: 200
  end

  def create
    if (params[:nombre] && params[:precio] && params[:descripcion] && params[:imagen])
      @hamburguesa = Hamburguesa.create(
                                        nombre: params[:nombre],
                                        precio: params[:precio],
                                        descripcion: params[:descripcion],
                                        imagen: params[:imagen],
                                        )
      render json: {code: 201, description: "hamburguesa creada"}, status: 201
      #render json: @hamburguesa, status: 201
    else
      render json: {code: 400, description: "input invalido"}, status: 400
    end
  end

  def show
    if (Integer(params[:id]).is_a? Integer) #El id entregado es un integer
      @hamburguesa = Hamburguesa.find(params[:id])
      render json: @hamburguesa, status: 200
    end

    rescue ArgumentError # no es integer
      render json: {code: 400, description: "id invalido"}, status: 400
    rescue ActiveRecord::RecordNotFound
        render json: {code: 404, description: "hamburguesa inexistente"}, status: 404
  end

  def update
    @hamburguesa = Hamburguesa.find(params[:id])
    contador = 0
    if (params[:nombre])
        @hamburguesa.update(
                        nombre: params[:nombre]
                        )
        contador = contador + 1
    end
    if (params[:precio])
        @hamburguesa.update(
                        precio: params[:precio]
                        )
        contador = contador + 1
    end
    if (params[:descripcion])
        @hamburguesa.update(
                            descripcion: params[:descripcion]
                            )
       contador = contador + 1
    end
    if (params[:imagen])
        @hamburguesa.update(
                            imagen: params[:imagen]
                            )
        contador = contador + 1
    end
    if contador == 0
      render json: {code: 400, description: "parametros invalidos"}, status: 400
    else
      render json: {code: 200, description: "operacion exitosa"}, status: 200
    end

    rescue ActiveRecord::RecordNotFound
      render json: {code: 404, description: "hamburguesa inexistente"}, status: 404
  end

  def destroy
    @hamburguesa = Hamburguesa.find(params[:id])
    @hamburguesa.destroy
    render json: {code:200, description: "hamburguesa eliminada"}, status: 200

    rescue ActiveRecord::RecordNotFound
      render json: {code:404, description: "hamburguesa inexistente"}, status: 404
  end

  def update_ingrediente
    @hamburguesa = Hamburguesa.find(params[:id])
    render json: {code:200, description: "operacion exitosa"}, status: 200
  end

  def destroy_ingrediente
    @hamburguesa = Hamburguesa.find(params[:id])
    render json: {code:200, description: "hamburguesa eliminada"}, status: 200
  end

end
