Dado /^que eu estou na pagina cadastro de departamento$/ do
  visit "/departments"
end

E /^eu preencho o formulario cadastro de departamento$/ do
  fill_in "department[name]", :with => "Tecnologia"
  click_button "Submit"
end

Entao /^eu devo ver o cadastro na listagem de departamentos$/ do
  response.should contain "Tecnologia"
end