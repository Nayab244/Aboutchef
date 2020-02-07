package 'httpd' do
  action:install
end
file '/var/www/html/index.html' do
  content '0Hellooo Sstudents!Testing is done!!'
  action:create
end
service 'httpd' do
  action [ :enable, :start]
end
%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
    action:install
  end
end
%w(raju sai pallavi punith).each do |p|
  user p do
    action:create
  end
end
