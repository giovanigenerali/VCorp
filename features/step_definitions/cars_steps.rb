Dado /^que eu estou na pagina cadastro de veiculo$/ do
  visit "/cars"
end

E /^eu preencho o formulario cadastro de veiculo$/ do
  fill_in "car[make]", :with => "Fiat"
  click_button "Submit"
end

Entao /^eu devo ver o cadastro na listagem de veiculos$/ do
  response.should contain "Fiat"
end
