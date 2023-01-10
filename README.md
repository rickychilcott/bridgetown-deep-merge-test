# Bridgetown Deep Merge Test

It appears that deep merging of values via Bridgetown config isn't working as expected.


## Setup

```shell
bundle install
yarn install
bin/bridgetown start
```


## What to look at

Go to `http://localhost:4000`

See how `resource` and `dynamic` both appear to not merge values that are set in config.