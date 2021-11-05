#!/bin/bash

# This script will be setup to run on a scheduled basis via cron job
# The schedule is below: 
# Daily @ 8am EST
# If new recipes are added, the recipe_list will need to be updated

###Ensure ALL Repos are up to date
/usr/local/bin/autopkg repo-update all

#Run the Recipe List
#autopkg run --recipe-list /Volumes/JAMF/AutoPkg/RecipeRepos/com.github.djdelisser.jamf-recipes/recipe_list.plist

#Test by running one singluar recipe run (-vvv for Very Verbose)
/usr/local/bin/autopkg run -vvv KiwiforGmail-pkg-upload.jamf.recipe.yaml

exit 0 #Success
exit 1 #Failure