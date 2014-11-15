class AppProperties
  VERSION = '0.1'
  SKU_NAME = 'nauticaquiz' #default
  COMPANY_NAME = 'com.patentenauticagenova.'
  
  def name
    'Nautica Quiz'
  end

  def self.version
    VERSION
  end

  def app_version
    VERSION
  end

  def frameworks
    []
  end

  def contributors
    []
  end

  def developer_certificate
    "...."
  end

  def distribution_certificate
    "...."
  end

  def provisioning
    './provisioning' #symlink is custom to each user's machine
  end

  def deployment_target
    '6.0'
  end


  def delegate
    'app_delegate'
  end

  def prerendered_icon
    false 
  end

  def devices
    [:iphone]
  end

  def identifier
    COMPANY_NAME + SKU_NAME
  end

  def description
    %W[
      Patente nautica test
    ]
  end
end
