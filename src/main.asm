isTimeTrialMode                  equ    $fffa
livesCount                       equ    $ffa9

SECTION "skip_game_over", ROM0[$01f5]
        jr $01c9

SECTION "keep_time_trial_mode", ROMX[$6a2f], BANK[5]
        nop
        nop

SECTION "enable_time_trial_mode", ROMX[$5eb6], BANK[5]
        call setTimeTrialMode
        nop

SECTION "free_space_bank5", ROMX[$7e20], BANK[5]
    setTimeTrialMode:
        ld a, $01
        ldh [isTimeTrialMode], a

        ; restore hijacked instructions
        xor a

        ret