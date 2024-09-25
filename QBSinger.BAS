CLS

GOTO 0

0
PRINT
COLOR 15
PRINT "     ________   __________   _________.__                                    "
PRINT "     \_____  \  \______   \ /   _____/|__|  ____     ____    ____  _______   "
PRINT "      /  / \  \  |    |  _/ \_____  \ |  | /    \   / ___\ _/ __ \ \_  __ \  "
PRINT "     /   \_/.  \ |    |   \ /        \|  ||   |  \ / /_/  >\  ___/  |  | \/  "
PRINT "     \_____\ \_/ |______  //_______  /|__||___|  / \___  /  \___  > |__|     "
PRINT "            \__>        \/         \/          \/ /_____/       \/           "
COLOR 7
LOCATE 8, 11
PRINT "I can sing 'Twinkle Twinkle Little Star' & 'Jingle Bells!'"
PRINT
GOTO 10

10
COLOR 15
LOCATE 10, 25
PRINT "1. Twinkle Twinkle Little Star"
COLOR 15, 3
twinkle$ = "                                           "
twinkle$ = twinkle$ + "      C    C    G    G    A    A    G      "
twinkle$ = twinkle$ + "                                           "
twinkle$ = twinkle$ + "      F    F    E    E    D    D    C      "
twinkle$ = twinkle$ + "                                           "
twinkle$ = twinkle$ + "      G    G    F    F    E    E    D      "
twinkle$ = twinkle$ + "                                           "
twinkle$ = twinkle$ + "      G    G    F    F    E    E    D      "
twinkle$ = twinkle$ + "                                           "
twinkle$ = twinkle$ + "      C    C    G    G    A    A    G      "
twinkle$ = twinkle$ + "                                           "
twinkle$ = twinkle$ + "      F    F    E    E    D    D    C      "
twinkle$ = twinkle$ + "                                           "
FOR i = 1 TO LEN(twinkle$)
        column% = ((i - 1) MOD 43) + 19
        row% = (i - 1 - ((i - 1) MOD 43)) / 43 + 11
        LOCATE row%, column%
        PRINT MID$(twinkle$, i, 1)
NEXT i
FOR i = 1 TO LEN(twinkle$)
        column% = ((i - 1) MOD 43) + 19
        row% = (i - 1 - ((i - 1) MOD 43)) / 43 + 11
        note$ = MID$(twinkle$, i, 1)
        LOCATE row%, column%
        COLOR 3, 0
        PRINT note$;
        IF note$ <> " " THEN
                LOCATE row%, column%
                COLOR 31, 0
                PRINT note$;
                PLAY "MF" + note$
                IF cloumn% = 42 THEN
                        PLAY "P24"
                END IF
                LOCATE row%, column%
                COLOR 15, 0
                PRINT note$
        END IF
NEXT i
GOTO 20

20
COLOR 15
LOCATE 10, 25
PRINT "        2. Jingle Bells       "
COLOR 15, 3
PLAY "EEEP50EEEP50EGCDEP24"
PLAY "FFFP60FFFP60EEP60EEEP60DDP60EDP50GP24"
PLAY "EEEP50EEEP50EGCDEP24"
PLAY "FFFP60FFFP60EEP60EEGP60GFDCP24"
PLAY "<GEP50DCGP12"
PLAY "GGGP60EDCAP12"
PLAY "AFP50EDBP12"
PLAY "GGP60FDEP12"
PLAY "GEP50DCGP12"
PLAY "GGGP60EDCAP12"
PLAY ">AFP50EDP60GGGP60GGP60AGP60FDCP50G"
PLAY "EEEP50EEEP50EGCDEP24"
PLAY "FFFP60FFFP60EEP60EEEP60DDP60EDP50GP24"
PLAY "EEEP50EEEP50EGCDEP24"
PLAY "FFFP60FFFP60EEP60EEGP60GFDCP24"
GOTO 100

100
COLOR 15, 0
END

