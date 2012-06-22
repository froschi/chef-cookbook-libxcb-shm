packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libxcb-shm0
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
