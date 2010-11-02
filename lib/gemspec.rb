#!/usr/bin/env ruby
version = '0.1'
raise "Could not get version so gemspec can not be built" if version.nil?
files = Dir.glob("**/*").flatten.reject do |file|
  file =~ /\.gem$/
end

gemspec = <<EOF
Gem::Specification.new do |s|
  s.name              = %q{refinerycms-forms}
  s.version           = %q{#{version}}
  s.date              = %q{#{Time.now.strftime('%Y-%m-%d')}}
  s.summary           = %q{Forms generator for the Refinery CMS project.}
  s.description       = %q{Forms generation capabilities for Refinery CMS to allow you to generate engines that are setup as frontend forms.}
  s.homepage          = %q{http://refinerycms.com}
  s.email             = %q{info@refinerycms.com}
  s.authors           = ["Resolve Digital"]
  s.require_paths     = %w(lib)

  s.files             = [
    '#{files.join("',\n    '")}'
  ]
  s.require_path = 'lib'
end
EOF

File.open(File.expand_path("../../refinerycms-forms.gemspec", __FILE__), 'w').puts(gemspec)