# == Class: simple_motd
#
# Esta clase se escribio para modificar de forma dinamica el contenido del motd en los servidores, usando el proyecto Foreman
# y su integracion con Puppet.
#
# === Parameters
# === Variables
# === Examples
# === Authors
# Author Name Juan Carlos <juan.deguer@gmail.com>
#
class simple_motd (
  $contenido = undef,
  $plantilla = undef,
){
  if $contenido {
    warning('Se brindo una plantilla y contenido, se ignorara el contenido del motd y sera remplazado.')
    $contenido_del_motd = $contenido
  } else {
    $contenido_del_motd = template('motd/motd.erb')
  }
  
  file {'/etc/motd':
    ensure  => file,
    backup  => false,
    content => $contenido_del_motd,
  }
}
