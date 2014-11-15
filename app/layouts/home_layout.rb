class HomeLayout < MK::Layout 
  include HomeStyles

  def layout
    root :home do

      add UIView, :logo

      @quiz_button = UIView.alloc.init
      @quiz_button.backgroundColor = UIColor.whiteColor
      add @quiz_button do 
        frame [['10%', 200], [100, 100]]
        layer.mask = add_mask(@quiz_button)
        add UIImageView, :quiz_image do
          image "bullet3".uiimage
          frame from_center(size: [60,60])
        end
      end
      add UILabel, :quiz_label do
        text "Prova d'esame"
        font UIFont.fontWithName('HelveticaNeue', size: 15)
        size_to_fit
        frame from_bottom(@quiz_button, down: 22)
        text_alignment NSTextAlignmentCenter
        text_color :white.uicolor 
      end

      @section_button = UIView.alloc.init
      @section_button.backgroundColor = UIColor.whiteColor
      add @section_button do 
        frame [['60%', 200], [100, 100]]
        layer.mask = add_mask(@section_button)
      end
      @profile_button = UIView.alloc.init
      @profile_button.backgroundColor = UIColor.whiteColor
      add @profile_button do 
        frame [['10%', 360], [100, 100]]
        layer.mask = add_mask(@profile_button)
      end
      @about_button = UIView.alloc.init
      @about_button.backgroundColor = UIColor.whiteColor
      add @about_button do 
        frame [['60%', 360], [100, 100]]
        layer.mask = add_mask(@about_button)
      end
      add UILabel, :label
      add UIButton, :button
    end
  end

  def add_mask(view_element)
    mask_path = UIBezierPath.bezierPathWithRoundedRect(view_element.bounds,
                                                         byRoundingCorners: UIRectCornerAllCorners,
                                                         cornerRadii:       CGSizeMake(100.0, 100.0))
    mask_layer = CAShapeLayer.layer
    mask_layer.frame = view_element.bounds
    mask_layer.path = mask_path.CGPath
    return mask_layer
  end


  

end