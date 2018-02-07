desc "Make Posts to various event sites"
task :make_post => :environment do
  puts "this is working"
  PostEventAutomation.new.perform
  puts "done"
end