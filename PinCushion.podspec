Pod::Spec.new do |s|
  s.name             = 'PinCushion'
  s.version          = '1.2.0'
  s.summary          = 'An Autolayout extension wrapping NSLayoutConstraint for easier constraint logic.'

  s.description      = <<-DESC
 PinCushion is a UIView extension that makes adding layout constraints in code more equivelant to the way you interact with constraints in Interface Builder.
                       DESC

  s.homepage         = 'https://github.com/LucasBest/PinCushion'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LucasBest' => 'lucas.best.5@gmail.com' }
  s.source           = { :git => 'https://github.com/LucasBest/PinCushion.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/thereallu5'

  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'

  s.source_files = 'PinCushion/Classes/**/*'

  s.frameworks = 'UIKit'
end
