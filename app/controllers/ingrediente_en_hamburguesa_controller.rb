class IngredienteEnHamburguesaController < ApplicationController
    def create
      id_ingrediente = params[:id_i]
      if Hamburguesa.exists?(id: params[:id_h])
        @hamburguesa = Hamburguesa.find(params[:id_h])
        if Ingrediente.exists?(id: params[:id_i])
          @ingrediente = Ingrediente.find(params[:id_i])
          if IngredienteEnHamburguesa.exists?(hamburguesa_id: @hamburguesa.id, ingrediente_id: @ingrediente.id)
            render json: {code: 200, description: "operacion exitosa"}, status: 200
          else
            @ingrediente_en_hamburguesa = IngredienteEnHamburguesa.create(
                                              hamburguesa_id: params[:id_h],
                                              ingrediente_id: params[:id_i],
                                              path: "https://hamburgueseria.com/ingrediente/#{id_ingrediente}",
                                              )
            render json: {code: 200, description: "operacion exitosa"}, status: 200
          end
        else
          render json: {code: 404, description: "Ingrediente inexistente"}, status: 404
        end
      else
        render json: {code: 400, description: "Id de hamburguesa inválido"}, status: 400
      end
    end


    def destroy
      if Hamburguesa.exists?(id: params[:id_h])
        @hamburguesa = Hamburguesa.find(params[:id_h])
        if Ingrediente.exists?(id: params[:id_i])
          @ingrediente = Ingrediente.find(params[:id_i])
          if IngredienteEnHamburguesa.exists?(hamburguesa_id: @hamburguesa.id, ingrediente_id: @ingrediente.id)
            IngredienteEnHamburguesa.where(hamburguesa_id: @hamburguesa.id, ingrediente_id: @ingrediente.id).destroy_all
            render json: {code: 200, description: "ingrediente retirado"}, status: 200
          else
            render json: {code: 404, description: "ingrediente inexistente en la hamburguesa"}, status: 404
          end
        else
          render json: {code:400, description: "Id de ingrediente inválido"}, status: 400
        end
      else
        render json: {code:400, description: "Id de hamburguesa inválido"}, status: 400
      end
    end
end
