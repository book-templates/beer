# encoding: utf-8


### todo:
##  add to textutils ?? why? why not??
###
## check - already included in HybookHelper

def number_with_delimiter( num )
  delimiter = '.'
  num.to_s.reverse.gsub( /(\d{3})(?=\d)/, "\\1#{delimiter}").reverse
end


def urlify( title )
  title.downcase.gsub( ' ', '-' ).gsub( /[^a-z\-]/, '' )
end


def render_erb_template( tmpl, ctx )
  TextUtils::PageTemplate.new( tmpl ).render( ctx )
end
