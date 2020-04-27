class HamburguesaIngredientesController < ApplicationController
    def update
      render json: {message: "operacion exitosa"}, status: 200
    end

    def destroy
      render json: {message: "hamburguesa eliminada"}, status: 200
    end

end
