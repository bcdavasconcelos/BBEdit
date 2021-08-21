#!/Users/bcdav/opt/anaconda3/bin/python3
# -*- coding: UTF-8 -*-
# Não translitera grego politônico

import sys
from transliterate import translit
# from transliterate import translit, get_available_language_codes

theWord = sys.argv[1]
# theWord = "φιλοσοφία"
print(translit(theWord, 'el', reversed=True))


# g_el = TranslipsumGenerator(language_code='el', reversed=True)
# print(g_el.theWord)
