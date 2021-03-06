object Form10: TForm10
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'youtube-dl --help'
  ClientHeight = 442
  ClientWidth = 692
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 692
    Height = 442
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Items.Strings = (
      '  General Options:'
      
        '    -h, --help                       Print this help text and ex' +
        'it'
      
        '    --version                        Print program version and e' +
        'xit'
      
        '    -U, --update                     Update this program to late' +
        'st version. Make'
      
        '                                     sure that you have sufficie' +
        'nt permissions'
      '                                     (run with sudo if needed)'
      
        '    -i, --ignore-errors              Continue on download errors' +
        ', for example to'
      
        '                                     skip unavailable videos in ' +
        'a playlist'
      
        '    --abort-on-error                 Abort downloading of furthe' +
        'r videos (in the'
      
        '                                     playlist or the command lin' +
        'e) if an error'
      '                                     occurs'
      
        '    --dump-user-agent                Display the current browser' +
        ' identification'
      
        '    --list-extractors                List all supported extracto' +
        'rs'
      
        '    --extractor-descriptions         Output descriptions of all ' +
        'supported'
      '                                     extractors'
      
        '    --force-generic-extractor        Force extraction to use the' +
        ' generic'
      '                                     extractor'
      
        '    --default-search PREFIX          Use this prefix for unquali' +
        'fied URLs. For'
      
        '                                     example "gvsearch2:" downlo' +
        'ads two videos'
      
        '                                     from google videos for yout' +
        'ube-dl "large'
      
        '                                     apple". Use the value "auto' +
        '" to let'
      
        '                                     youtube-dl guess ("auto_war' +
        'ning" to emit a'
      
        '                                     warning when guessing). "er' +
        'ror" just throws'
      
        '                                     an error. The default value' +
        ' "fixup_error"'
      
        '                                     repairs broken URLs, but em' +
        'its an error if'
      
        '                                     this is not possible instea' +
        'd of searching.'
      
        '    --ignore-config                  Do not read configuration f' +
        'iles. When given'
      
        '                                     in the global configuration' +
        ' file /etc'
      
        '                                     /youtube-dl.conf: Do not re' +
        'ad the user'
      
        '                                     configuration in ~/.config/' +
        'youtube-'
      
        '                                     dl/config (%APPDATA%/youtub' +
        'e-dl/config.txt'
      '                                     on Windows)'
      
        '    --flat-playlist                  Do not extract the videos o' +
        'f a playlist,'
      '                                     only list them.'
      
        '    --mark-watched                   Mark videos watched (YouTub' +
        'e only)'
      
        '    --no-mark-watched                Do not mark videos watched ' +
        '(YouTube only)'
      
        '    --no-color                       Do not emit color codes in ' +
        'output'
      
        '    --abort-on-unavailable-fragment  Abort downloading when some' +
        ' fragment is not'
      '                                     available'
      ''
      '  Network Options:'
      
        '    --proxy URL                      Use the specified HTTP/HTTP' +
        'S/SOCKS proxy.'
      
        '                                     To enable experimental SOCK' +
        'S proxy, specify'
      
        '                                     a proper scheme. For exampl' +
        'e'
      
        '                                     socks5://127.0.0.1:1080/. P' +
        'ass in an empty'
      
        '                                     string (--proxy "") for dir' +
        'ect connection'
      
        '    --socket-timeout SECONDS         Time to wait before giving ' +
        'up, in seconds'
      
        '    --source-address IP              Client-side IP address to b' +
        'ind to'
      '                                     (experimental)'
      
        '    -4, --force-ipv4                 Make all connections via IP' +
        'v4'
      '                                     (experimental)'
      
        '    -6, --force-ipv6                 Make all connections via IP' +
        'v6'
      '                                     (experimental)'
      
        '    --geo-verification-proxy URL     Use this proxy to verify th' +
        'e IP address for'
      
        '                                     some geo-restricted sites. ' +
        'The default'
      
        '                                     proxy specified by --proxy ' +
        '(or none, if the'
      
        '                                     options is not present) is ' +
        'used for the'
      
        '                                     actual downloading. (experi' +
        'mental)'
      ''
      '  Video Selection:'
      
        '    --playlist-start NUMBER          Playlist video to start at ' +
        '(default is 1)'
      
        '    --playlist-end NUMBER            Playlist video to end at (d' +
        'efault is last)'
      
        '    --playlist-items ITEM_SPEC       Playlist video items to dow' +
        'nload. Specify'
      
        '                                     indices of the videos in th' +
        'e playlist'
      
        '                                     separated by commas like: "' +
        '--playlist-items'
      
        '                                     1,2,5,8" if you want to dow' +
        'nload videos'
      
        '                                     indexed 1, 2, 5, 8 in the p' +
        'laylist. You can'
      
        '                                     specify range: "--playlist-' +
        'items'
      
        '                                     1-3,7,10-13", it will downl' +
        'oad the videos'
      
        '                                     at index 1, 2, 3, 7, 10, 11' +
        ', 12 and 13.'
      
        '    --match-title REGEX              Download only matching titl' +
        'es (regex or'
      '                                     caseless sub-string)'
      
        '    --reject-title REGEX             Skip download for matching ' +
        'titles (regex or'
      '                                     caseless sub-string)'
      
        '    --max-downloads NUMBER           Abort after downloading NUM' +
        'BER files'
      
        '    --min-filesize SIZE              Do not download any videos ' +
        'smaller than'
      '                                     SIZE (e.g. 50k or 44.6m)'
      
        '    --max-filesize SIZE              Do not download any videos ' +
        'larger than SIZE'
      '                                     (e.g. 50k or 44.6m)'
      
        '    --date DATE                      Download only videos upload' +
        'ed in this date'
      
        '    --datebefore DATE                Download only videos upload' +
        'ed on or before'
      '                                     this date (i.e. inclusive)'
      
        '    --dateafter DATE                 Download only videos upload' +
        'ed on or after'
      '                                     this date (i.e. inclusive)'
      
        '    --min-views COUNT                Do not download any videos ' +
        'with less than'
      '                                     COUNT views'
      
        '    --max-views COUNT                Do not download any videos ' +
        'with more than'
      '                                     COUNT views'
      
        '    --match-filter FILTER            Generic video filter (exper' +
        'imental).'
      
        '                                     Specify any key (see help f' +
        'or -o for a list'
      
        '                                     of available keys) to match' +
        ' if the key is'
      
        '                                     present, !key to check if t' +
        'he key is not'
      
        '                                     present,key > NUMBER (like ' +
        '"comment_count >'
      
        '                                     12", also works with >=, <,' +
        ' <=, !=, =) to'
      
        '                                     compare against a number, a' +
        'nd & to require'
      
        '                                     multiple matches. Values wh' +
        'ich are not'
      
        '                                     known are excluded unless y' +
        'ou put a'
      
        '                                     question mark (?) after the' +
        ' operator.For'
      
        '                                     example, to only match vide' +
        'os that have'
      
        '                                     been liked more than 100 ti' +
        'mes and disliked'
      
        '                                     less than 50 times (or the ' +
        'dislike'
      
        '                                     functionality is not availa' +
        'ble at the given'
      
        '                                     service), but who also have' +
        ' a description,'
      
        '                                     use --match-filter "like_co' +
        'unt > 100 &'
      
        '                                     dislike_count <? 50 & descr' +
        'iption" .'
      
        '    --no-playlist                    Download only the video, if' +
        ' the URL refers'
      '                                     to a video and a playlist.'
      
        '    --yes-playlist                   Download the playlist, if t' +
        'he URL refers to'
      '                                     a video and a playlist.'
      
        '    --age-limit YEARS                Download only videos suitab' +
        'le for the given'
      '                                     age'
      
        '    --download-archive FILE          Download only videos not li' +
        'sted in the'
      
        '                                     archive file. Record the ID' +
        's of all'
      '                                     downloaded videos in it.'
      
        '    --include-ads                    Download advertisements as ' +
        'well'
      '                                     (experimental)'
      ''
      '  Download Options:'
      
        '    -r, --limit-rate RATE            Maximum download rate in by' +
        'tes per second'
      '                                     (e.g. 50K or 4.2M)'
      
        '    -R, --retries RETRIES            Number of retries (default ' +
        'is 10), or'
      '                                     "infinite".'
      
        '    --fragment-retries RETRIES       Number of retries for a fra' +
        'gment (default'
      
        '                                     is 10), or "infinite" (DASH' +
        ' and hlsnative'
      '                                     only)'
      
        '    --skip-unavailable-fragments     Skip unavailable fragments ' +
        '(DASH and'
      '                                     hlsnative only)'
      
        '    --buffer-size SIZE               Size of download buffer (e.' +
        'g. 1024 or 16K)'
      '                                     (default is 1024)'
      
        '    --no-resize-buffer               Do not automatically adjust' +
        ' the buffer'
      
        '                                     size. By default, the buffe' +
        'r size is'
      
        '                                     automatically resized from ' +
        'an initial value'
      '                                     of SIZE.'
      
        '    --playlist-reverse               Download playlist videos in' +
        ' reverse order'
      
        '    --xattr-set-filesize             Set file xattribute ytdl.fi' +
        'lesize with'
      
        '                                     expected filesize (experime' +
        'ntal)'
      
        '    --hls-prefer-native              Use the native HLS download' +
        'er instead of'
      '                                     ffmpeg'
      
        '    --hls-prefer-ffmpeg              Use ffmpeg instead of the n' +
        'ative HLS'
      '                                     downloader'
      
        '    --hls-use-mpegts                 Use the mpegts container fo' +
        'r HLS videos,'
      
        '                                     allowing to play the video ' +
        'while'
      
        '                                     downloading (some players m' +
        'ay not be able'
      '                                     to play it)'
      
        '    --external-downloader COMMAND    Use the specified external ' +
        'downloader.'
      '                                     Currently supports'
      
        '                                     aria2c,avconv,axel,curl,ffm' +
        'peg,httpie,wget'
      
        '    --external-downloader-args ARGS  Give these arguments to the' +
        ' external'
      '                                     downloader'
      ''
      '  Filesystem Options:'
      
        '    -a, --batch-file FILE            File containing URLs to dow' +
        'nload ('#39'-'#39' for'
      '                                     stdin)'
      
        '    --id                             Use only video ID in file n' +
        'ame'
      
        '    -o, --output TEMPLATE            Output filename template, s' +
        'ee the "OUTPUT'
      '                                     TEMPLATE" for all the info'
      
        '    --autonumber-size NUMBER         Specify the number of digit' +
        's in'
      
        '                                     %(autonumber)s when it is p' +
        'resent in output'
      
        '                                     filename template or --auto' +
        '-number option'
      '                                     is given'
      
        '    --restrict-filenames             Restrict filenames to only ' +
        'ASCII'
      
        '                                     characters, and avoid "&" a' +
        'nd spaces in'
      '                                     filenames'
      '    -A, --auto-number                [deprecated; use -o'
      
        '                                     "%(autonumber)s-%(title)s.%' +
        '(ext)s" ] Number'
      
        '                                     downloaded files starting f' +
        'rom 00000'
      
        '    -t, --title                      [deprecated] Use title in f' +
        'ile name'
      '                                     (default)'
      
        '    -l, --literal                    [deprecated] Alias of --tit' +
        'le'
      '    -w, --no-overwrites              Do not overwrite files'
      
        '    -c, --continue                   Force resume of partially d' +
        'ownloaded files.'
      
        '                                     By default, youtube-dl will' +
        ' resume'
      '                                     downloads if possible.'
      
        '    --no-continue                    Do not resume partially dow' +
        'nloaded files'
      '                                     (restart from beginning)'
      
        '    --no-part                        Do not use .part files - wr' +
        'ite directly'
      '                                     into output file'
      
        '    --no-mtime                       Do not use the Last-modifie' +
        'd header to set'
      '                                     the file modification time'
      
        '    --write-description              Write video description to ' +
        'a .description'
      '                                     file'
      
        '    --write-info-json                Write video metadata to a .' +
        'info.json file'
      
        '    --write-annotations              Write video annotations to ' +
        'a'
      '                                     .annotations.xml file'
      
        '    --load-info-json FILE            JSON file containing the vi' +
        'deo information'
      
        '                                     (created with the "--write-' +
        'info-json"'
      '                                     option)'
      
        '    --cookies FILE                   File to read cookies from a' +
        'nd dump cookie'
      '                                     jar in'
      
        '    --cache-dir DIR                  Location in the filesystem ' +
        'where youtube-dl'
      
        '                                     can store some downloaded i' +
        'nformation'
      
        '                                     permanently. By default $XD' +
        'G_CACHE_HOME'
      
        '                                     /youtube-dl or ~/.cache/you' +
        'tube-dl . At the'
      
        '                                     moment, only YouTube player' +
        ' files (for'
      
        '                                     videos with obfuscated sign' +
        'atures) are'
      
        '                                     cached, but that may change' +
        '.'
      '    --no-cache-dir                   Disable filesystem caching'
      
        '    --rm-cache-dir                   Delete all filesystem cache' +
        ' files'
      ''
      '  Thumbnail images:'
      
        '    --write-thumbnail                Write thumbnail image to di' +
        'sk'
      
        '    --write-all-thumbnails           Write all thumbnail image f' +
        'ormats to disk'
      
        '    --list-thumbnails                Simulate and list all avail' +
        'able thumbnail'
      '                                     formats'
      ''
      '  Verbosity / Simulation Options:'
      '    -q, --quiet                      Activate quiet mode'
      '    --no-warnings                    Ignore warnings'
      
        '    -s, --simulate                   Do not download the video a' +
        'nd do not write'
      '                                     anything to disk'
      '    --skip-download                  Do not download the video'
      
        '    -g, --get-url                    Simulate, quiet but print U' +
        'RL'
      
        '    -e, --get-title                  Simulate, quiet but print t' +
        'itle'
      
        '    --get-id                         Simulate, quiet but print i' +
        'd'
      
        '    --get-thumbnail                  Simulate, quiet but print t' +
        'humbnail URL'
      
        '    --get-description                Simulate, quiet but print v' +
        'ideo description'
      
        '    --get-duration                   Simulate, quiet but print v' +
        'ideo length'
      
        '    --get-filename                   Simulate, quiet but print o' +
        'utput filename'
      
        '    --get-format                     Simulate, quiet but print o' +
        'utput format'
      
        '    -j, --dump-json                  Simulate, quiet but print J' +
        'SON information.'
      
        '                                     See --output for a descript' +
        'ion of available'
      '                                     keys.'
      
        '    -J, --dump-single-json           Simulate, quiet but print J' +
        'SON information'
      
        '                                     for each command-line argum' +
        'ent. If the URL'
      
        '                                     refers to a playlist, dump ' +
        'the whole'
      
        '                                     playlist information in a s' +
        'ingle line.'
      
        '    --print-json                     Be quiet and print the vide' +
        'o information as'
      
        '                                     JSON (video is still being ' +
        'downloaded).'
      
        '    --newline                        Output progress bar as new ' +
        'lines'
      '    --no-progress                    Do not print progress bar'
      
        '    --console-title                  Display progress in console' +
        ' titlebar'
      
        '    -v, --verbose                    Print various debugging inf' +
        'ormation'
      
        '    --dump-pages                     Print downloaded pages enco' +
        'ded using base64'
      
        '                                     to debug problems (very ver' +
        'bose)'
      
        '    --write-pages                    Write downloaded intermedia' +
        'ry pages to'
      
        '                                     files in the current direct' +
        'ory to debug'
      '                                     problems'
      
        '    --print-traffic                  Display sent and read HTTP ' +
        'traffic'
      
        '    -C, --call-home                  Contact the youtube-dl serv' +
        'er for debugging'
      
        '    --no-call-home                   Do NOT contact the youtube-' +
        'dl server for'
      '                                     debugging'
      ''
      '  Workarounds:'
      
        '    --encoding ENCODING              Force the specified encodin' +
        'g (experimental)'
      
        '    --no-check-certificate           Suppress HTTPS certificate ' +
        'validation'
      
        '    --prefer-insecure                Use an unencrypted connecti' +
        'on to retrieve'
      
        '                                     information about the video' +
        '. (Currently'
      '                                     supported only for YouTube)'
      '    --user-agent UA                  Specify a custom user agent'
      
        '    --referer URL                    Specify a custom referer, u' +
        'se if the video'
      
        '                                     access is restricted to one' +
        ' domain'
      
        '    --add-header FIELD:VALUE         Specify a custom HTTP heade' +
        'r and its value,'
      
        '                                     separated by a colon '#39':'#39'. Y' +
        'ou can use this'
      '                                     option multiple times'
      
        '    --bidi-workaround                Work around terminals that ' +
        'lack'
      
        '                                     bidirectional text support.' +
        ' Requires bidiv'
      
        '                                     or fribidi executable in PA' +
        'TH'
      
        '    --sleep-interval SECONDS         Number of seconds to sleep ' +
        'before each'
      
        '                                     download when used alone or' +
        ' a lower bound'
      
        '                                     of a range for randomized s' +
        'leep before each'
      
        '                                     download (minimum possible ' +
        'number of'
      
        '                                     seconds to sleep) when used' +
        ' along with'
      '                                     --max-sleep-interval.'
      
        '    --max-sleep-interval SECONDS     Upper bound of a range for ' +
        'randomized sleep'
      
        '                                     before each download (maxim' +
        'um possible'
      
        '                                     number of seconds to sleep)' +
        '. Must only be'
      
        '                                     used along with --min-sleep' +
        '-interval.'
      ''
      '  Video Format Options:'
      
        '    -f, --format FORMAT              Video format code, see the ' +
        '"FORMAT'
      '                                     SELECTION" for all the info'
      
        '    --all-formats                    Download all available vide' +
        'o formats'
      
        '    --prefer-free-formats            Prefer free video formats u' +
        'nless a specific'
      '                                     one is requested'
      
        '    -F, --list-formats               List all available formats ' +
        'of requested'
      '                                     videos'
      
        '    --youtube-skip-dash-manifest     Do not download the DASH ma' +
        'nifests and'
      
        '                                     related data on YouTube vid' +
        'eos'
      
        '    --merge-output-format FORMAT     If a merge is required (e.g' +
        '.'
      
        '                                     bestvideo+bestaudio), outpu' +
        't to given'
      
        '                                     container format. One of mk' +
        'v, mp4, ogg,'
      
        '                                     webm, flv. Ignored if no me' +
        'rge is required'
      ''
      '  Subtitle Options:'
      '    --write-sub                      Write subtitle file'
      
        '    --write-auto-sub                 Write automatically generat' +
        'ed subtitle file'
      '                                     (YouTube only)'
      
        '    --all-subs                       Download all the available ' +
        'subtitles of the'
      '                                     video'
      
        '    --list-subs                      List all available subtitle' +
        's for the video'
      
        '    --sub-format FORMAT              Subtitle format, accepts fo' +
        'rmats'
      
        '                                     preference, for example: "s' +
        'rt" or'
      '                                     "ass/srt/best"'
      
        '    --sub-lang LANGS                 Languages of the subtitles ' +
        'to download'
      
        '                                     (optional) separated by com' +
        'mas, use --list-'
      
        '                                     subs for available language' +
        ' tags'
      ''
      '  Authentication Options:'
      '    -u, --username USERNAME          Login with this account ID'
      
        '    -p, --password PASSWORD          Account password. If this o' +
        'ption is left'
      
        '                                     out, youtube-dl will ask in' +
        'teractively.'
      '    -2, --twofactor TWOFACTOR        Two-factor auth code'
      
        '    -n, --netrc                      Use .netrc authentication d' +
        'ata'
      
        '    --video-password PASSWORD        Video password (vimeo, smot' +
        'ri, youku)'
      ''
      '  Adobe Pass Options:'
      
        '    --ap-mso MSO                     Adobe Pass multiple-system ' +
        'operator (TV'
      
        '                                     provider) identifier, use -' +
        '-ap-list-mso for'
      '                                     a list of available MSOs'
      
        '    --ap-username USERNAME           Multiple-system operator ac' +
        'count login'
      
        '    --ap-password PASSWORD           Multiple-system operator ac' +
        'count password.'
      
        '                                     If this option is left out,' +
        ' youtube-dl will'
      '                                     ask interactively.'
      
        '    --ap-list-mso                    List all supported multiple' +
        '-system'
      '                                     operators'
      ''
      '  Post-processing Options:'
      
        '    -x, --extract-audio              Convert video files to audi' +
        'o-only files'
      
        '                                     (requires ffmpeg or avconv ' +
        'and ffprobe or'
      '                                     avprobe)'
      
        '    --audio-format FORMAT            Specify audio format: "best' +
        '", "aac",'
      
        '                                     "vorbis", "mp3", "m4a", "op' +
        'us", or "wav";'
      '                                     "best" by default'
      
        '    --audio-quality QUALITY          Specify ffmpeg/avconv audio' +
        ' quality, insert'
      
        '                                     a value between 0 (better) ' +
        'and 9 (worse)'
      
        '                                     for VBR or a specific bitra' +
        'te like 128K'
      '                                     (default 5)'
      
        '    --recode-video FORMAT            Encode the video to another' +
        ' format if'
      
        '                                     necessary (currently suppor' +
        'ted:'
      '                                     mp4|flv|ogg|webm|mkv|avi)'
      
        '    --postprocessor-args ARGS        Give these arguments to the' +
        ' postprocessor'
      
        '    -k, --keep-video                 Keep the video file on disk' +
        ' after the post-'
      
        '                                     processing; the video is er' +
        'ased by default'
      
        '    --no-post-overwrites             Do not overwrite post-proce' +
        'ssed files; the'
      
        '                                     post-processed files are ov' +
        'erwritten by'
      '                                     default'
      
        '    --embed-subs                     Embed subtitles in the vide' +
        'o (only for mp4,'
      '                                     webm and mkv videos)'
      
        '    --embed-thumbnail                Embed thumbnail in the audi' +
        'o as cover art'
      
        '    --add-metadata                   Write metadata to the video' +
        ' file'
      
        '    --metadata-from-title FORMAT     Parse additional metadata l' +
        'ike song title /'
      
        '                                     artist from the video title' +
        '. The format'
      
        '                                     syntax is the same as --out' +
        'put, the parsed'
      
        '                                     parameters replace existing' +
        ' values.'
      
        '                                     Additional templates: %(alb' +
        'um)s,'
      
        '                                     %(artist)s. Example: --meta' +
        'data-from-title'
      
        '                                     "%(artist)s - %(title)s" ma' +
        'tches a title'
      '                                     like "Coldplay - Paradise"'
      
        '    --xattrs                         Write metadata to the video' +
        ' file'#39's xattrs'
      
        '                                     (using dublin core and xdg ' +
        'standards)'
      
        '    --fixup POLICY                   Automatically correct known' +
        ' faults of the'
      
        '                                     file. One of never (do noth' +
        'ing), warn (only'
      
        '                                     emit a warning), detect_or_' +
        'warn (the'
      
        '                                     default; fix file if we can' +
        ', warn'
      '                                     otherwise)'
      
        '    --prefer-avconv                  Prefer avconv over ffmpeg f' +
        'or running the'
      '                                     postprocessors (default)'
      
        '    --prefer-ffmpeg                  Prefer ffmpeg over avconv f' +
        'or running the'
      '                                     postprocessors'
      
        '    --ffmpeg-location PATH           Location of the ffmpeg/avco' +
        'nv binary;'
      
        '                                     either the path to the bina' +
        'ry or its'
      '                                     containing directory.'
      
        '    --exec CMD                       Execute a command on the fi' +
        'le after'
      
        '                                     downloading, similar to fin' +
        'd'#39's -exec'
      
        '                                     syntax. Example: --exec '#39'ad' +
        'b push {}'
      '                                     /sdcard/Music/ && rm {}'#39
      
        '    --convert-subs FORMAT            Convert the subtitles to ot' +
        'her format'
      
        '                                     (currently supported: srt|a' +
        'ss|vtt)')
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 596
    ExplicitHeight = 432
  end
end
