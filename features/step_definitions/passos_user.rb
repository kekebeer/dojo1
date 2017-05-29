Dado(/^que estou com acesso ao site$/) do
  visit 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando(/^clico em criar conta$/) do
  click_on('menu_pim_viewPimModule')
  find(:xpath, '//*[contains(text(), "Add Employee")]').click
end

Entao(/^incluir novo usuario$/) do
  fill_in('firstName', :with => 'Cleber')
  fill_in('lastName', :with => 'Carvalho')
  click_button('btnSave')
end