app = Proc.new do |env|
  [200, {"content-type" => "text/html"}, [File.open("app/index.html").read]]
end

run app
