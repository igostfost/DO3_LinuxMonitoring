#!/bin/bash

source info.sh

case $1 in
1) bg=$BGWHITE ;;
2) bg=$BGRED ;;
3) bg=$BGGREEN ;;
4) bg=$BGBLUE ;;
5) bg=$BGPURPLE ;;
6) bg=$BGBLACK ;;
esac

case $2 in
1) txtc=$WHITE ;;
2) txtc=$RED ;;
3) txtc=$GREEN ;;
4) txtc=$BLUE ;;
5) txtc=$PURPLE ;;
6) txtc=$BLACK ;;
esac

case $3 in
1) bg2=$BGWHITE ;;
2) bg2=$BGRED ;;
3) bg2=$BGGREEN    ;;
4) bg2=$BGBLUE    ;;
5) bg2=$BGPURPLE ;;
6) bg2=$BGBLACK ;;
esac

case $4 in
1) txtc2=$WHITE ;;
2) txtc2=$RED ;;
3) txtc2=$GREEN ;;
4) txtc2=$BLUE ;;
5) txtc2=$PURPLE ;;
6) txtc2=$BLACK ;;
esac

