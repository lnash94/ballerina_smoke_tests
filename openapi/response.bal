import ballerina/http;

service /default01 on new http:Listener(9090) {
    resource function default pet() {
    }
}

service /request on new http:Listener(9090) {
    resource function get pet(http:Request req) returns json|error? {
    }
}

service /response on new http:Listener(9090) {
    resource function get pet() returns http:Response {
        http:Response res = new;
        return res;
    }
}
