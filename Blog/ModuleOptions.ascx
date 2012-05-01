<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ModuleOptions.ascx.vb" Inherits="DotNetNuke.Modules.Blog.ModuleOptions" %>
<%@ Import Namespace="DotNetNuke.Services.Localization" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<div class="dnnForm dnnBlogOptions dnnClear" id="dnnBlogOptions">
	<ul class="dnnAdminTabNav dnnClear">
		<li><a href="#boBasicSettings"><%=LocalizeString("BasicSettings")%></a></li>
		<li><a href="#boAdvancedSettings"><%=LocalizeString("tblAdvancedSettings")%></a></li>
	</ul>
	<div class="boBasicSettings dnnClear" id="boBasicSettings">
		<div class="dnnFormExpandContent"><a href=""><%=Localization.GetString("ExpandAll", Localization.SharedResourceFile)%></a></div>
		<div class="dnnFormItem dnnFormHelp dnnClear"><p class="dnnFormRequired"><span><%=LocalizeString("RequiredFields")%></span></p></div>    
		<div class="bobsContent dnnClear">
			<h2 id="dnnSitePanel-GeneralSettings" class="dnnFormSectionHead"><a href="" class="dnnSectionExpanded"><%=LocalizeString("secGeneralSettings")%></a></h2>
			<fieldset>
				<div class="dnnFormItem">
					<dnn:label id="lblMandatory" runat="server" controlname="chkForceDescription" suffix=":" />
					<asp:CheckBox ID="chkForceDescription" runat="server" />
				</div>
				<div class="dnnFormItem" id="divSummary">
					<dnn:label id="lblSummary" runat="server" controlname="txtSummaryLimit" suffix=":" />
					<asp:TextBox ID="txtSummaryLimit" runat="server" Text="1024" />
				</div>
				<div class="dnnFormItem" id="divSearchSummary">
					<dnn:label id="lblSearchSummary" runat="server" controlname="txtSearchLimit" suffix=":" />
					<asp:TextBox ID="txtSearchLimit" runat="server" Text="255" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblMaxImageWidth" runat="server" controlname="txtMaxImageWidth" suffix=":" />
					<asp:TextBox ID="txtMaxImageWidth" runat="server" Text="400" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblRecentEntriesMax" runat="server" controlname="txtRecentEntriesMax" suffix=":" />
					<asp:TextBox ID="txtRecentEntriesMax" runat="server" Text="10" />
				</div>			
			</fieldset>
			<h2 id="dnnSitePanel-CommentSettings" class="dnnFormSectionHead"><a href="" class=""><%=LocalizeString("secCommentSettings")%></a></h2>
			<fieldset>
				<div class="dnnFormItem">
					<dnn:label id="lblShowGravatars" runat="server" controlname="lblShowGravatars" suffix=":" />
					<asp:CheckBox ID="chkShowGravatars" runat="server" />
				</div>
				<div class="dnnFormItem" id="divGravatarImageWidth">
					<dnn:label id="lblGravatarImageWidth" runat="server" controlname="lblGravatarImageWidth" suffix=":" />
					<asp:TextBox ID="txtGravatarImageWidth" runat="server" Text="48" />
				</div>
				<div class="dnnFormItem" id="divGravatarRating">
					<dnn:label id="lblGravatarRating" runat="server" controlname="lblGravatarRating" suffix=":" />
					<asp:RadioButtonList ID="rblGravatarRating" runat="server" CssClass="dnnFormRadioButtons">
					   <asp:ListItem Value="G" Selected="True" resourceKey="rblGravatarRating_g" />
					   <asp:ListItem Value="PG" resourceKey="rblGravatarRating_pg" />
					   <asp:ListItem Value="R" resourceKey="rblGravatarRating_r" />
					   <asp:ListItem Value="X" resourceKey="rblGravatarRating_x" />
					  </asp:RadioButtonList>
				</div>
				<div class="dnnFormItem" id="divGravatarDefaultImageUrl">
					<dnn:label id="lblGravatarDefaultImageUrl" runat="server" controlname="lblGravatarDefaultImageUrl" suffix=":" />
					<asp:RadioButtonList ID="rblDefaultImage" runat="server" CssClass="dnnFormRadioButtons">
					   <asp:ListItem Value="" Selected="True" Text="Gray Man" />
					   <asp:ListItem Value="identicon" Text="Identicon" />
					   <asp:ListItem Value="wavatar" Text="Wavatar" />
					   <asp:ListItem Value="monsterid" Text="MonsterID" />
					   <asp:ListItem Value="custom" Text="Custom" />
					</asp:RadioButtonList>
				</div>
				<div class="dnnFormItem" id="divGravatarDefaultImageCustomURL">
					<dnn:label id="lblGravatarDefaultImageCustomURL" runat="server" controlname="lblGravatarDefaultImageCustomURL" suffix=":" />
					<asp:TextBox ID="txtGravatarDefaultImageCustomURL" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblShowWebsite" runat="server" controlname="lblShowWebsite" suffix=":" />
					<asp:CheckBox ID="chkShowWebsite" Checked="True" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblShowTitle" runat="server" controlname="lblShowTitle" suffix=":" />
					<asp:CheckBox ID="chkShowCommentTitle" Checked="True" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblAllowCommentAnchors" runat="server" controlname="lblAllowCommentAnchors" suffix=":" />
					<asp:CheckBox ID="chkAllowCommentAnchors" Checked="True" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblAllowCommentImages" runat="server" controlname="lblAllowCommentImages" suffix=":" />
					<asp:CheckBox ID="chkAllowCommentImages" Checked="True" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblAllowCommentFormatting" runat="server" controlname="lblAllowCommentFormatting" suffix=":" />
					<asp:CheckBox ID="chkAllowCommentFormatting" Checked="True" runat="server" />
				</div>
			</fieldset>
			<h2 id="dnnSitePanel-SEOSettings" class="dnnFormSectionHead"><a href="" class=""><%=LocalizeString("tblSEOSettings")%></a></h2>
			<fieldset>
				<div class="dnnFormItem">
					<dnn:label id="lblShowSeoFriendlyUrl" runat="server" controlname="chkShowSeoFriendlyUrl" suffix=":" />
					<asp:CheckBox ID="chkShowSeoFriendlyUrl" runat="server" />
				</div>
				<div class="dnnFormItem">
					 <dnn:label id="lblRegenerateLinks" runat="server" suffix=":" controlname="cmdGenerateLinks" />
					 <div class="dnnLeft">
						<asp:LinkButton ID="cmdGenerateLinks" runat="server" CausesValidation="False" resourceKey="cmdGenerateLinks" CssClass="dnnSecondaryAction" />
					 </div>
				</div>
			</fieldset>
			<h2 id="dnnSitePanel-RSSSettings" class="dnnFormSectionHead"><a href="" class=""><%=LocalizeString("secRSSSettings")%></a></h2>
			<fieldset>
				<div class="dnnFormItem">
					<dnn:label id="lblIncludeBody" runat="server" controlname="chkIncludeBody" suffix=":" />
					<asp:CheckBox ID="chkIncludeBody" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblIncludeCategoriesInDescription" runat="server" controlname="chkIncludeCategoriesInDescription" suffix=":" />
					<asp:CheckBox ID="chkIncludeCategoriesInDescription" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblIncludeTagsInDescription" runat="server" controlname="chkIncludeTagsInDescription" suffix=":" />
					<asp:CheckBox ID="chkIncludeTagsInDescription" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblFeedCacheTime" runat="server" controlname="txtFeedCacheTime" suffix=":" />
					<asp:TextBox runat="server" ID="txtFeedCacheTime" Width="100" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblRecentRssEntriesMax" runat="server" controlname="txtRecentRssEntriesMax" suffix=":" />
					<asp:TextBox ID="txtRecentRssEntriesMax" runat="server" Text="10" />
				</div>     
			</fieldset>
			<h2 id="dnnSitePanel-WLWSettings" class="dnnFormSectionHead"><a href="" class=""><%=LocalizeString("secWLWSettings")%></a></h2>
			<fieldset>
				<div class="dnnFormItem">
					<dnn:label id="lblAllowWLW" runat="server" controlname="chkAllowWLW" suffix=":" />
					<asp:CheckBox ID="chkAllowWLW" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblUseWLWExcerpt" runat="server" controlname="chkUseWLWExcerpt" suffix=":" />
					<asp:CheckBox ID="chkUseWLWExcerpt" runat="server" />
				</div>
			</fieldset>
		</div>
	</div>
	<div class="boAdvancedSettings" id="boAdvancedSettings">
		<div class="boasContent dnnClear">
			<h2 id="dnnSitePanel-AdvancedSettings" class="dnnFormSectionHead"><%=LocalizeString("secMisc")%></h2>
			<fieldset>
				<div class="dnnFormItem">
					<dnn:label id="lblCatVocabRoot" runat="server" controlname="ddlCatVocabRoot" suffix=":" />
					<asp:DropDownList ID="ddlCatVocabRoot" runat="server" DataValueField="VocabularyID" DataTextField="Name" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblAllowMultipleCategories" runat="server" controlname="chkAllowMultipleCategories" suffix=":" />
					<asp:CheckBox ID="chkAllowMultipleCategories" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblUploadOption" runat="server" suffix=":" controlname="chkUploadOption" />
					<asp:CheckBox ID="chkUploadOption" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblPageBlogs" runat="server" controlname="cmbPageBlogs" suffix=":" />
					<asp:DropDownList ID="cmbPageBlogs" DataValueField="BlogID" DataTextField="Title" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblEnableBookmarks" runat="server" suffix=":" controlname="lblEnableBookmarks" />
					<asp:CheckBox ID="chkEnableBookmarks" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblEnforceSummaryTruncation" runat="server" suffix=":" controlname="lblEnforceSummaryTruncation" />
					<asp:CheckBox ID="chkEnforceSummaryTruncation" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblShowSummary" runat="server" controlname="chkShowSummary" suffix=":" />
					<asp:CheckBox ID="chkShowSummary" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblAllowSummaryHtml" runat="server" controlname="chkAllowSummaryHtml" suffix=":" />
					<asp:CheckBox ID="chkAllowSummaryHtml" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblAllowChildBlogs" runat="server" controlname="chkAllowChildBlogs" suffix=":" />
					<asp:CheckBox ID="chkAllowChildBlogs" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblEnableArchiveDropDown" runat="server" controlname="chkEnableArchiveDropDown" suffix=":" />
					<asp:CheckBox ID="chkEnableArchiveDropDown" runat="server" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblMigrateChildblogs" runat="server" suffix=":" controlname="cmdMigrateChildblogs" />
					<asp:Label runat="server" ID="lblChildBlogsStatus" />
					<div class="dnnRight">
						<asp:LinkButton ID="cmdMigrateChildblogs" runat="server" CausesValidation="False" resourceKey="cmdMigrateChildblogs" CssClass="dnnSecondaryAction" />
					</div>
				</div>
			</fieldset>
			<h2 id="dnnSitePanel-LoadFiles" class="dnnFormSectionHead"><%=LocalizeString("secLoadFiles")%></h2>
			<fieldset>
				<div class="dnnFormItem">
					<dnn:label id="lblHostFiles" runat="server" controlname="cblHostFiles" suffix=":" />
					<asp:CheckBoxList runat="server" ID="cblHostFiles" RepeatColumns="1" />
				</div>
				<div class="dnnFormItem">
					<dnn:label id="lblPortalFiles" runat="server" controlname="cblPortalFiles" suffix=":" />
					<asp:CheckBoxList runat="server" ID="cblPortalFiles" RepeatColumns="1" CssClass="dnnBlogCheckbox" />
				</div>
			</fieldset>
		</div>
	</div>
	<ul class="dnnActions">
		<li><asp:LinkButton ID="cmdUpdateOptions" runat="server" CausesValidation="False" resourceKey="cmdUpdate" CssClass="dnnPrimaryAction" /></li>
		<li><asp:HyperLink ID="hlCancelOptions" runat="server" resourceKey="cmdCancel" CssClass="dnnSecondaryAction" /></li>
	</ul>
</div>
<script language="javascript" type="text/javascript">
	/*globals jQuery, window, Sys */
	(function ($, Sys) {
	    function setupDnnBlogSettings() {
	        handleSummaryDisplay();
	        handleGravatarDisplay();

	        $('#dnnBlogOptions').dnnTabs().dnnPanels();



	        $('#<%= chkForceDescription.ClientID  %>').click(function () {
	            handleSummaryDisplay();
	            return true;
	        });

	        $('#<%= chkShowGravatars.ClientID  %>').click(function () {
	            handleGravatarDisplay();
	            return true;
	        });

	        function handleSummaryDisplay() {
	            if ($('#<%= chkForceDescription.ClientID  %>').prop('checked')) {
	                $("#divSummary").hide('highlight', '', 200, '');
	                $("#divSearchSummary").hide('highlight', '', 200, '');
	            } else {
	                $("#divSummary").show('highlight', '', 200, '');
	                $("#divSearchSummary").show('highlight', '', 200, '');
	            }
	        }

	        function handleGravatarDisplay() {
	            if ($('#<%= chkShowGravatars.ClientID  %>').prop('checked')) {
	                $("#divGravatarImageWidth").show('highlight', '', 200, '');
	                $("#divGravatarRating").show('highlight', '', 200, '');
	                $("#divGravatarDefaultImageUrl").show('highlight', '', 200, '');
	                $("#divGravatarDefaultImageCustomURL").show('highlight', '', 200, '');
	            } else {
	                $("#divGravatarImageWidth").hide('highlight', '', 200, '');
	                $("#divGravatarRating").hide('highlight', '', 200, '');
	                $("#divGravatarDefaultImageUrl").hide('highlight', '', 200, '');
	                $("#divGravatarDefaultImageCustomURL").hide('highlight', '', 200, '');
	            }
	        }

	        $('#boBasicSettings .dnnFormExpandContent a').dnnExpandAll({ expandText: '<%=Localization.GetSafeJSString("ExpandAll", Localization.SharedResourceFile)%>', collapseText: '<%=Localization.GetSafeJSString("CollapseAll", Localization.SharedResourceFile)%>', targetArea: '#boBasicSettings' });
	    };

	    $(document).ready(function () {
	        setupDnnBlogSettings();
	        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () {
	            setupDnnBlogSettings();
	        });
	    });

	} (jQuery, window.Sys));
</script>   