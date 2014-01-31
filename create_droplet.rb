require "digital_ocean"

dc = DigitalOcean::API.new :client_id => ENV['DO_CLIENT_ID'],
                           :api_key   => ENV['DO_API_KEY'],
                           :debug     => true

res = dc.droplets.create name:         ENV['DO_HOSTNAME'],
                         size_id:      63,
                         image_id:     1505447,
                         region_id:    5,
                         ssh_key_ids:  "77342,77343",
                         private_networking: true
