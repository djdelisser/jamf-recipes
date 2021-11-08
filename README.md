Autopkg (CLI) using JAMFUploader 
JAMF Uploader by (com.github.autopkg.grahampugh-recipes)

This is a collection of recpies (download & pkg, along with pkg-upload) for commonly used applications at Litmus. 

This process is automated via crontab on the Litmus Mac Mini which uses the run_autopkg.sh script to update the repo and then run the recipe_list. 

The cron job will run Monday through Friday at 8 AM. 

If any packages are updated on JAMF Pro, a Slack Notification will be sent to #it-notifications using the JAMFUploaderSlacker processor. 

Once the packages are there, please test on an Intel / Apple Silicon device. Once successful, update the Production policies for the corresponding applications. 

React on the Slack message about the upload with a :white_check_mark:  emoji so the IT Team knows the package is live.

If a package is defective, note that on the Slack message via Thread so the IT Team knows not to use the package.
