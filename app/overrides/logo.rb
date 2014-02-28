Deface::Override.new(:virtual_path => "spree/shared/_header",
                     :name => "logo",
                     :replace_contents => "#logo",
                     :text => Spree::Config[:site_name])