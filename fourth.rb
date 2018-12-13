require 'rack'
require 'rack/server'

class HelloRackApp
  def self.call(env)
    max_val, max_index = 0
    salary = [50_000, 53_000, 100_000, 73_000, 100_000]
    salary.each_with_index do |val, index|
      if val >= max_val
        max_val = val
        max_index = index
      end
    end
    [200, { 'Content-Type' => 'text/html' }, [max_index.to_s]]
  end
end

Rack::Server.start({ app: HelloRackApp })