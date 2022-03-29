Dado("que acesso a página de cadastro") do
  @cadastro_page.open
end

Quando("submeto o seguinte formulário de cadastro:") do |table|
  user = table.hashes.first

  MongoDB.new.remove_user(user[:email])
  @cadastro_page.create(user)
end
