import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "testcomp1",
	id: "testcomp1-fe2e6b88-7c8a-40fc-ba2a-ff5bcd609fb8"
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
