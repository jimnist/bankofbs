##
# tasks for maintaining and deploying this middleman site
#
# relies on public key being set up for the user on the host

USER_NAME = "ubuntu"
EINCHE_HOST = "kimchee"  # production
SITE_DIR = "/usr/share/nginx/www"

desc "run dev server"
task :dev  do
  puts "dev serving"
  system('./scripts/dev_servers.sh')
end

desc "build site locally"
task :build  do
  puts "building site"
  system('middleman build')
end

desc "deploy bankofbs to #{EINCHE_HOST}"
task :deploy => :build do
	cmd = "rsync -avrz build/ #{USER_NAME}@#{EINCHE_HOST}:#{SITE_DIR}"
	puts cmd
	system cmd
	puts "production site deployed"
end
