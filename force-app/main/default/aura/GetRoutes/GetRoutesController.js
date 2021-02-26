({

doinit : function(component, event, helper) {       
        component.set("v.frameSrc",'https://wk-aakanksha-dev-ed--c.ap2.visual.force.com/apex/googleMap'); 
    },
    GetRoute: function(component, event, helper){
        var startpoint = component.find("start");
        var sp = startpoint.get("v.value");
        var endpoint = component.find("end");
        var ep = endpoint.get("v.value");
        
        var d = new Date();
        var n = d.getTime();
        component.set("v.frameSrc",'https://wk-aakanksha-dev-ed--c.ap2.visual.force.com/apex/googleMap?t='+n+'&startpoint='+sp+'&endpoint='+ep);
    }
})