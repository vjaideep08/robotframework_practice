***settings***

Library    RequestsLibrary
Library    Collections



***variables***
${base_url}    http://127.0.0.1:8000


***Test cases***
post_information_into_api(POST METHOD)
    create session    mysession1    ${base_url}
    ${body}=    create dictionary     firstname=Ammu   lastname=D   register_number=NA    mobile=123456789   address=Vizianagaram   college=NA   
    ${header}=    create dictionary    Content-Type=application/json
    
    ${response}=    post request    mysession1    /api/information/    data=${body}    headers=${header}


    log to console    ${response.status_code} 
    log to console    ${response.content}

#validations------------------>

    #${res_body}$=    convert to string    ${response.content}
    #should contain    ${res_body}    Ammu

    #${status_code}=    convert to string     ${response.status_code}
    #should be equal    ${status_code}    201

