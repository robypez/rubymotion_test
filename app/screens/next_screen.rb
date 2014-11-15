class NextScreen < PM::Screen
  title "Impostazioni"

  def on_load
    set_attributes self.view, {
      background_color: hex_color("#ececec")
    }
    
  end
end