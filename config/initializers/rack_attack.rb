# frozen_string_literal: true

Rack::Attack.throttle('requests by ip', limit: 20, period: 1.minute) do |req|
  req.ip if req.path == '/r/place' && req.patch?
end
