class HomeScreen < PM::Screen
  title ''

  def on_load
    @layout = HomeLayout.new(root: self.view).build
  end

  def go_to_settings
    open NextScreen
  end

end