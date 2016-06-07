json.array!(@visita) do |visitum|
  json.extract! visitum, :id, :visitante_id, :dataEntrada, :dataSaida, :conjunto, :responsavel
  json.url visitum_url(visitum, format: :json)
end
