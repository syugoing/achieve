server '52.43.207.172', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '~/.ssh/id_rsa'
