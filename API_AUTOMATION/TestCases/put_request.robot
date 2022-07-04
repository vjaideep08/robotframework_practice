***settings***

Library    RequestsLibrary
Library    Collections



***variables***
${base_url}    http://127.0.0.1:8000
${id}    16



***Test cases***
Modify_the_existing_data(PUT REQUEST)
    
    create session    mysession2    ${base_url}
    ${body}=    create dictionary    firstname=Amrutha1   lastname=D   register_number=NA    mobile=123456789   address=Vizianagaram   college=NA   
    ${header}=    create dictionary    Content-Type=application/json
    
    ${response}=    put request    mysession2    /api/information/${id}/    data=${body}    headers=${header}


    log to console    ${response.status_code} 
    log to console    ${response.content}

#validations------------------>

    #${res_body}$=    convert to string    ${response.content}
    #should contain    ${res_body}    Amrutha

    #${status_code}=    convert to string     ${response.status_code}
    #should be equal    ${status_code}    200

