<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1" Namespace="DevExpress.Web.ASPxFormLayout" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to customize required, optional and invalid editor styles via CSS</title>
</head>
<body>
    <form id="form1" runat="server">
        <style type="text/css">
            /* Normal (optional) editor state */
            .dxeTextBoxSys,
            .dxeTextBoxSys .dxeEditAreaSys {
                background-color: #FFFFE1;
            }

            /* Required editor state */
            /* for static display (ValidationSettings.Display = Static) */
            .dxeValidStEditorTable .dxeTextBoxSys,
            .dxeValidStEditorTable .dxeTextBoxSys .dxeEditAreaSys,
            /* for dynamic display (ValidationSettings.Display = Dynamic) */
            .dxeValidDynEditorTable .dxeTextBoxSys,
            .dxeValidDynEditorTable .dxeTextBoxSys .dxeEditAreaSys {
                background-color: #FFE1E1;
            }

            /* Invalid editor state */
            .dxeTextBoxSys.dxeInvalid,
            .dxeTextBoxSys.dxeInvalid .dxeEditAreaSys {
                background-color: #FC5D5D;
            }

            .dxeTextBoxSys.dxeInvalid {
                border-color: red;
            }
            .dxeTextBoxSys.dxeInvalid.dxeFocused {
                border-color: inherit;
            }
        </style>
        <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="500">
            <Items>       
                <dx:LayoutGroup Caption="Personal information">
                    <Items>
                        <dx:LayoutItem Caption="First Name" HelpText="IsRequired = True; Display = Static">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxTextBox ID="firstNameTextBox" runat="server">
                                        <ValidationSettings>
                                            <RequiredField IsRequired="True" ErrorText="Required value" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="Middle Name" HelpText="IsRequired = False">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxTextBox ID="middleNameTextBox" runat="server">                                
                                    </dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="Last Name" HelpText="IsRequired = True; Display = Dynamic">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxTextBox ID="lastNameTextBox" runat="server">
                                        <ValidationSettings Display="Dynamic">
                                            <RequiredField IsRequired="True" ErrorText="Required value" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxButton ID="btnSubmit" runat="server" Text="Submit" />
                                    <dx:ASPxButton ID="btnReset" runat="server" AutoPostBack="False" Text="Reset" CausesValidation="False">
                                        <ClientSideEvents Click="function(s, e) { ASPxClientEdit.ClearEditorsInContainerById('ASPxFormLayout1') }" />
                                    </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>                          
                    </Items>
                </dx:LayoutGroup>      
            </Items>
        </dx:ASPxFormLayout>
    </form>
</body>
</html>
