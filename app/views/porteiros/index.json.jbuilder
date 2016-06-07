json.array!(@porteiros) do |porteiro|
  json.extract! porteiro, :id, :nome, :cpf, :rg, :telefone
  json.url porteiro_url(porteiro, format: :json)
end
