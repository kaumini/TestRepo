import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "testcomppp2",
	id: "testcomppp2-a535bbbc-5cb0-4f26-b4e9-d3312c11a027"
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
