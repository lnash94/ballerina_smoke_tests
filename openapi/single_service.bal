import ballerina/log;
import ballerina/http;

service / on new http:Listener(8090) {
    resource function get hello() returns http:NotAcceptable|error? {
        log:printInfo("my log");
    }

    resource function get hello02(string id) {
        log:printInfo("my log");
    }

    resource function post hello02(@http:Payload string body) returns error? {
        return;
    }
}
