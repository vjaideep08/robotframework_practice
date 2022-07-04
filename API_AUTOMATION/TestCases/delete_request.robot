***settings***
Library    RequestsLibrary
Library    Collections


***variables***
${base_url}    http://127.0.0.1:8000
${id}        9

***test cases***
Delete_a_Record(Delete request)
    create session    mysession3   ${base_url} 
    ${deleted_response}=    delete request    mysession3    /api/information/${id}/

    #log to console    ${response.status_code} 
    #log to console    ${response.content}



#validations-------------------->

    #${status_code}=    convert to string    ${response.status_code}
    #should be equal    ${status_code}    200

    #${response_body}=    convert to string   ${response.content} 
    #should contain    ${response_body}    