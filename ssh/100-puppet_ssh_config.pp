# Configures the local SSH client to use ~/.ssh/school and disable password authentication
file { '/root/.ssh/config':
  ensure => file,
}

file_line { 'Turn off passwd auth':
  path    => '/root/.ssh/config',
  line    => 'PasswordAuthentication no',
  require => File['/root/.ssh/config'],
}

file_line { 'Declare identity file':
  path    => '/root/.ssh/config',
  line    => 'IdentityFile ~/.ssh/school',
  require => File_line['Turn off passwd auth'],
}