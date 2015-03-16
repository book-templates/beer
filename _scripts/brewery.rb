# encoding: utf-8

module HybookHelper

def brewery_stars( brewery )
  buf = ''
  ### e.g.
  # grade 1 -> ♣♣♣  (three stars)
  # grade 2 -> ♣♣ (two stars)
  # grade 3 -> ♣ (one star)
  # grade 4 -> no star
  if (4-brewery.grade) > 0
    (4-brewery.grade).times { buf << '♣' }
     buf << ' '
  end
  buf
end


def brewery_title( brewery )  # brewery title plus synonyms if present
  buf = ''

  ## add (l), (m) or (brewpub) marker
  ##
  if brewery.l?
    buf << '(l) '
  elsif brewery.m?
    buf << '(m) '
  elsif brewery.brewpub?
    buf << '(brewpub) '
  else
    # do nothing
  end

  buf << brewery.title
  if brewery.synonyms.present?
    buf << ' • '
    buf << brewery.synonyms.gsub('|', ' • ')
  end

  ## buf << " ‹#{brewery.grade}›"      ### remove? just for debugging ??
  buf
end


def brewery_tags( brewery, opts={} )
  ### todo: add hl production at the end if present
  
  buf = ''
  if brewery.tags.count > 0
    buf << '_'
    brewery.tags.each_with_index do |tag,i|
      buf << ' '  if i > 0
      buf << "#{tag.title}"
    end
    buf << '_{:.tags}'
  end
  buf
end


end # module HybookHelper
