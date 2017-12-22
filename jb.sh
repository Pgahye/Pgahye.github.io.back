#!/bin/bash


## Medium to Jekyll & Hybe 명령어 wrap
# 예) jb import -from medium -uri https://medium.com/@hibrainapps/helloworld  -doc _posts/2017-12-25-helloworkd.md



if [[ "$1" = import && "$3" = medium ]]
then
startIndex=$(awk '/program.headers/{print NR; exit }' /usr/lib/node_modules/mediumexporter/index.js)
endIndex=$(awk '/story.sections/{print NR-2; exit }' /usr/lib/node_modules/mediumexporter/index.js)

  if [[ "$startIndex" > 0 ]]
  then

  echo "$startIndex"
  echo "$endIndex"

  #sed -i "$startIndex","$endIndex"d /usr/lib/node_modules/mediumexporter/index.js
  # input=$(cat ./mediumexporter/change.js)
  # echo "$input"
  #sed -i.bak "$startIndex"r ./mediumexporter/change.js /usr/lib/node_modules/mediumexporter/index.js
  sed -i "$startIndex"i"$input" /usr/lib/node_modules/mediumexporter/index.js

  fi

fi




if [[ "$1" = export && "$3" = medium && "$4" = -doc ]]
then

#echo "$5"
MEDIUM_TOKEN=$(ruby -r "$PWD"/script/config.rb -e "puts @medium_token")
#echo "$MEDIUM_TOKEN"
markdown-to-medium "$5" --token="$MEDIUM_TOKEN"

fi


## Jekyll & Hybe to Medium 명려어 wrap
# 예). ./jb export -to medium -doc _posts/2017-12-25-helloworld.md 와 같이 동작할 수 있도록 sh.sh 파일 수정, $MEDIUM_TOKEN 값은 _config.yml 에서 찾아서 할 수 있도록 속성을 추가
