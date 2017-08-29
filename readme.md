# Construct

Construct is a project that was originally created on the [Ops Manager](https://github.com/pivotal-cf-experimental/construct) team,
but was then forked and modified heavily for the PCF Metrics team. Everything in this repo is a
designed to configure highly-opinionated workspace for that specific team. Feel free to fork and
modify for your own team!

## Getting Started

This will work the best if you have a freshly installed machine (i.e. you don't even have Homebrew or git installed yet),
so here are some quick steps to get this bootstrapped with minimal fuss.

1. Activate your personal GitHub SSH key using `ssh-add`. If you don't have a key set up yet,
talk to someone on your team about getting set up with a USB flash drive for your keys.
It's really handy. In a pinch, you can just do `ssh-keygen` and add the generated `~/.ssh/id_rsa.pub`
to your GitHub account.

*If you're new to the team, you'll also want to make sure you get added to the team-specific repos because most of them are private. You can alternatively have someone else use their SSH key for this step.*

2. Download the current zip from master:

```
curl -0L https://github.com/toddboom/construct-pcf-metrics/archive/master.zip > /tmp/construct.zip
unzip /tmp/construct.zip -d /tmp
cd /tmp/construct-pcf-metrics-master
./construct
```

Install construct

  git clone git@github.com:pivotal-cloudops/construct.git

Then run it

    ./construct

## construct Your Machine


Construct supports blacklisting units for special installation needs: units in `_blacklist` will be skipped

## Usage & Development

This is how you modify construct:

First, create a unit: `./create-unit unit-name`. A unit is a folder. A unit
sets up **one** aspect of the machine. That's why it's called a unit.

Units have four kind of files (that construct cares about):

* `readme.md` - Describes why this unit is included in construct.
* `install.sh` - A shell script which installs the unit.
* `verify-install.sh` - A shell script which exits with zero when the unit is installed.
* `deps` - A file which lists the dependencies this unit has on other units.

Run your unit with `install-unit unit-name`. Run all units with `construct`.

For convenience, you can specify which units should run first (instead of
just letting construct work it out from the dependency graph) by putting their
names in the `priority-units` file.

## The Way of construct

construct is inspired by systems like [boxen], [sprout-wrap], [sprout], [chef],
[babushka] and [puppet].

construct is not better, just simpler. construct has no external dependencies. construct
has no server. There are no conferences about construct. There are no consultancies
that offer construct services. construct is designed to be simple enough to setup workstations and jumpboxes. It is not the right tool for many, many other use cases.

construct is okay with units that require manual operator intervention as construct is
as much about documentation as it is about automation. In fact, if construct was a
person it would suggest you first write your units as the kind that instruct the
operator _before_ you investigate how to make them automated and non-interactive.

[boxen]: http://boxen.github.com
[sprout-wrap]: https://github.com/pivotal-sprout/sprout-wrap
[sprout]: https://github.com/pivotal-sprout/sprout
[babushka]: http://babushka.me
[chef]: http://www.opscode.com/chef
[puppet]: http://puppetlabs.com
