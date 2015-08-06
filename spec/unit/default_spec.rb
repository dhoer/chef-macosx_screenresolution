require 'spec_helper'

describe 'macosx_screenresolution::default' do
  context 'macosx' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(file_cache_path: '/var/chef/cache', platform: 'mac_os_x', version: '10.10') do |node|
        node.set['macosx_screenresolution']['dimensions'] = '1366x768x24'
      end.converge(described_recipe)
    end

    it 'copies screen resolution package' do
      expect(chef_run).to create_cookbook_file('/var/chef/cache/screenresolution.dmg').with(
        source: 'screenresolution.dmg'
      )
    end

    it 'installs screen resolution package' do
      expect(chef_run).to install_dmg_package('screenresolution-1.7dev').with(
        source: 'file:///var/chef/cache/screenresolution.dmg',
        volumes_dir: 'screenresolution 1.7dev',
        type: 'pkg'
      )
    end

    it 'sets screen resolution' do
      expect(chef_run).to run_execute('screenresolution set 1366x768x24')
    end
  end

  context 'non_macosx' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(step_into: ['macosx_screenresolution']).converge(described_recipe)
    end

    it 'should warn if not Windows platform' do
      expect(chef_run).to write_log('The macosx_screenresolution cookbook is only for Mac OS X platform!')
    end
  end
end
