import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "test_autodeletion",
	id: "test_autodeletion-bd86e208-3e4a-45b7-9812-d61823f17a55"
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
