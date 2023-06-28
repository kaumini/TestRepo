import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "gitcomp2",
	id: "gitcomp2-7e8d3d3c-9c0e-468d-93b4-b0c045505e3e"
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
