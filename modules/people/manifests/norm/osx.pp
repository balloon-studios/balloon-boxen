class people::norm::osx {
    include turn-off-dashboard

    include osx::global::enable_keyboard_control_access
    include osx::global::enable_standard_function_keys
    include osx::global::expand_print_dialog
    include osx::global::expand_save_dialog
    include osx::global::tap_to_click

    include osx::dock::2d
    include osx::dock::autohide

    include osx::finder::empty_trash_securely
    include osx::finder::show_all_on_desktop
    include osx::finder::unhide_library

    include osx::universal_access::ctrl_mod_zoom

    include osx::disable_app_quarantine

    class { 'osx::dock::icon_size':
        size => 128
    }
    class { 'osx::dock::hot_corners':
      bottom_left => "Put Display to Sleep",
      bottom_right => "Start Screen Saver",
    }
}
