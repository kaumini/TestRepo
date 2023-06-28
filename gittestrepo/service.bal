import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "gittestrepo",
	id: "gittestrepo-09d2b14e-e550-4919-ae2d-c97f4b6c90f3"
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
