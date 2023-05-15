if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vijay14958/BestMovieSearchBot.git /BestMovieSearchBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /BestMovieSearchBot
fi
cd /BestMovieSearchBot
pip3 install -U -r requirements.txt
echo "Starting DQ-_TOM...."
python3 bot.py
