<%@ Page Language="C#" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<!DOCTYPE html>

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Policy Recommendations</title>
    <meta http-equiv="X-UA-Compatible" content="IE=10" />

    <SharePoint:ScriptLink Name="MicrosoftAjax.js" runat="server" Defer="False" />
	<SharePoint:ScriptLink Name="SP.core.js" runat="server" Defer="False" />
	<SharePoint:ScriptLink Name="SP.js" runat="server" Defer="True" Localizable="false" />

    <script type="text/javascript" src="../SiteAssets/JS/jquery-3.0.0.min.js"></script>
    <script type="text/javascript" src="../SiteAssets/JS/knockout-3.4.0.js"></script>
    <script type="text/javascript" src="../SiteAssets/JS/metro.js"></script>
    
    <link href="/_layouts/15/1033/styles/Themable/corev15.css" rel="stylesheet" type="text/css" />
    <link href="../SiteAssets/CSS/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../SiteAssets/CSS/metro.min.css" rel="stylesheet" type="text/css">
    <link href="../SiteAssets/CSS/metro-schemes.min.css" rel="stylesheet" type="text/css">
    <link href="../SiteAssets/CSS/header.css" rel="stylesheet" type="text/css">
 </head>

<body>

        <style>
        .ses_left {
            float:left;
        }
        .ses_img_2 {
            height: 80px;
            width: 65px;
        }

        .ses_img {
            height: 90px;
            width: 70px;
        }

        .ses_title,
        .ses_division,
        .ses_name {
            margin-left: 85px;
            font-size: 1.2rem;
            display: block;
        }
        .ses_name {
            padding-bottom: .3rem;
        }
        .ses_title {
            font-size: 1rem;
        }
        .ses_division {
            font-size: 1rem;
        }
        .ses_title_2,
        .ses_division_2,
        .ses_name_2 {
            margin-left: 4.8rem;
            font-size: 1rem;
            display: block;
            padding-top:.25rem;
        }
        .ses_name_2 {
            padding-bottom: .25rem;
        }
        .ses_title_2 {
            font-size: .8rem;
        }
        .ses_division_2 {
            font-size: .8rem;
        }
        .ses_2 {
            border: 1px solid silver;
            height:90px;
            width: 260px;
            margin: 4px;
            padding: 4px;
            float:left;
        }
        .ses_2_content {
            margin:0.5rem 0 2rem 2.5rem !important;
            padding: 0 !important;
        }
        .frame.active .steelBlue {
            background-color: steelblue !important;
            border-color: steelblue !important;
        }

        .frame.active .blue {
            background-color: midnightblue !important;
            border-color: midnightblue !important;
        }

        .frame.active .olive {
            background-color: olive !important;
            border-color: olive !important;
        }
    </style>
    
    <header id="page_header" data-role="appbar" class="app-bar darcula header shadow ">
        <a class="app-bar-element" href="dashboard.aspx?caller=ses">
            <span class="fa fa-home fa-3x"></span>
        </a>
        <div id="page_label">
            <div class="label_small">IGB 2016</div>
            <div class="label_big">SES Structure</div>
        </div>
    </header>


    <div class="accordion large-heading">
        <div class="frame active">
            <div class="heading blue">
                <div class="ses_left">
                    <img src="../SiteAssets/images/SES/img5.png" class="ses_img" />
                </div>
                <div class="ses_name">Dr Martin Parkinson </div>
                <div class="ses_title">Secretary</div>
                <div class="ses_division">Department of the Prime Minister and Cabinet</div>
            </div>
        </div>
    </div>

    <div class="accordion large-heading" data-role="accordion" data-close-any="true">
        <div class="frame">
            <div class="heading steelBlue">
                <div class="ses_left">
                    <img src="../SiteAssets/images/SES/img1.png" class="ses_img" />
                </div>
                <div class="ses_name">Dr David Gruen</div>
                <div class="ses_title"> Deputy Secretary</div>
                <div class="ses_division">Economic</div>
            </div>
            <div class="content ses_2_content">
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Kelly Pearce</div>
                    <div class="ses_title_2">First Assistant Secretary*</div>
                    <div class="ses_division_2">Industry, Infrastructure & Environment Division</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Neil Williams</div>
                    <div class="ses_title_2">Assistant Secretary</div>
                    <div class="ses_division_2">Industry, Science & Communications</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Paula Stagg</div>
                    <div class="ses_title_2">Assistant Secretary*</div>
                    <div class="ses_division_2">Climate Change & Environment</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Andrew Wallace</div>
                    <div class="ses_title_2">Assistant Secretary*</div>
                    <div class="ses_division_2">Infrastructure, Agriculture & Regional Development</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Luke Yeaman</div>
                    <div class="ses_title_2">First Assistant Secretary</div>
                    <div class="ses_division_2">Economic Division</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Geoff Francis</div>
                    <div class="ses_title_2">Assistant Secretary</div>
                    <div class="ses_division_2">Taxation, Financial Sector & Employment</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Joe Castellino</div>
                    <div class="ses_title_2">Assistant Secretary</div>
                    <div class="ses_division_2">Fiscal Policy</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Jason McDonald</div>
                    <div class="ses_title_2">Assistant Secretary</div>
                    <div class="ses_division_2">Economic & G20 Policy</div>
                </div>
                <div style="clear: both"></div>
            </div>
        </div>

        <div class="frame">
            <div class="heading steelBlue" style="font-size:1rem;">
                <div class="ses_left">
                    <img class="ses_img" src="../SiteAssets/images/SES/img2.png" />
                </div>
                <div class="ses_name">Ms Alison Larkins</div>
                <div class="ses_title">Deputy Secretary*</div>
                <div class="ses_division">Social Policy</div>
            </div>
            <div class="content ses_2_content">
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Troy Sloan</div>
                    <div class="ses_title_2">First Assistant Secretary*</div>
                    <div class="ses_division_2">Social Policy Division</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Louise Clarke</div>
                    <div class="ses_title_2">Assistant Secretary</div>
                    <div class="ses_division_2">Health & Education</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Julie Yeend</div>
                    <div class="ses_title_2">Assistant Secretary</div>
                    <div class="ses_division_2">Social Services & Immigration</div>
                </div>
                <div style="clear: both"></div>
            </div>
        </div>
        <div class="frame">
            <div class="heading olive" style="font-size:1rem;">
                <div style="float:left">
                    <img class="ses_img" src="../SiteAssets/images/SES/img4.png" />
                </div>
                <div class="ses_name">Ms Elizabeth Kelly</div>
                <div class="ses_title">Deputy Secretary</div>
                <div class="ses_division">Governance</div>
            </div>
            <div class="content ses_2_content">
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Jamie Fox</div>
                    <div class="ses_title_2">First Assistant Secretary</div>
                    <div class="ses_division_2">Cabinet Division</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Bruce Taloni</div>
                    <div class="ses_title_2">Assistant Secretary</div>
                    <div class="ses_division_2">Cabinet Secretariat and Implementation</div>
                </div>
                <div class="ses_2">
                    <div class="ses_left">
                        <img src="../SiteAssets/images/SES/img0.png" class="ses_img_2" />
                    </div>
                    <div class="ses_name_2">Ben Neal</div>
                    <div class="ses_title_2">First Assistant Secretary</div>
                    <div class="ses_division_2">Corporate Services Division</div>
                </div>
                <div style="clear: both"></div>
            </div>
        </div>
    </div>


</body>
