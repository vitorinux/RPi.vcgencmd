_vcgencmd () {
    local cur prev commands opts_clock opts_volts opts_codec opts_config opts_mem opts_display
    commands=$(vcgencmd commands)
    commands=${commands:10:${#commands}-11}
    commands="${commands//,} commands"
    opts_clock="arm core h264 isp v3d uart pwm emmc pixel vec hdmi dpi "
    opts_clock="45  1    28   42  43  22   25  47   29    10  9    4 ""$opts_clock"
    opts_volts="core sdram_c sdram_i sdram_p"
    opts_codec="H264 MPG2 WVC1 MJPG WMV9"
    opts_config="int str
        arm_freq
        config_hdmi_boost
        core_freq
        disable_commandline_tags
        disable_l2cache
        emmc_pll_core
        force_eeprom_read
        force_pwm_open
        framebuffer_ignore_alpha
        framebuffer_swap
        hdmi_force_cec_address
        over_voltage
        over_voltage_avs
        overscan_bottom
        overscan_left
        overscan_right
        overscan_top
        pause_burst_frames
        program_serial_random
        sdram_freq
        temp_limit"
    opts_mem="arm gpu"
    opts_display="0 1"

    COMPREPLY=()
    cur=$(_get_cword)
    prev=${COMP_WORDS[COMP_CWORD-1]}

    case "$prev" in
        "vcgencmd")
            COMPREPLY=($(compgen -W "$commands" "$cur"))
            ;;
        "measure_clock")
            COMPREPLY=($(compgen -W "$opts_clock" "$cur"))
            ;;
        "measure_volts")
            COMPREPLY=($(compgen -W "$opts_volts" "$cur"))
            ;;
        "codec_enabled")
            COMPREPLY=($(compgen -W "$opts_codec" "$cur"))
            ;;
        "get_config")
            COMPREPLY=($(compgen -W "$opts_config" "$cur"))
            ;;
        "get_mem")
            COMPREPLY=($(compgen -W "$opts_mem" "$cur"))
            ;;
        "display_power")
            COMPREPLY=($(compgen -W "$opts_display" "$cur"))
            ;;
    esac

    return 0
}
complete -F _vcgencmd vcgencmd
