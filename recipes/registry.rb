execute 'sudo apt-get update'

package 'wget'

directory '/docker_images' do
  owner 'root'
  group 'root'
  mode 00755
end

cookbook_file '/etc/docker-registry.yml' do
  source 'docker-registry.yml'
  owner 'root'
  group 'root'
  mode '0755'
end

execute 'wget -qO- https://get.docker.com/ | sh'

docker_image "registry:#{node['docker_registry']['docker_registry_tag']}"

docker_container "registry" do
  image "#{node['docker_registry']['docker_registry_image']}"
  container_name "registry"
  detach true
  port '5000:5000'
  env node['docker_registry']['docker_registry_environment']
  volume node['docker_registry']['docker_registry_volume']
end
