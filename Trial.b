PROGRAM Trial
    name = 'John Doe'
    company = 'My Company'
    address = '12 34th Street, Town'

    employee = name:@FM:address:@FM:35:@FM:company:@FM:9876.54

    *Dealing with Array Format

    loanRequest = '001*Anne*EUR*348990*240*0.031'
    *Replace the * character with Field Marker(@FM)
    CONVERT '*' TO @FM IN loanRequest
    CRT loanRequest

    id = loanRequest<1>
    name = loanRequest<2>
    amount = loanRequest<4>

    CRT name : ' has id ' : id : ' and has requested ' : amount

END