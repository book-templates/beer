# encoding: utf-8

##########################
# page helpers

module HybookHelper
  

def render_country( country, opts={} )
  render 'country', opts, country: country
  ## tmpl = TextUtils::PageTemplate.read( "#{TEMPLATES_DIR}/country.md" )
  ## quickfix_concat_lines( tmpl.render( binding ) )
end

def render_country_mini( country, opts={} )
  render 'country-mini', opts, country: country
  ## tmpl = TextUtils::PageTemplate.read( "#{TEMPLATES_DIR}/country-mini.md" )
  ## quickfix_concat_lines( tmpl.render( binding ) )
end

def render_country_stats( country, opts={} )
  render 'country-stats', opts, country: country
  ## tmpl = TextUtils::PageTemplate.read( "#{TEMPLATES_DIR}/country-stats.md" )
  ## quickfix_concat_lines( tmpl.render( binding ) )
end


def render_toc( opts={} )
  render 'toc', opts
  ## tmpl = File.read_utf8( "#{TEMPLATES_DIR}/toc.md" )
  ## render_erb_template( tmpl, binding )
end

def render_whats_news_in_year( year, opts={} )
  render 'whats-news-in-year', opts, year: year
  ## tmpl = File.read_utf8( "#{TEMPLATES_DIR}/whats-news-in-year.md" )
  ## render_erb_template( tmpl, binding )
end


def render_breweries_idx( opts={} )
  render 'breweries-idx', opts
  ## tmpl = TextUtils::PageTemplate.read( "#{TEMPLATES_DIR}/breweries-idx.md" )
  ## quickfix_concat_lines( tmpl.render( binding ) )
end


def render_beers_idx( opts={} )
  render 'beers-idx', opts
  ## tmpl = File.read_utf8( "#{TEMPLATES_DIR}/beers-idx.md" )
  ## render_erb_template( tmpl, binding )
end

def render_brands_idx( opts={} )
  render 'brands-idx', opts
  ## tmpl = File.read_utf8( "#{TEMPLATES_DIR}/brands-idx.md" )
  ## render_erb_template( tmpl, binding )
end

end # module HybookHelper
