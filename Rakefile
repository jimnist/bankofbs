##
# tasks for maintaining and deploying this jekyll site
#
# adapted and simplified from:
#    http://davidwparker.com/2009/12/01/my-jekyll-rake-file/
#
# relies on public key being set up for the user on the host

require 'rake'

desc "run jekyll and compass"
task :dev do
  system('./_scripts/dev_servers.sh')
end

# TODO: make deploy work
USER_NAME = "git8"
HOST_NAME = "jimnist.com"
SITE_NAME = "coonien.com"

desc "build and run the site locally"
task :run => :build do
  puts "running server locally"
  system('jekyll --server')
end

desc "build _site locally"
task :build => :delete do
  puts "building _site"
  system('compass')
  system('jekyll')
end

desc "deploy #{SITE_NAME}"
task :deploy => :rsync do
  puts "dev site deployed"
end

desc "deletes _site"
task :delete do
  puts "deleting _site"
  system('rm -r _site')
  puts "deleting _site complete"
end

desc "rsync _site"
task :rsync => :build do
  system("rsync -avrz _site/ #{USER_NAME}@#{HOST_NAME}:#{SITE_NAME}")
end