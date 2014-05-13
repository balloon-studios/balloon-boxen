define login_item {
    osx_login_item { "${title}":
        name => "${title}",
        path => "/Applications/${title}.app",
    }
}
