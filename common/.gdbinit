########################################################################################################################
# GDB config file, save as `$HOME/.gdbinit`.
########################################################################################################################

set height 0
set width 0
set disassembly-flavor intel
set prompt \033[1;38;5;001mGDB > \033[000m
set confirm off

# Delete/clear breakpoints
define bpc
    if $argc == 0
        delete
    else
        clear $arg0
    end
end
document bpc
Remove the specified breakpoint. If none specified, remove all.
Usage: bpc [BREAKPOINT]
end

# List breakpoints
define bpl
    info breakpoints
end
document bpl
List all breakpoints.
Usage: bpl
end

# Exit
define exit
    quit
end
document exit
Alias to quit.
Usage: exit
end
