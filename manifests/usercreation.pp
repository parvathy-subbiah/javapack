class javapack::usercreation
(
$usr = $javapack::usr,
$grp = $javapack::grp,
)
{
user { $usr :
name 	=> $usr,
groups  => $grp,
ensure  => 'present',
managehome => true,
home    => '/home/java/',
shell   => '/bin/bash',
require => Group[$grp],
}
group { $grp :
name => $grp,
ensure => 'present',
}
}
