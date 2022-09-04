({
    doInit: function(component, event, helper) {
        // Create the action
        // <!-- Update this every time there is a new demo. Next Demo Date: 2nd Sept 2022 -->
		let account = component.get("v.account");
        let action = component.get("c.setCopadoDefaultContact");
        action.setParams({"account":account});
        // Add callback behavior for when response is received
        action.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") {
                
                component.set("v.account", response.getReturnValue());
            }
            else {
                console.log("Failed with state: " + state);
            }
        });
        // Send action off to be executed
        $A.enqueueAction(action);
    },   
})