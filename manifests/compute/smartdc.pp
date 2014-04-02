
class nova::compute::smartdc {

  nova_config {
    'DEFAULT/compute_driver':      value => "smartdc.SmartdcDriver";
  }

  package { 'openstack-nova-smartos' :
    ensure  => present
  }

}

