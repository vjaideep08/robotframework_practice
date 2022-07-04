***settings***
Library    RequestsLibrary
Library    Collections
Library    String


***variables***
${base_url}    http://127.0.0.1:8000
${id}    20


*** test cases ***

GET_INFORMATION(GET METHOD)
    [tags]    tag1
    create session    mysession    ${base_url}
    ${response}=    GET On Session    mysession    /api/information/${id}
    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}
    


post_information_into_api(POST METHOD)
    [tags]    tag11
    create session    mysession1    ${base_url}
    ${body}=    create dictionary     firstname=Ammu   lastname=D   register_number=NA    mobile=123456789   address=Vizianagaram   college=NA   
    ${header}=    create dictionary    Content-Type=application/json
    
    ${response}=    post request    mysession1    /api/information/    data=${body}    headers=${header}


    log to console    ${response.status_code} 
    log to console    ${response.content}


Modify_the_existing_data(PUT REQUEST)
    [tags]    tag11
    create session    mysession2    ${base_url}
    ${body}=    create dictionary    firstname=Amrutha1   lastname=D   register_number=NA    mobile=123456789   address=Vizianagaram   college=NA   
    ${header}=    create dictionary    Content-Type=application/json
    
    ${response}=    put request    mysession2    /api/information/${id}/    data=${body}    headers=${header}


    log to console    ${response.status_code} 
    log to console    ${response.content}


Modifying_the_single_data(Patch request)
    [tags]    tag11
    create session    mysession4    ${base_url}
    ${body}=    create dictionary    firstname=jaydeep    
    ${header}=    create dictionary    Content-Type=application/json
    ${response}=    PATCH On Session    mysession4    /api/information/${id}/    data=${body}    headers=${header}
    log to console    ${response.status_code} 
    log to console    ${response.content}  #checking only the particular field.....


Delete_a_Record(Delete request)
    [tags]    tag0
    create session    mysession3   ${base_url} 
    ${deleted_response}=    delete request    mysession3    /api/information/${id}/

