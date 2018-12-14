require 'rubygems'

SPEC = Gem::Specification.new do |s| 
   s.name = "Platform" 
   s.version = "0.4.2" 
   s.author = "Matt Mower, Kraig Strong" 
   s.email = "self@mattmower.com, kraig.strong@gmail.com" 
   s.homepage = "https://github.com/kraigstrong/platform" 
   s.platform = Gem::Platform::RUBY 
   s.summary = "Hopefully robust platform sensing" 
   candidates = Dir.glob("{bin,docs,lib,tests}/**/*") 
   s.files = candidates.delete_if do |item| 
      item.include?("CVS") || item.include?("rdoc") 
   end 
   s.require_path = "lib" 
   s.autorequire = "platform" 
   s.has_rdoc = true 
   s.extra_rdoc_files = ["README"]
   s.license = "MIT"
end 
