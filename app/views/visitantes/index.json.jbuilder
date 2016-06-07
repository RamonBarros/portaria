json.array!(@visitantes) do |visitante|
  json.extract! visitante, :id, :nome, :cpf, :rg, :telefone
  json.url visitante_url(visitante, format: :json)
end
