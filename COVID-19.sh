#!/usr/bin/env sh

case "$(printf " Poland \n New Zealand \n China \n Italy \n USA \n World " | dmenu -h 33 -i -p '  Place  ')" in
	" Poland ")
		place=" Poland "      location="https://corona.lmao.ninja/countries/Poland";;

	" New Zealand ")
		place=" New Zealand " location="https://corona.lmao.ninja/countries/New%20Zealand";;

	" China ")
		place=" China "       location="https://corona.lmao.ninja/countries/China";;

	" Italy ")
		place=" Italy "       location="https://corona.lmao.ninja/countries/Italy";;

	" USA ")
		place=" USA "         location="https://corona.lmao.ninja/countries/USA";;

	" World ")
		stats="$(curl -s "https://corona.lmao.ninja/all")"
		active="$(echo "$stats" | jq '.cases')"
		deaths="$(echo "$stats" | jq '.deaths')"
		recovered="$(echo "$stats" | jq '.recovered')"
		lastupdate="$(echo "$stats" | jq '.updated')"
		time="$(echo "$lastupdate" | cut -b -10)"
		time2="$(date -d @"$time")"

		case "$(printf "  close\n  return\n \n  $active %s\n  $deaths %s\n  $recovered %s\n  $time2 " | dmenu -h 33 -i -p ' World ')" in
			"  return") bash /home/adrian/.scripts/covid-19.sh & exit 0;;
			*) exit 0
		esac
		exit 0;;

	*)  exit 0
esac

     stats="$(curl -s "$location")"
    active="$(echo "$stats" | jq '.active')"
todaycases="$(echo "$stats" | jq '.todayCases')"
    deaths="$(echo "$stats" | jq '.deaths')"
 recovered="$(echo "$stats" | jq '.recovered')"

case "$(printf "  close\n  More info\n  return\n \n  $active \n  $todaycases \n  $deaths \n %s $recovered " | dmenu -h 33 -i -p "$place")" in
	"  More info")
		stats="$(curl -s $location)"
		cases="$(echo "$stats" | jq '.cases')"
		active="$(echo "$stats" | jq '.active')"
		todaycases="$(echo "$stats" | jq '.todayCases')"
		recovered="$(echo "$stats" | jq '.recovered')"
		critical="$(echo "$stats" | jq '.critical')"
		deaths="$(echo "$stats" | jq '.deaths')"
		todaydeaths="$(echo "$stats" | jq '.todayDeaths')"
		casesperonemillion="$(echo "$stats" | jq '.casesPerOneMillion')"
		deathsperonemillion="$(echo "$stats" | jq '.deathsPerOneMillion')"

		stats2="$(curl -s "https://corona.lmao.ninja/all")"
		lastupdate="$(echo "$stats2" | jq '.updated')"
		time="$(echo "$lastupdate" | cut -b -10)"
		time2="$(date -d @"$time")"

		cas=" Cases: $cases"
		act=" Active: $active"
		tca=" Today cases: $todaycases"
		rec=" Recovered: $recovered"
		cri=" Critical: $critical"
		dea=" Deaths: $deaths"
		tde=" Today deaths: $todaydeaths"
		cpm=" C/M: $casesperonemillion"
		dpm=" D/M: $deathsperonemillion"
		tim=" $time2"

		case "$(printf "  close\n  return\n \n $cas \n $act \n $tca \n $rec \n $cri \n $dea \n $tde \n $cpm \n $dpm \n \n %s$tim " | dmenu -h 33 -l 14 -i -p "$place")" in
			"  return") bash /home/adrian/.scripts/covid-19.sh & exit 0;;
			*)           exit 0
		esac;;

	"  return") bash /home/adrian/.scripts/covid-19.sh & exit 0;;
	*)  exit 0
esac

#    _  _   ____  _                 _   _   _   _
#  _| || |_/ ___|| |_ __ _ _   _   / \ | |_| | | | ___  _ __ ___   ___
# |_  ..  _\___ \| __/ _` | | | | / _ \| __| |_| |/ _ \| '_ ` _ \ / _ \
# |_      _|___) | || (_| | |_| |/ ___ \ |_|  _  | (_) | | | | | |  __/
#   |_||_| |____/ \__\__,_|\__, /_/   \_\__|_| |_|\___/|_| |_| |_|\___|
#                          |___/
