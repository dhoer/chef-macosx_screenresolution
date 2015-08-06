if platform?('mac_os_x')
  res_app = "#{Chef::Config[:file_cache_path]}/screenresolution.dmg"

  cookbook_file res_app do
    source 'screenresolution.dmg'
  end

  dmg_package 'screenresolution-1.7dev' do
    source "file://#{res_app}"
    volumes_dir 'screenresolution 1.7dev'
    type 'pkg'
  end

  execute "screenresolution set #{node['macosx_screenresolution']['dimensions']}"
else
  log('The macosx_screenresolution cookbook is only for Mac OS X platform!') { level :warn }
end
