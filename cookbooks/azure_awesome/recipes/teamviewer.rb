cookbook_file 'c:/TeamViewer_Setup_en.exe' do
  source 'TeamViewer_Setup_en.exe'
end


windows_package 'TeamViewer 9' do
  source 'c:/TeamViewer_Setup_en.exe'
  options '/S'
  installer_type :custom
  action :install
end