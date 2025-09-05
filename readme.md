# holoearth-extractor

this script is intended to extract Holoearth game data for the holoearth wiki's educational purposes. 

## generate data & reports
0. make sure you have the latest wiki_extract files to preserve history (update your repository)
1. run `extract.bat`
2. enter new version number in major.minor.patch exactly as in game

## update wiki
0. set up your `.env` with a wiki account using `WIKI_USERNAME` `WIKI_PASSWORD` (if you're an admin, use the bot account)
1. run `upload.bat`

## develop new data collection 
0. extract and commit the latest data
1. develop the data collection
2. run implement.bat, which sets `extractor.py` to flag any new data changes as `first_implementation` so wiki modules dont record it as the first history of those data. unless it is the first history of the data. in which case just run `extract.bat`

## notice
Holoearth and related IP are property of COVER Corp.