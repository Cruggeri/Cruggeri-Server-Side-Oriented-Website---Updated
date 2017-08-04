<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class = "fluid-container">
        <div>
            <h1>
                Welcome to Archaeotech!

            </h1>
            <h3>
                We're a company dedicated to bringing 
                old things to new owners~</h3>
                <div class="container-fluid">
                    <asp:Image ID="Image1" runat="server" width="300" Height="300"/>
                    <ajaxToolkit:SlideShowExtender ID="SlideShowExtender1" runat="server" TargetControlID="Image1" SlideShowServiceMethod="SliderWebsService" AutoPlay="true"
                        ImageTitleLabelID="imageTitle"
                        ImageDescriptionLabelID="imageDescription"
                        NextButtonID="nextButton"
                        PlayButtonText="Play"
                        StopButtonText="Stop"
                        PreviousButtonID="prevButton"
                        PlayButtonID="playButton"
                        Loop="true"
                        SlideShowAnimationType="SlideRight" />
                    
            <asp:Image ID="Image2" runat="server" width="300" Height="300"/>
                    <ajaxToolkit:SlideShowExtender ID="SlideShowExtender2" runat="server" TargetControlID="Image2" SlideShowServiceMethod="SliderWebsService" AutoPlay="true"
                        ImageTitleLabelID="imageTitle"
                        ImageDescriptionLabelID="imageDescription"
                        NextButtonID="nextButton"
                        PlayButtonText="Play"
                        StopButtonText="Stop"
                        PreviousButtonID="prevButton"
                        PlayButtonID="playButton"
                        Loop="true"
                        SlideShowAnimationType="SlideRight" />
                    
                </div>
                                   </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        </div>
    </div>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    
    </asp:Content>




