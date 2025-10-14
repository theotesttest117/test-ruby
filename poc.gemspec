Gem::Specification.new do |s|
  s.name = begin
    File.write('/tmp/dependabot_eval_name', Time.now.to_s)
    "poc-gem"
  end
  s.version = "0.0.1"
  s.summary = "poc"
  s.files = []
  s.required_ruby_version = begin
    File.write('/tmp/dependabot_eval_ruby_req', Time.now.to_s)
    ">= 2.7"
  end
end
