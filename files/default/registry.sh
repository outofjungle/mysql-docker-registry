docker run \
  -v '/docker_images:/var/lib/docker-registry' \
  -v '/etc/docker-registry.yml:/etc/docker-registry.yml' \
  -e 'SETTINGS_FLAVOR=dev' \
  -e 'DOCKER_REGISTRY_CONFIG=/etc/docker-registry.yml' \
  -p 5000:5000 \
  -d cf5e1b22f031
