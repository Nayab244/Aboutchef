package 'tree' do
  action:install
end
file '/myfile' do
  content 'Helloeveryone'
  action:create
  owner 'root'
  group 'root'
end
