class nova::compute::smartdc {

  nova_config {
    'DEFAULT/compute_driver':      value => "smartdc.SmartdcDriver";
    'smartdc/cloudapi_url':        value => "https://cloudapi.mad.cint.is.hi.inet";
    'smartdc/cloudapi_username':   value => "is_cloud";
    'smartdc/cloudapi_password':   value => "$cloudapi_password";
    'smartdc/api_version':         value => "~6.5";
    'smartdc/mapi_url':            value => "http://mapi.mad.cint.is.hi.inet";
    'smartdc/mapi_username':       value => "admin";
    'smartdc/mapi_password':       value => "$mapi_password";
  }

  package { 'openstack-nova-smartos' :
    ensure  => present
  }

}

