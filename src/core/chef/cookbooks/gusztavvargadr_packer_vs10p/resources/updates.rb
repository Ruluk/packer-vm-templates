property :updates_options, Hash

default_action :install

action :install do
  return if updates_options.nil?

  gusztavvargadr_packer_core_updates '' do
    updates_options new_resource.updates_options
    action :install
  end

  # gusztavvargadr_packer_vs_2010_sp1 '' do
  #   action :install
  # end
end
