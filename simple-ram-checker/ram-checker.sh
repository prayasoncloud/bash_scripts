    #!/bin/bash

    FREE_SPACE = $(free -mt | grep "Total" | awk '{print $4}')
    TH=500

    if [[ $FREE_SPACE -lt TH ]]
    then
        echo "Warning, Your RAM is Running Low"
    else
        echo "RAM space is $Free_space M"
    fi