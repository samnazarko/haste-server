# OSMC Pastebin

This Pastebin provides OSMC users with a reliable method of reporting bugs and issues and to assist in helping you get support.

## Duration

Pastes will be archived for as long as reasonably possible, however they may be deleted later as part of a pruning process. 

## Privacy

While the contents of hastebin.com are not directly crawled by any search robot
that obeys "robots.txt", there should be no great expectation of privacy.  Post
things at your own risk. We are not responsible for any loss of data or removed
pastes.

You should be careful when uploading some logs, as they may have access passwords
in them. It is your responsibility to ensure you do not have personally identifiable
information or passwords in your pastes before posting them.

## Uploading from the command line

By default, you can paste to this pastebin by typing 'paste-logs'.

You can also do so by copying and pasting:

paste() { a=$(cat); curl -X POST -s -d "$a" http://paste.osmc.io/documents | awk -F '"' '{print "http://paste.osmc.io/"$4}'; }

And then you can do something like:

cat /var/log/syslog | paste

## Diagnostics

The OSMC project may process these pastes in an automated manner to identify common bugs and issues and
to assist resolving them in a timely manner. 

## Open Source

The OSMC Pastebin is based on Haste. It can easily be installed behind your network, and it's all open source!

* [haste-client](https://github.com/seejohnrun/haste-client)
* [haste-server](https://github.com/seejohnrun/haste-server)
* [osmc-changes](https://github.com/samnazarko/haste-server)

## Author

Code by John Crepezzi <john.crepezzi@gmail.com>
Key Design by Brian Dawson <bridawson@gmail.com>
Modified for OSMC by Sam Nazarko <email@samnazarko.co.uk>
