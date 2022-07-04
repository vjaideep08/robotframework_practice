***settings***
Library        RequestsLibrary
Library    String


***variables***
${base_url}        http://127.0.0.1:8000
${id}        9

*** test cases ***

GET_INFORMATION(GET METHOD)
    create session    mysession    ${base_url}
    ${response}=    GET On Session    mysession    /api/information/${id}
    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}
    


#VALIDATIONS

    #${status_code}=    convert to string    ${response.status_code}
    #should be equal    ${status_code}    200

    #${response_body}=    convert to string    ${response.content}
    #should contain  ${response_body}    Vobbilisetty
      
    #${Content_type_value}=    get from dictionary    ${response.headers}    Content-Type
    #should be equal    ${Content_type_value}    application/json

    