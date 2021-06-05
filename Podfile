source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/SDOSLabs/cocoapods-specs.git'
# Uncomment the next line to define a global platform for your project
platform :ios, '13.6'


target 'MarvelApp' do

  use_frameworks!
  # shared_pods
  pod 'AlamofireObjectMapper', :git => 'https://github.com/RomanPodymov/AlamofireObjectMapper.git', :branch => 'master'
  pod 'AlamofireImage'
  pod 'PKHUD', '~> 5.0'
  pod 'PromiseKit'
  pod 'SDOSAlamofire', '~>2.0.1' 
  pod 'SDOSKeyedCodable'
  pod 'SDOSEnvironment', '~>1.3.0' 
  
    target 'MarvelAppUnitTests' do
      inherit! :search_paths
      pod 'Cuckoo'
      pod 'Nimble'
  end

end

