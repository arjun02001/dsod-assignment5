﻿<%@ Application Language="C#" %>

<script runat="server" Language="C#">

    void Application_Start(object sender, EventArgs e) 
    {
        Application["counter"] = 0;
    }
    
    void Application_End(object sender, EventArgs e) 
    {

    }
        
    void Application_Error(object sender, EventArgs e) 
    {
        UtilityService service = new UtilityService();
        service.Log("sender: " + sender.ToString());
        service.Log("event: " + e.ToString());
    }

    void Session_Start(object sender, EventArgs e) 
    {
        int count = Convert.ToInt32(Application["counter"]);
        Application["counter"] = ++count;
        UtilityService service = new UtilityService();
        service.IncrementVisitorCount();
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
