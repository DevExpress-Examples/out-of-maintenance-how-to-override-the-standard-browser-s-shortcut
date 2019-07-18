# How to use the PreventEventAndBubble method


This sample demonstrates why and how you can use the ASPxClientUtils.PreventEventAndBubble client method when implementing your application's client logic.<br />Note that the sample code uses a couple of client utility methods - GetShortcutCodeByEvent and StringToShortcutCode - making it easy to work with shortcut codes on the client.<br />The use of the ASPxWebControl.RegisterBaseScript server static method is also demonstrated.


<h3>Description</h3>

In this sampe, the text and memo editors accept (when focused) custom shortcuts to&nbsp;perform particular actions on the client.<br /><br />The following custom shortcuts are defined:<br /><br />For the text editor:<br /><strong>Ctrl+S</strong> - Moves the editor text to the memo editor and clears the text editor. Note that this shortcut overrides the default browser&nbsp;Ctrl+S combination used to open a&nbsp;browser's modal dialog to save the current web page.<br /><br />For the memo&nbsp;editor:<br /><strong>Ctrl+Up</strong> - Changes the editor text to upper&nbsp;case.<br /><strong>Ctrl+Down</strong> -&nbsp;Changes the editor text to lower&nbsp;case.<br /><strong>Ctrl+Shift+Delete</strong> - Clears the memo editor.&nbsp;Note that this shortcut overrides the default browser&nbsp;Ctrl+Shift+Delete combination used to open a browser-specific's dialog to clear browsing history data.

<br/>


