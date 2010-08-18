# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{do-schema}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dirkjan Bussink"]
  s.date = %q{2010-08-18}
  s.description = %q{TODO: longer description of your gem}
  s.email = %q{d.bussink@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc",
     "TODO"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "Gemfile.lock",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "TODO",
     "config/flay.yml",
     "config/flog.yml",
     "config/rcov.yml",
     "config/roodi.yml",
     "config/site.reek",
     "config/yardstick.yml",
     "lib/do-schema.rb",
     "lib/do-schema/column.rb",
     "lib/do-schema/column/integer.rb",
     "lib/do-schema/column/string.rb",
     "lib/do-schema/database.rb",
     "lib/do-schema/table.rb",
     "spec/dummy_spec.rb",
     "spec/rcov.opts",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "tasks/ci.rake",
     "tasks/clean.rake",
     "tasks/quality/flay.rake",
     "tasks/quality/flog.rake",
     "tasks/quality/heckle.rake",
     "tasks/quality/metric_fu.rake",
     "tasks/quality/reek.rake",
     "tasks/quality/roodi.rake",
     "tasks/quality/yardstick.rake",
     "tasks/spec.rake",
     "tasks/whitespace.rake",
     "tasks/yard.rake"
  ]
  s.homepage = %q{http://github.com/dbussink/do-schema}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{TODO: one-line summary of your gem}
  s.test_files = [
    "spec/dummy_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end

