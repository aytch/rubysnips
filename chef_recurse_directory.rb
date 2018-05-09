"/opt/data/java/".split('/').each.reject { |i| i.empty? }.each do |dir|
  path = '' if path.nil?
  path = File.join(path, dir)
  directory path do
    action :create
  end
end
