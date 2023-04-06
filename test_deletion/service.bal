import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "test_deletion",
	id: "test_deletion-7fd2b4fd-42ff-4083-9119-b4f62d96c3e3"
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
