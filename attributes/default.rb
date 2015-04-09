default['docker_registry']['docker_registry_volume'] = ['/docker_images:/var/lib/docker-registry','/etc/docker-registry.yml:/etc/docker-registry.yml']
default['docker_registry']['gunicorn_num_workers'] = node['cpu']['total'].to_i*4
default['docker_registry']['docker_registry_environment'] = ['SETTINGS_FLAVOR=dev','DOCKER_REGISTRY_CONFIG=/etc/docker-registry.yml','GUNICORN_WORKERS='+"#{node[:docker_registry][:gunicorn_num_workers]}"]
default['docker_registry']['docker_registry_tag'] = '0.8.1'
default['docker_registry']['docker_registry_image'] ='3c1606e67565'
