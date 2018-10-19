Pod::Spec.new do |s|
  s.name             = 'KZTableViewDataSource'
  s.version          = '1.0.0'
  s.summary          = '用于 TableViewCell 解耦合'
  s.description      = <<-DESC
用于 TableViewCell 解耦合
                       DESC
  s.homepage         = 'https://github.com/kagenZhao/KZTableViewDataSource'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kagenZhao' => 'Guoqing.Zhao@cicc.com.cn' }
  s.source           = { :git => 'https://github.com/kagenZhao/KZTableViewDataSource.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'KZTableViewDataSource/Classes/**/*'
  s.swift_version = '4.2'
  
  
end
