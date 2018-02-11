require 'timerizer'
require 'time'

require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: ruby date-shuffle.rb [options]"

  opts.on("-p path", "--path=path", "Path to the target respository") do |path|
    puts path
    options[:path] = path
  end
end.parse!


if options[:path] == nil
  print 'Enter the path of target repository: '
  options[:path] = gets.chomp
end

p options
#p ARGV

path = options[:path]
Dir.chdir path

count = %x(git log --pretty=format:"%H" | wc -w)
count = count.to_i
puts "there are #{count} commits in total"

days_offset = []
(1..365).to_a.sample(count).each do |num|
  days_offset << num
end

days_offset.sort!

i = 0
days_offset.each do |offset|
  i += 1

  commit = %x(git log -#{i} --pretty=format:"%H" | tail -1)

  # Sat, 14 Dec 2015 12:40:00 +0000
  date = offset.days.ago

  random_time = Time.new(date.year, date.month, date.day, (8..23).to_a.sample, (0..59).to_a.sample, (0..59).to_a.sample, "+02:00")
  command = <<-FOO
  git filter-branch -f --env-filter "if test \\$GIT_COMMIT = \'#{commit}\' ; then export GIT_AUTHOR_DATE='#{random_time.to_s}'; export GIT_COMMITTER_DATE='#{random_time.to_s}'; fi && rm -fr '.git/refs/original/'"
FOO
  puts command
  system(command)

end