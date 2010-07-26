# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{panda}
  s.version = "0.9.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["New Bamboo"]
  s.date = %q{2010-07-26}
  s.description = %q{Panda Client}
  s.email = %q{info@pandastream.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "lib/panda.rb",
     "lib/panda/api_authentication.rb",
     "lib/panda/base.rb",
     "lib/panda/connection.rb",
     "lib/panda/error.rb",
     "lib/panda/modules/associations.rb",
     "lib/panda/modules/builders.rb",
     "lib/panda/modules/finders.rb",
     "lib/panda/modules/router.rb",
     "lib/panda/modules/short_status.rb",
     "lib/panda/modules/updatable.rb",
     "lib/panda/panda.rb",
     "lib/panda/proxy/encoding_scope.rb",
     "lib/panda/proxy/proxy.rb",
     "lib/panda/proxy/scope.rb",
     "lib/panda/proxy/video_scope.rb",
     "lib/panda/resources/cloud.rb",
     "lib/panda/resources/encoding.rb",
     "lib/panda/resources/profile.rb",
     "lib/panda/resources/resource.rb",
     "lib/panda/resources/video.rb",
     "log/debug.log",
     "panda.gemspec",
     "spec/cloud_spec.rb",
     "spec/encoding_spec.rb",
     "spec/heroku_spec.rb",
     "spec/panda_spec.rb",
     "spec/profile_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/video_spec.rb"
  ]
  s.homepage = %q{http://github.com/newbamboo/panda_gem}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Panda Client}
  s.test_files = [
    "spec/cloud_spec.rb",
     "spec/encoding_spec.rb",
     "spec/heroku_spec.rb",
     "spec/panda_spec.rb",
     "spec/profile_spec.rb",
     "spec/spec_helper.rb",
     "spec/video_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_runtime_dependency(%q<ruby-hmac>, [">= 0.3.2"])
      s.add_runtime_dependency(%q<rest-client>, [">= 1.4"])
      s.add_runtime_dependency(%q<json>, [">= 1.2"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<ruby-hmac>, [">= 0.3.2"])
      s.add_dependency(%q<rest-client>, [">= 1.4"])
      s.add_dependency(%q<json>, [">= 1.2"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<ruby-hmac>, [">= 0.3.2"])
    s.add_dependency(%q<rest-client>, [">= 1.4"])
    s.add_dependency(%q<json>, [">= 1.2"])
  end
end

