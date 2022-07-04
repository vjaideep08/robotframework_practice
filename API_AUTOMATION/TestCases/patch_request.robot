***settings***
Library    RequestsLibrary
Library    Collections


***variables***
${base_url}    http://127.0.0.1:8000
${id}    20

***Test cases***
Modifying_the_single_data(Patch request)
    create session    mysession4    ${base_url}
    keyword_for_patch

    
    log to console    ${response.status_code} 
    log to console    ${response.content}  #checking only the particular field.....


#validations------------------>

   # ${res_body}$=    convert to string    ${response.content}
    #wshould contain    ${res_body}    Amrutha1

  #  ${status_code}=    convert to string     ${response.status_code}
   # should be equal    ${status_code}    200

***keywords***
keyword_for_patch
    #create session    mysession4    ${base_url}
    ${body}=    create dictionary    firstname=jaydeep    
    ${header}=    create dictionary    Content-Type=application/json
    ${response}=   PATCH On Session    mysession4    /api/information/${id}/    data=${body}    headers=${header}

