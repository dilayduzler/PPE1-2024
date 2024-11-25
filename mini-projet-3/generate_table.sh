#!/usr/bin/env bash

#control des urls
if [[ $# -eq 0 ]]
then
	echo "donnez un file avec les urls"
	echo "utilization: $0 urls.txt"
	exit 1
fi

#html
echo "creation du dossier html..."
echo "<html>" > bonjour.html
echo "<head>" >> bonjour.html
echo "    <meta charset=\"UTF-8\">" >> bonjour.html
echo "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">" >> bonjour.html
echo "    <title>Tablo</title>" >> bonjour.html
echo "    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css\">" >> bonjour.html
echo "</head>" >> bonjour.html
echo "<body>" >> bonjour.html
echo "    <div class=\"table-container\">" >> bonjour.html
echo "      <table class=\"table is-bordered is-hoverable is-striped is-fullwidth\">" >> bonjour.html
echo "        <thead>" >> bonjour.html
echo "          <tr>" >> bonjour.html
echo "            <th>#</th>" >> bonjour.html
echo "            <th>URL</th>" >> bonjour.html
echo "            <th>HTTP code</th>" >> bonjour.html
echo "            <th>Encodage</th>" >> bonjour.html
echo "            <th>Nombre de Mots</th>" >> bonjour.html
echo "          </tr>" >> bonjour.html
echo "        </thead>" >> bonjour.html
echo "        <tbody>" >> bonjour.html

#ajoute des urls
count=0
while read -r line
do
    ((count++))
    if [[ ! "$line" =~ ^https?:// ]]; then
        line="https://$line"
    fi

    http_headers=$(curl -s -I -L "$line")
    http_code=$(echo "$http_headers" | head -n 1 | cut -d' ' -f2)

    if [[ "$http_code" == "200" ]]; then
        encoding=$(echo "$http_headers" | grep -i "content-type" | grep -o "charset=.*" | cut -d'=' -f2)
        encoding=${encoding:-"Inconnu"}
        word_count=$(lynx -dump -nolist "$line" | wc -w)
    else
        encoding="N/A"
        word_count=0
    fi

#ajoute a table
    echo "          <tr>" >> bonjour.html
    echo "            <td>$count</td>" >> bonjour.html
    echo "            <td><a href=\"$line\" target=\"_blank\">$line</a></td>" >> bonjour.html
    echo "            <td>$http_code</td>" >> bonjour.html
    echo "            <td>$encoding</td>" >> bonjour.html
    echo "            <td>$word_count</td>" >> bonjour.html
    echo "          </tr>" >> bonjour.html
done < "$1"

#finis de html
echo "        </tbody>" >> bonjour.html
echo "      </table>" >> bonjour.html
echo "    </div>" >> bonjour.html
echo "</body>" >> bonjour.html
echo "</html>" >> bonjour.html

echo "succes: bonjour.html"




