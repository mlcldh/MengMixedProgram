Pod::Spec.new do |s|

  s.name         = "HeheKit"
  s.version      = "0.0.1"
  s.summary      = "MLCKit的Swift版本，封装一些常用的iOS方法。"

  s.homepage     = "https://github.com/mlcldh/HeheKit"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "mlcldh" => "1228225993@qq.com" }

  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/mlcldh/HeheKit.git", :tag => s.version.to_s }
#  s.source_files = "HeheKit"
  s.module_name   = 'HeheKit'
  s.source_files = 'HeheKit/HeheKit.h', 'HeheKit/*.{modulemap}'
#  s.swift_version = '5.3'
  
  s.requires_arc = true
  s.static_framework = true
  
  s.preserve_path = "HeheKit/module.modulemap"
#  s.xcconfig = { "SWIFT_INCLUDE_PATHS" => "$(PODS_ROOT)/HCKit-Swift/Module"}
  
  # s.subspec 'Cache' do |ss|
  #   ss.source_files = 'HeheKit/Cache/*.{swift}'
  #   ss.dependency 'YYCache'
  #   ss.frameworks = 'Foundation'
  # end
  
  s.subspec 'UI' do |ss|
    ss.source_files = 'HeheKit/UI/*.{h,m,mm,swift}'
    ss.frameworks = 'UIKit'
    ss.dependency 'SnapKit'
    ss.dependency 'Masonry'
    ss.dependency 'MLCKit'
    ss.dependency 'LCSKit/UI'
  end

  s.subspec 'One' do |ss|
    ss.source_files = 'HeheKit/One/*.{h,m,c,mm,hpp,cpp,swift}'
    ss.frameworks = 'UIKit'
    ss.libraries = "z", "c++"
  end
  
  s.subspec 'Two' do |ss|
    ss.source_files = 'HeheKit/Two/*.{h,m,mm,swift}'
    ss.frameworks = 'UIKit'
  end
  
  s.subspec 'Three' do |ss|
    ss.source_files = 'HeheKit/Three/*.{h,m,mm,swift}'
    ss.frameworks = 'UIKit'
  end
  
  
  s.swift_version = '5.3'
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

end
