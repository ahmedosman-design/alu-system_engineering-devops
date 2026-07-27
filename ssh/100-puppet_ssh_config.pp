# Configure SSH client authentication

augeas { 'ssh_config_identityfile':
  context => '/files/etc/ssh/ssh_config',
  changes => [
    'set Host/*/IdentityFile ~/.ssh/school',
    'set Host/*/PasswordAuthentication no',
  ],
  onlyif  => 'match Host/* size == 0',
}