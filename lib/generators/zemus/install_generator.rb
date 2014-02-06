module Zemus
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      def install_assets
        zemus_js_dir = 'app/assets/javascripts/zemus.js'
        copy_file "zemus.js", zemus_js_dir

        zemus_css_dir = 'app/assets/stylesheets/zemus.css'
        copy_file "zemus.css", zemus_css_dir
      end
    end
  end
end

