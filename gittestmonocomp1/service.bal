import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "gittestmonocomp1",
	id: "gittestmonocomp1-0a9be4fa-1bc3-4bf7-ad79-23237476194b"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
