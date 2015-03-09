# spec/classes/init_spec.rb
require 'spec_helper'

describe "apache" do
  it { should contain_package('apache2') }

  it do should contain_service('apache2').with(
    'ensure' => 'running',
  ) end

  it { should contain_file('/var/www/html/index.html') }
end
