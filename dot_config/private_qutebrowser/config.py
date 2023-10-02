# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(True)

import everforest
import special
special.set_colorscheme(c, everforest) # options are dark/light and hard/medium/soft

c.url.searchengines['g'] =  'https://www.google.com/search?q={}' # google
c.url.searchengines['duck'] = 'https://duckduckgo.com/?q={}'
c.url.searchengines['pypi'] = 'https://pypi.org/project/{}/'
c.url.searchengines['repo'] = 'https://github.com/orgs/inDels/repositories?q={}&type=all&language=&sort=' # inDriver GitHub
