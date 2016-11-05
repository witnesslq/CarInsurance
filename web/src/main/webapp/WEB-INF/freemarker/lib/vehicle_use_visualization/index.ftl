<#macro content >
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/vehicle_use_visualization/index.css' />"/>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#gpsIdSelect").change(function (e) {
                if (typeof (this.value) == "string" && this.value != ""){
                    $("#cat_map_img").attr("src", "<@com.tags.spring.url value='/vehicle_use_visualization/' />" + this.value + ".jpg");
                }else {
                    $("#cat_map_img").attr("src", "<@com.tags.spring.url value='/images/world-map.jpg' />");
                }
            });
        });
    </script>
    <div id="content">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">

                    <!--table list-->
                    <div class="widget-box">
                        <div class="widget-content nopadding">
                            <div id="cat_gps_id" >
                                <span class="label">车牌号</span>
                                <select id="gpsIdSelect" page-region="header">
                                    <option value="" selected >--- 请选择 ---</option>
                                    <option value="YYZX03810" >YYZX03810</option>
                                    <option value="YYZX05028" >YYZX05028</option>
                                    <option value="YYZX04777" >YYZX04777</option>
                                    <option value="YYZX05248" >YYZX05248</option>
                                    <option value="YYZZ02013" >YYZZ02013</option>
                                </select>
                            </div>
                            <table class="table table-bordered with-check" >
                                <tbody>
                                <tr>
                                    <td style="padding:0;">
                                        <div class="tabbox">
                                            <div style="padding-top: 10px;padding-left: 15px;">
                                                <img id="cat_map_img" page-region="body" src="<@com.tags.spring.url value='/images/world-map.jpg' />">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--table list end-->
                </div>
            </div>
        </div>
    </div>
</#macro>