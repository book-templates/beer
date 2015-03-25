# encoding: utf-8


### todo
##   check where urlify is used
##    use textutils; remove urlify in template


module HybookHelper


def urlify( title )
  title.downcase.gsub( ' ', '-' ).gsub( /[^a-z\-]/, '' )
end


#########################
### move to attic

### todo: check why it is not working in PageTemplate ??

def quickfix_concat_lines( text )
  # lines ending with ++ will get newlines get removed
  # e.g.
  # >| hello1 ++
  # >1 hello2
  # becomes
  # >| hello1 hello2
  #
  
  #
  # FIX: for windows
  #  - needs to check for carriage return (/r)  !!!
  #  on unix - there's no carriage return (thus, w/o it fails if processing w/ /r)
  
  # note: do NOT use \s - will include \n (newline) ??

  text = text.gsub( /\r/, '' )  ## windows-compatible - remove all carriage returns!!!


  ## remove_blanks
  # remove lines only with ..
  text = text.gsub( /^[ \t]*\.{2}[ \t]*\n/, '' )

  ## text.gsub( /[ \t]+\+{2}[ \t]*\n[ \t]*/, ' ' ) # note: replace with single space
  ## todo \n[ \t]* why is it not working ??? match w/ optional spaces after newline???
  ##  create some unit tests to verify/assert !!!!
  ##  use ()? to make it optional?

  text = text.gsub( /[ \t]+\+{2}[ \t]*\n/, ' ' )
  text
end


end # module HybookHelper

