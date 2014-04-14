module RestrictCatalogs
  class Railtie < Rails::Railtie
    initializer "my_railtie.configure_rails_initialization" do |app|
      app.config.tkml_features << "restrict_catalogs"
      app.config.autoload_paths += [
        File.expand_path(
          "#{Rails.root}/features/order_approval/lib/restrict_catalogs.rb"
        )
      ]
    end
  end
end
