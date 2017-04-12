

Pod::Spec.new do |s|
s.name         = "FZKTools"
s.version      = "1.0.3"
s.ios.deployment_target = '8.0'
s.summary      = "some utilities"
s.homepage     = "https://github.com/casmosong/FZKTools"
s.license              = { :type => "MIT", :file => "LICENSE" }
s.author             = { "czl" => "1421610488@qq.com" }
s.source       = { :git => "https://github.com/casmosong/FZKTools.git", :tag => s.version }
#s.source       = { :git => "git@github.com:aliyun/aliyun-specs.git", :tag => s.version }
s.requires_arc = true

s.source_files = 'FZKTools/*'


s.subspec 'Category' do |ss|
ss.source_files = 'FZKTools/Category/*', 'FZKTools/Category/**/*'
ss.dependency 'ObjcAssociatedObjectHelpers', '~> 2.0.1'#Rsa加密
end

s.subspec 'Macro' do |ss|
ss.source_files = 'FZKTools/Macro/*.{h}'
end

s.subspec 'Networking' do |ss|
ss.source_files = 'FZKTools/Networking/*.{h,m}'
ss.dependency 'AFNetworking','~>3.1.0' #网络连接

end

s.subspec 'Utilities' do |ss|
ss.source_files = 'FZKTools/Utilities/*.{h,m}'
end




end
