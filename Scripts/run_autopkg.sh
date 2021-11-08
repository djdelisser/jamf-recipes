#!/bin/bash

# This script will be setup to run on a scheduled basis via cron job on the Litmus Cambridge Mac Mini
# The schedule is below: 
# Daily @ 8am EST, Monday - Friday, crontab below
# 0 8 * * 1-5 /Volumes/JAMF/Autopkg/RecipeRepos/com.github.djdelisser.jamf-recipes/Scripts/run_autopkg.sh
# Logs output to Log folder for Autopkg
# NOTE: IF NEW RECIPES ARE ADDED, RECIPE_LIST WILL NEED TO BE UPDATED

# Ensure ALL Repos are up to date
/usr/local/bin/autopkg repo-update all

#Run the Recipe List
autopkg run --recipe-list /Volumes/JAMF/AutoPkg/RecipeRepos/com.github.djdelisser.jamf-recipes/recipe_list.plist

exit 0 #Success
exit 1 #Failure