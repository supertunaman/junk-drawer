# Random Slack Image Poster

Posts a random image from a directory after sleeping for a specified time. Can be used to post images at random intervals.

## Dependencies

You need to install [slack-cli](https://github.com/regisb/slack-cli), and create a legacy API token for it. You can create one as your own user, or you can create a user specifically for your ~~spam~~ delightful non-sequiturs.

## Configuration

Make sure the paths to both `slack-cli` and your directory full of images are correct in `slackimg.sh`. Hey, this was a 30 minute hack, okay?

## Usage

### Command line

```
SLACK_TOKEN=secret ./slackimg.sh 0 general
```

Sleeps 0 seconds and then posts to #general using the specified slack token.

### crontab

```
SLACK_TOKEN=secret
* * * * * flock -w 0 /tmp/slackbot.lockfile /home/someguy/slackimg.sh $(shuf -i 3600-25200 -n 1) general
```

Uses [flock](https://linux.die.net/man/1/flock) to open a lock file, then sleeps for between one and seven hours before posting to #general
