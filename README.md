# docker-vsftpd

A dockerized version of [vsftpd](http://vsftpd.beasts.org/).

## How to start

Check the [example](./example) folder for a complete, working example.

In summary, just use the regular configuration that vsftpd requires and change the setup as you see fit.

There's no trickery or shell scripting wizardry. Just plain and simple vsftpd.

## Notes

Make sure to set `root` as the owner of `vsftpd.conf`, as vsftpd is picky with it. To ease with changes, you can set it also to be writable by anyone.
