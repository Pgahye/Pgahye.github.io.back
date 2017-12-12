require 'html-proofer'

# rake test
desc "build and test website"
task :test do
  sh "bundle exec jekyll build"
  HTMLProofer.check_directory("./_site", http_status_ignore: [999]).run
end
