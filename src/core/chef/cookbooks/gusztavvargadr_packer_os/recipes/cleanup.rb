options = node['gusztavvargadr_packer_os']
return if options.nil?

gusztavvargadr_packer_os_cleanup '' do
  cleanup_options options['cleanup']
  action :run
end
