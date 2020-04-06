# COVID-19

What is COVID-19 commonly known as coronavirus? I think we all know. But we don't know one thing - how fast it spreads. This script, based on data downloaded from [NowelCOVID's website](https://corona.lmao.ninja), gives quick access to important information.

## Installation

Open terminal and type:

```bash
$ cd ~/
$ git clone https://gitlab.com/xXBlackMaskXx/COVID-19
$ cd COVID-19
$ cp COVID-19.sh [wherever you want]
```

### Dependencies

| Required?  | Package name       | Description
|------------|--------------------|------------
| Yes        | git                | Distributed version control system
| Yes (No?)  | ttf-font-awesome   | Iconic font designed for Bootstrap
| Yes        | JQ                 | Command-line JSON processor
| Yes (or...)| dmenu              | Generic menu for X
| (...or) Yes| rofi (+ rofi-dmenu)| A window switcher, application launcher and dmenu replacement

#### [Recommended dmenu](https://gitlab.com/xXBlackMaskXx/dmenu)

```shell
$ git clone https://gitlab.com/xXBlackMaskXx/dmenu
$ cd dmenu
$ sudo make clean install
```

##### Where did this idea come from?

My brilliant friend [Dawid Potocki](https://github.com/dawidpotocki) interested me in this by creating his script for polybar - and I decided to develop it.

##### A small sample

(Demonstration video)[https://gitlab.com/xXBlackMaskXx/covid-19/-/raw/master/demonstration_video.mkv]