# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts-as-taggable-on}
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh"]
  s.date = %q{2010-05-18}
  s.description = %q{With ActsAsTaggableOn, you can tag a single model on several contexts, such as skills, interests, and awards. It also provides other advanced functionality.}
  s.email = %q{michael@intridea.com}
  s.files = [".gitignore", ".rspec", ".travis.yml", "CHANGELOG", "Gemfile", "Guardfile", "MIT-LICENSE", "README.rdoc", "Rakefile", "acts-as-taggable-on.gemspec", "generators/acts_as_taggable_on_migration/acts_as_taggable_on_migration_generator.rb", "generators/acts_as_taggable_on_migration/templates/migration.rb", "lib/acts-as-taggable-on.rb", "lib/acts-as-taggable-on/version.rb", "lib/acts_as_taggable_on/acts_as_taggable_on.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/cache.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/collection.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/core.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/ownership.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/related.rb", "lib/acts_as_taggable_on/acts_as_tagger.rb", "lib/acts_as_taggable_on/compatibility/Gemfile", "lib/acts_as_taggable_on/compatibility/active_record_backports.rb", "lib/acts_as_taggable_on/tag.rb", "lib/acts_as_taggable_on/tag_list.rb", "lib/acts_as_taggable_on/tagging.rb", "lib/acts_as_taggable_on/tags_helper.rb", "lib/acts_as_taggable_on/utils.rb", "lib/generators/acts_as_taggable_on/migration/migration_generator.rb", "lib/generators/acts_as_taggable_on/migration/templates/active_record/migration.rb", "rails/init.rb", "spec/acts_as_taggable_on/acts_as_taggable_on_spec.rb", "spec/acts_as_taggable_on/acts_as_tagger_spec.rb", "spec/acts_as_taggable_on/tag_list_spec.rb", "spec/acts_as_taggable_on/tag_spec.rb", "spec/acts_as_taggable_on/taggable_spec.rb", "spec/acts_as_taggable_on/tagger_spec.rb", "spec/acts_as_taggable_on/tagging_spec.rb", "spec/acts_as_taggable_on/tags_helper_spec.rb", "spec/acts_as_taggable_on/utils_spec.rb", "spec/bm.rb", "spec/database.yml.sample", "spec/models.rb", "spec/schema.rb", "spec/spec_helper.rb", "uninstall.rb"]
  s.homepage = %q{}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Advanced tagging for Rails.}
  s.test_files = ["spec/acts_as_taggable_on/acts_as_taggable_on_spec.rb", "spec/acts_as_taggable_on/acts_as_tagger_spec.rb", "spec/acts_as_taggable_on/tag_list_spec.rb", "spec/acts_as_taggable_on/tag_spec.rb", "spec/acts_as_taggable_on/taggable_spec.rb", "spec/acts_as_taggable_on/tagger_spec.rb", "spec/acts_as_taggable_on/tagging_spec.rb", "spec/acts_as_taggable_on/tags_helper_spec.rb", "spec/acts_as_taggable_on/utils_spec.rb", "spec/bm.rb", "spec/database.yml.sample", "spec/models.rb", "spec/schema.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<mysql2>, ["< 0.3"])
      s.add_development_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.5"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<mysql2>, ["< 0.3"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.5"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<mysql2>, ["< 0.3"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end
