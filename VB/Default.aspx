<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to use PreventEventAndBubble events</title>
</head>
<body>
    <form id="form1" runat="server">
            <script type="text/javascript">
                var saveShortcut = "CTRL+S";
                var toLowerCaseShortcut = "CTRL+Down";
                var toUpperCaseShortcut = "CTRL+Up";
                var clearShortcut = "CTRL+SHIFT+Del";

                function OnTextEditKeyPress(s, e) {
                    var shorcutCode = ASPxClientUtils.GetShortcutCodeByEvent(e.htmlEvent);
                    if (shorcutCode == ASPxClientUtils.StringToShortcutCode(saveShortcut)) {
                        SaveText(s);
                        ASPxClientUtils.PreventEventAndBubble(e.htmlEvent);
                    }
                }

                function OnMemoKeyPress(s, e) {
                    var shorcutCode = ASPxClientUtils.GetShortcutCodeByEvent(e.htmlEvent);

                    if (shorcutCode == ASPxClientUtils.StringToShortcutCode(toUpperCaseShortcut)) {
                        ChangeTextCase(s, "Upper");
                        ASPxClientUtils.PreventEventAndBubble(e.htmlEvent);
                    }
                    if (shorcutCode == ASPxClientUtils.StringToShortcutCode(toLowerCaseShortcut)) {
                        ChangeTextCase(s, "Lower");
                        ASPxClientUtils.PreventEventAndBubble(e.htmlEvent);
                    }
                    if (shorcutCode == ASPxClientUtils.StringToShortcutCode(clearShortcut)) {
                        s.SetText("");
                        ASPxClientUtils.PreventEventAndBubble(e.htmlEvent);
                    }
                }

                function SaveText(editor) {
                    var savedText = editor.GetText();
                    myMemo.SetText(myMemo.GetText() == "" ? savedText : myMemo.GetText() + "\n" + savedText);
                    editor.SetText("");
                }

                function ChangeTextCase(editor, textCase) {
                    var editorText = editor.GetText();
                    if (textCase == "Lower") editor.SetText(editorText.toLowerCase());
                    if (textCase == "Upper") editor.SetText(editorText.toUpperCase());
                }


            </script>

            <dx:ASPxButtonEdit ID="ASPxButtonEdit1" runat="server" EncodeHtml="false" HelpText="Type something and press <b>Ctrl+S</b> (or click the <b>Save</b> button) to save the text to the memo below" Width="400px" >
                <ClientSideEvents KeyDown="OnTextEditKeyPress" ButtonClick="SaveText" />
                <Buttons>
                    <dx:EditButton Text="Save (Ctrl+S)" Width="50px">
                    </dx:EditButton>
                </Buttons>
            </dx:ASPxButtonEdit>

            <br/>

            <dx:ASPxMemo ID="ASPxMemo1" runat="server" ClientInstanceName="myMemo" ReadOnly="true" Height="300px" Width="400px"
                 HelpText="Focus the memo editor and use the following hot-keys defined for the editor in this demo:<br/><b>Ctrl+Up</b> - to change the text to upper case,<br/><b>Ctrl+Down</b> - to change the text to lower case,<br/><b>Ctrl+Shift+Del</b> - to clear the text.">
                <ClientSideEvents KeyDown="OnMemoKeyPress" />
            </dx:ASPxMemo>

            <br/>

            <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Text="Clear Text">
                <ClientSideEvents Click="function(s, e) {
                    myMemo.SetText('');
                }" />
            </dx:ASPxButton>

    </form>
</body>
</html>