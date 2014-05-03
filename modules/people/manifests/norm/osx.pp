class people::norm::osx {
    include osx::global::enable_keyboard_control_access
    include osx::global::expand_print_dialog
    include osx::global::expand_save_dialog

    include osx::dock::2d
    include osx::dock::autohide

    include osx::finder::show_all_on_desktop
    include osx::finder::empty_trash_securely
    include osx::finder::unhide_library

    include osx::universal_access::ctrl_mod_zoom

    include osx::disable_app_quarantine

    class { 'osx::dock::icon_size':
        size => 128
    }
}