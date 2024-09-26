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
COLOR 15, 0
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
        COLOR 15, 3
        PRINT note$;
        IF note$ <> " " THEN
                LOCATE row%, column%
                COLOR 31, 3
                PRINT note$;
                PLAY note$
                IF cloumn% = 42 THEN
                        PLAY "P24"
                END IF
                LOCATE row%, column%
                COLOR 15, 3
                PRINT note$
        END IF
NEXT i
COLOR 0, 0
FOR i = 0 TO 12
        LOCATE i + 11, 19
        PRINT "                                                   "
NEXT i
GOTO 20

20
COLOR 15
LOCATE 10, 25
PRINT "        2. Jingle Bells       "
jingle$ = "                                                   "
jingle$ = jingle$ + "   E E EP50E E E P50E G C D EP24                   "
jingle$ = jingle$ + "   F F FP60F F F P60E E P60E E EP60D DP60E DP50GP24"
jingle$ = jingle$ + "   E E EP50E E E P50E G C D EP24                   "
jingle$ = jingle$ + "   F F FP60F F FP60E EP60E E GP60G F D CP24        "
jingle$ = jingle$ + " < G EP50D C GP12  G G GP60E D C AP12              "
jingle$ = jingle$ + "   A FP50E D B P12 G GP60F D EP12                  "
jingle$ = jingle$ + "   G EP50D C GP12  G G GP60E D C AP12              "
jingle$ = jingle$ + " > A FP50E DP60G G GP60G GP60A GP60F D CP50G       "
jingle$ = jingle$ + "   E E EP50E E EP50E G C D EP24                    "
jingle$ = jingle$ + "   F F FP60F F FP60E EP60E E EP60D DP60E DP50GP24  "
jingle$ = jingle$ + "   E E EP50E E EP50E G C D EP24                    "
jingle$ = jingle$ + "   F F FP60F F FP60E EP60E E GP60G F D CP24        "
COLOR 15
FOR i = 1 TO LEN(jingle$)
        r% = (i - 1) MOD 51
        column% = r% + 19
        row% = (i - 1 - r%) / 51 + 11
        LOCATE row%, column%
        note$ = MID$(jingle$, i, 1)
        IF note$ <> "P" THEN
                PRINT note$
        ELSE
                PRINT "   "
                i = i + 2
        END IF
NEXT i
FOR i = 1 TO LEN(jingle$)
        r% = (i - 1) MOD 51
        column% = r% + 19
        row% = (i - 1 - r%) / 51 + 11
        LOCATE row%, column%
        note$ = MID$(jingle$, i, 1)
        COLOR 15, 6
        IF note$ <> " " THEN
                LOCATE row%, column%
                IF note$ = "P" THEN
                        PRINT "   ";
                        i = i + 2
                ELSE
                        COLOR 31, 6
                        PRINT note$;
                        PLAY note$
                        LOCATE row%, column%
                        COLOR 15, 6
                        PRINT note$;
                END IF
        ELSE
                PRINT note$;
        END IF
NEXT i
COLOR 0, 0
FOR i = 0 TO 12
        LOCATE i + 11, 19
        PRINT "                                                   "
NEXT i
GOTO 100

100
COLOR 15, 0
END

