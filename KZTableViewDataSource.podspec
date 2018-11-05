Pod::Spec.new do |s|
  s.name             = 'KZTableViewDataSource'
  s.version          = '1.0.1'
  s.summary          = '用于 TableViewCell 解耦合'
  s.description      = <<-DESC
用于 TableViewCell 解耦合, 无需在写冗长的 datasource 代理方法
                       DESC
  s.homepage         = 'https://github.com/kagenZhao/KZTableViewDataSource'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kagenZhao' => 'kagen@kagenz.com' }
  s.source           = { :git => 'https://github.com/kagenZhao/KZTableViewDataSource.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'KZTableViewDataSource/Classes/**/*'
  s.swift_version = '4.2'
end
