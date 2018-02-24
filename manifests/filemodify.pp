class javapack::filemodify
(
$location = $javapack::location,
$usr  = $javapack::usr,
$grp = $javapack::grp,
)
{
file { $location :
ensure => 'directory',
owner => $usr,
group => $grp,
mode => '0755',
}
}
