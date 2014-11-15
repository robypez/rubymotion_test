module HomeStyles

  def home_style
    background_color "#1c7ac4".uicolor
  end

  def button_style
    background_color :red.uicolor 
  end

  def logo_style
    frame from_top(height: 160, width: '100%')
    background_color :red.uicolor
  end

  def label_style
    text 'Inizia'
    font UIFont.fontWithName('HelveticaNeue', size: 24)
    size_to_fit

    # note: there are better ways to set the center, see the frame helpers below
    frame from_bottom(height: 50, width: '100%')
    text_alignment NSTextAlignmentCenter
    text_color "#1c7ac4".uicolor

    
    background_color :white.uicolor   # from SugarCube
  end

end