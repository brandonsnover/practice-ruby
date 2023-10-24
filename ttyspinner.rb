require "tty-spinner"

spinner = TTY::Spinner.new(format: :pulse_2)

spinner.auto_spin

sleep(3)

spinner.stop
