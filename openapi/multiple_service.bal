import ballerina/http;

listener http:Listener ep0 = new (80, config = {host: "http://petstore.openapi.io"});

type Pet record {
    int petId;
    string name;
    string petType?;
};

service /pet on ep0 {
    # Getting pet by givning petId
    #
    # + id - Pet Id 
    # + return - Details about pet
    resource function get pet/[int id]() returns string {
        // API process
        return "hello";
    }

    # Getting all the pets in the list
    #
    # + offset - Number of retriving items
    # + return - list of array  
    resource function get pets(int offset) returns Pet[] {
        // Mock implementation 
        Pet p1 = {petId: 1, name: "Tommy", petType: "dog"};
        Pet p2 = {petId: 2, name: "Rova", petType: "dog"};
        Pet[] petArray = [p1, p2];
        return petArray;
    }
    string y = "hello";
    resource function get hello(string pet = y) returns http:Ok {
        // API implementation ...
        http:Ok ok = {body: ()};
        return ok;
    }
}

service /user on new http:Listener(9091) {

    // with cache config
    resource function get cachingBackEnd() returns @http:Cache {
        maxAge: 5,
        isPrivate: true,
        privateFields: ["field1", "filed2"],
        noCache: true,
        noCacheFields: ["field03", "fields04"]
    } string|http:Conflict {
        // API implementation ...
        return "Hello, World!!";
    }
}
