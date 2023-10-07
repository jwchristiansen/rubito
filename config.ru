app = Proc.new do |env|
  req = Rack::Request.new(env)
  case req.path_info
  when /robots.txt/
    [200, {"Content-Type" => "text/plain"}, [File.read("app/robots.txt")]]
  else
    [200, {"Content-Type" => "text/html"}, [File.open("app/index.html").read]]
  end
end

run app
