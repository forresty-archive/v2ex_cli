# v2ex_cli

Command line interface to [v2ex.com](http://www.v2ex.com)

Built on top of [v2ex API](https://github.com/livid/v2ex/blob/master/api.py)

## Screenshot

![v2ex_cli screenshot](http://forresty.com/images/v2ex_cli.png)

## Installation

    gem install v2ex # you might need to use sudo

If you are the lazy kind like me, try this

    alias v=v2ex

Compatible with Ruby 1.8.7+ and Ruby 1.9+

## Usage

List latest topics

    v2ex latest

Show a topic and its replies

    v2ex topic TOPIC_ID

List topics of a user

    v2ex ut livid

List topics of a node

    v2ex nt xbox360

Show user info

    v2ex user livid

Open topic/node/user in your web browser (Mac only)

    v2ex open t TOPIC_ID

    v2ex open u USERNAME

    v2ex open n NODE_NAME

Show all nodes

    v2ex nodes

For more information, pass --help

    v2ex --help

## TODO

REPL mode (Read, Eval, Print, Loop)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Miscellaneous

Made with love through [Readme Driven Development](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)

Thanks [@livid](https://github.com/livid) for building the wonderful site [v2ex.com](http://www.v2ex.com) :)
