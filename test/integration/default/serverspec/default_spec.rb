require 'serverspec_helper'

describe 'macosx_screenresolution::default' do
  if os[:family] == 'darwin'
    describe file(
      '/usr/local/bin/screenresolution') do
      it { should be_file }
    end
  end
end
