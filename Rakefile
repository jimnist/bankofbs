##
# tasks for maintaining and deploying this middleman site
#
# relies on public key being set up for the user on the host

USER_NAME = "deployer"
# REGGIE_HOST = "reggie.loco8.org"  # staging
EINCHE_HOST = "einche.loco8.org"  # production
SITE_DIR = "/var/sites/bankofbs"

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

desc "deploy idxchange to #{EINCHE_HOST}"
task :deploy => :build do
  cmd = "rsync -avrz build/ #{EINCHE_HOST}:#{SITE_DIR}"
  puts cmd
  system cmd
  puts "site deployed"
end