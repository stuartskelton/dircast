# dircast

Simple tool to generate RSS feed
from mp3 files found in a directory

    usage: dircast [<flags>] <directory>

    Flags:
      --help           Show help.
      -s, --server=http://localhost
                       hostname (and path) to the root e.g. http://myserver.com/rss
      -r, --recursive  how to handle the directory scan
      -l, --language=LANGUAGE
                       the language of the RSS document, a ISO 639 value
      -t, --title="RSS FEED"
                       RSS channel title
      -d, --description=DESCRIPTION
                       RSS channel description
      -i, --image=IMAGE  Image to inline in the RSS
      --version        Show application version.

    Args:
      <directory>  directory to read files relative from
