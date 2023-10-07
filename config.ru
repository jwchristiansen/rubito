app = Proc.new do |env|
  req = Rack::Request.new(env)
  case req.path_info
  when /robots.txt/
    [200, {"content-type" => "text/plain"}, [File.read("path_to_your/robots.txt")]]
  else
    [200, {"content-type" => "text/html"}, [File.open("app/index.html").read]]
  end
end

run app
