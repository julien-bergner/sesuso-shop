Spree::HomeController.class_eval do

  def index
    slider = Spree::Taxon.where(:id => 2).first
    @slider_products = slider.products.active if slider

    featured = Spree::Taxon.where(:id => 3).first
    @featured_products = featured.products.active if featured

    latest = Spree::Taxon.where(:name => 'Latest').first
    @latest_products = latest.products.active if latest
  end

end
