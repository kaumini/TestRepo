import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "testgitcomp",
	id: "testgitcomp-1eb8f303-05b0-4079-bbcd-29a7d7e0adbf"
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
