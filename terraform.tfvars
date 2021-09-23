vsphere_folder = "elev8"
vsphere_user = ""
vsphere_password = ""
vsphere_server = ""
vsphere_datacenter = "POC-Lab"
vsphere_datastore = "hpel-tintri"
vsphere_resource_pool = "elev8"
vsphere_virtual_machine_template = "Templates/e8-ubuntu20-template"
vsphere_virtual_machine_web_template = "Templates/e8-web-template"

vsphere_network = [
    "ignw-poc|elev8|servers", 
    "ignw-poc|infrastructure|servers",
    "ignw-poc|cloudcenter|servers"
]

BASENAME = "e8-singlevm"

appnames = ["app"]
