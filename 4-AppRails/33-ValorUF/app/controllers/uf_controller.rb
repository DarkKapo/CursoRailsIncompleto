class UfController < ActionController::API
  def respuesta
    byebug
    fechaSolicitada = params[:date]
    uf = Uf.find_by(fecha: fechaSolicitada)

    if uf.nil?
      respuesta = "Fecha fuera de rango"
    else
      respuesta = {fechaSolicitada: fechaSolicitada, valor: uf.value}
    end

    User.create(username: params["x-client"], uf_value: respuesta, date_request: fechaSolicitada)

    render json: respuesta
  end

  def requestq

    request = User.where(username: params[:username])
    if request.nil?
      q = 0
    else
      q = request.count
    end

    render json: q

  end
end
