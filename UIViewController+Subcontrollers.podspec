Pod::Spec.new do |s|
  s.name         = "UIViewController+Subcontrollers"
  s.version      = "0.0.1"
  s.summary      = "Add subcontrollers in one line."
  s.homepage     = "https://github.com/belkevich/uiviewcontroller-subcontrollers"
  s.social_media_url = 'https://twitter.com/okolodev'
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Alexey Belkevich" => "belkevich.alexey@gmail.com" }
  s.source       = { :git => "https://github.com/belkevich/uiviewcontroller-subcontrollers.git",
		     :tag => s.version.to_s}
  s.platform     = :ios
  s.source_files = 'Pod/**/*.{h,m}'
  s.ios.deployment_target = "6.0"
  s.requires_arc = true
end
