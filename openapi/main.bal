// import ballerina/http;
// import openapi.representations as rep;

// # A fake mountain resort
// @http:ServiceConfig { mediaTypeSubtypePrefix: "vnd.snowpeak.reservation", cors: { allowOrigins: ["*"] }}
// service /payloadV on new http:Listener(9090) {

//     # Snowpeak payment resource
//     #
//     # + id - Unique identification of reservation
//     # + payment - Payment representation
//     # + return - `PaymentCreated`, `PaymentConflict` or `SnowpeakError` representation
//     resource function put payments/[string id](@http:Payload rep:Payment payment)
//                 returns rep:PaymentCreated|rep:PaymentConflict|string {
//         return "hello";
//     }
// }

import ballerina/http;
import openapi.representations as rep;

# A fake mountain resort
@http:ServiceConfig { mediaTypeSubtypePrefix: "vnd.snowpeak.reservation", cors: { allowOrigins: ["*"] }}
service /payloadV on new http:Listener(9090) {

    # Snowpeak payment resource
    #
    # + id - Unique identification of reservation
    # + payment - Payment representation
    # + return - `PaymentCreated`, `PaymentConflict` or `SnowpeakError` representation
    resource function put payments/[string id](@http:Payload rep:Payment payment)
                returns rep:PaymentCreated|rep:PaymentConflict|string {
        return "hello";
    }
}
