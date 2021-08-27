<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128567151/14.1.13%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T830632)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# How to use the PreventEventAndBubble method
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/128567151/)**
<!-- run online end -->


This sample demonstrates why and how you can use the ASPxClientUtils.PreventEventAndBubble client method when implementing your application's client logic.<br />Note that the sample code uses a couple of client utility methods - GetShortcutCodeByEvent and StringToShortcutCode - making it easy to work with shortcut codes on the client.<br />The use of the ASPxWebControl.RegisterBaseScript server static method is also demonstrated.


<h3>Description</h3>

In this sampe, the text and memo editors accept (when focused) custom shortcuts to&nbsp;perform particular actions on the client.<br /><br />The following custom shortcuts are defined:<br /><br />For the text editor:<br /><strong>Ctrl+S</strong> - Moves the editor text to the memo editor and clears the text editor. Note that this shortcut overrides the default browser&nbsp;Ctrl+S combination used to open a&nbsp;browser's modal dialog to save the current web page.<br /><br />For the memo&nbsp;editor:<br /><strong>Ctrl+Up</strong> - Changes the editor text to upper&nbsp;case.<br /><strong>Ctrl+Down</strong> -&nbsp;Changes the editor text to lower&nbsp;case.<br /><strong>Ctrl+Shift+Delete</strong> - Clears the memo editor.&nbsp;Note that this shortcut overrides the default browser&nbsp;Ctrl+Shift+Delete combination used to open a browser-specific's dialog to clear browsing history data.

<br/>


