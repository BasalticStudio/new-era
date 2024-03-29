# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `bankai` gem.
# Please instead update this file by running `bin/tapioca gem bankai`.

# source://bankai//lib/bankai/version.rb#3
module Bankai; end

# source://bankai//lib/bankai/builder.rb#5
class Bankai::Builder < ::Rails::AppBuilder
  # source://bankai//lib/bankai/builder.rb#73
  def clear_seed_file; end

  # source://bankai//lib/bankai/builder.rb#43
  def configure_generators; end

  # source://bankai//lib/bankai/builder.rb#28
  def configure_puma_dev; end

  # source://bankai//lib/bankai/builder.rb#34
  def configure_quiet_assets; end

  # source://bankai//lib/bankai/builder.rb#84
  def copy_dotfiles; end

  # source://bankai//lib/bankai/builder.rb#14
  def gemfile; end

  # source://bankai//lib/bankai/builder.rb#10
  def gitignore; end

  # source://bankai//lib/bankai/builder.rb#6
  def readme; end

  # source://bankai//lib/bankai/builder.rb#18
  def replace_gemfile(path); end

  # source://bankai//lib/bankai/builder.rb#59
  def setup_default_directories; end

  # source://bankai//lib/bankai/builder.rb#77
  def setup_rack_mini_profiler; end
end

# source://bankai//lib/bankai/version.rb#8
Bankai::CAPISTRANO_VERSION = T.let(T.unsafe(nil), String)

# source://bankai//lib/bankai/generator.rb#8
class Bankai::Generator < ::Rails::Generators::AppGenerator
  # source://bankai//lib/bankai/generator.rb#58
  def configure_app; end

  # source://bankai//lib/bankai/generator.rb#35
  def customization; end

  # source://bankai//lib/bankai/generator.rb#44
  def customize_gemfile; end

  # @return [Boolean]
  #
  # source://bankai//lib/bankai/generator.rb#84
  def depends_on_system_test?; end

  # source://bankai//lib/bankai/generator.rb#30
  def finish_template; end

  # source://bankai//lib/bankai/generator.rb#68
  def generate_default; end

  # source://bankai//lib/bankai/generator.rb#80
  def setup_default_directories; end

  # source://bankai//lib/bankai/generator.rb#49
  def setup_development_environment; end

  # source://bankai//lib/bankai/generator.rb#64
  def setup_dotfiles; end

  protected

  # source://bankai//lib/bankai/generator.rb#95
  def get_builder_class; end

  class << self
    # source://bankai//lib/bankai/generator.rb#88
    def banner; end
  end
end

# source://bankai//lib/bankai/generators/base.rb#6
module Bankai::Generators; end

# source://bankai//lib/bankai/generators/base.rb#8
class Bankai::Generators::Base < ::Rails::Generators::Base
  include ::Bankai::Helper

  private

  # source://bankai//lib/bankai/generators/base.rb#17
  def app_name; end

  class << self
    # source://bankai//lib/bankai/generators/base.rb#11
    def default_source_root; end
  end
end

# source://bankai//lib/bankai/generators/ci_generator.rb#8
class Bankai::Generators::CiGenerator < ::Bankai::Generators::Base
  # source://bankai//lib/bankai/generators/ci_generator.rb#11
  def configure_ci; end
end

# source://bankai//lib/bankai/generators/db_optimizations_generator.rb#8
class Bankai::Generators::DbOptimizationsGenerator < ::Bankai::Generators::Base
  # source://bankai//lib/bankai/generators/db_optimizations_generator.rb#9
  def configure_bullet; end

  private

  # source://bankai//lib/bankai/generators/db_optimizations_generator.rb#19
  def configuration; end
end

# source://bankai//lib/bankai/generators/deploy_generator.rb#8
class Bankai::Generators::DeployGenerator < ::Bankai::Generators::Base
  # source://bankai//lib/bankai/generators/deploy_generator.rb#15
  def configure_capfile; end

  # source://bankai//lib/bankai/generators/deploy_generator.rb#11
  def install_capistrano; end

  # source://bankai//lib/bankai/generators/deploy_generator.rb#23
  def replace_deploy_config; end

  protected

  # source://bankai//lib/bankai/generators/deploy_generator.rb#29
  def repo_url; end

  private

  # source://bankai//lib/bankai/generators/deploy_generator.rb#40
  def capistrano_plugins; end
end

# source://bankai//lib/bankai/generators/deploy_generator.rb#9
Bankai::Generators::DeployGenerator::DEFAULT_REPO = T.let(T.unsafe(nil), String)

# source://bankai//lib/bankai/generators/sitemap_generator.rb#7
Bankai::Generators::HOST_TEMPLATE = T.let(T.unsafe(nil), String)

# source://bankai//lib/bankai/generators/json_generator.rb#8
class Bankai::Generators::JsonGenerator < ::Bankai::Generators::Base
  # source://bankai//lib/bankai/generators/json_generator.rb#9
  def add_oj; end
end

# source://bankai//lib/bankai/generators/lint_generator.rb#8
class Bankai::Generators::LintGenerator < ::Bankai::Generators::Base
  # source://bankai//lib/bankai/generators/lint_generator.rb#9
  def configure_overcommit; end

  # source://bankai//lib/bankai/generators/lint_generator.rb#13
  def configure_rubocop; end

  # source://bankai//lib/bankai/generators/lint_generator.rb#17
  def install_overcommit; end

  # source://bankai//lib/bankai/generators/lint_generator.rb#21
  def rubocop_autocorrect; end

  # source://bankai//lib/bankai/generators/lint_generator.rb#25
  def rubocop_todo; end
end

# source://bankai//lib/bankai/generators/mailer_generator.rb#8
class Bankai::Generators::MailerGenerator < ::Bankai::Generators::Base
  # source://bankai//lib/bankai/generators/mailer_generator.rb#9
  def configure_letter_opener; end

  private

  # source://bankai//lib/bankai/generators/mailer_generator.rb#19
  def configuration; end
end

# source://bankai//lib/bankai/generators/sitemap_generator.rb#17
class Bankai::Generators::SitemapGenerator < ::Bankai::Generators::Base
  # source://bankai//lib/bankai/generators/sitemap_generator.rb#18
  def add_sitemap_generator; end

  # source://bankai//lib/bankai/generators/sitemap_generator.rb#27
  def generate_sitmap_config; end

  # source://bankai//lib/bankai/generators/sitemap_generator.rb#23
  def init_sitemap; end
end

# source://bankai//lib/bankai/generators/testing_generator.rb#8
class Bankai::Generators::TestingGenerator < ::Bankai::Generators::Base
  # source://bankai//lib/bankai/generators/testing_generator.rb#13
  def configure_rspec; end

  # source://bankai//lib/bankai/generators/testing_generator.rb#9
  def generate_rspec; end

  # source://bankai//lib/bankai/generators/testing_generator.rb#27
  def provide_database_rewinder_config; end

  # source://bankai//lib/bankai/generators/testing_generator.rb#20
  def provide_shoulda_matchers_config; end
end

# source://bankai//lib/bankai/generators/whenever_generator.rb#8
class Bankai::Generators::WheneverGenerator < ::Bankai::Generators::Base
  # source://bankai//lib/bankai/generators/whenever_generator.rb#9
  def add_whenever; end

  # source://bankai//lib/bankai/generators/whenever_generator.rb#19
  def initialize_capistrano; end

  # source://bankai//lib/bankai/generators/whenever_generator.rb#15
  def initialize_whenever; end
end

# source://bankai//lib/bankai/helper.rb#5
module Bankai::Helper
  protected

  # @return [Boolean]
  #
  # source://bankai//lib/bankai/helper.rb#16
  def capistrano?; end

  # @return [Boolean]
  #
  # source://bankai//lib/bankai/helper.rb#12
  def mysql?; end

  # @return [Boolean]
  #
  # source://bankai//lib/bankai/helper.rb#8
  def pg?; end

  private

  # source://bankai//lib/bankai/helper.rb#22
  def gemfile; end
end

# source://bankai//lib/bankai/version.rb#6
Bankai::RAILS_VERSION = T.let(T.unsafe(nil), String)

# source://bankai//lib/bankai/version.rb#7
Bankai::RUBOCOP_VERSION = T.let(T.unsafe(nil), String)

# source://bankai//lib/bankai/version.rb#5
Bankai::RUBY_VERSION = T.let(T.unsafe(nil), String)

# source://bankai//lib/bankai/version.rb#4
Bankai::VERSION = T.let(T.unsafe(nil), String)
