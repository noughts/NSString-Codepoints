Pod::Spec.new do |s|
  s.name         = "NSString+Codepoints"
  s.version      = "0.1.0"
  s.summary      = "Profiler like console.time()"
  s.homepage     = "https://github.com/noughts/NSString+Codepoints"
  s.author       = { "noughts" => "noughts@gmail.com" }
  s.source       = { :git => "https://github.com/noughts/NSString+Codepoints.git" }
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.platform = :ios
  s.requires_arc = true
  s.source_files = 'NSString+Codepoints'
end
