<!-- ${requestScope.pageName} -->
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">

<%-- <link rel="stylesheet" type="text/css" href="${requestScope.base}/static/global/css/reset.css"> --%>
<link rel="stylesheet" type="text/css" href="${requestScope.base}/static/global/css/base.css">
<!-- easyui -->
<link rel="stylesheet" type="text/css" href="${requestScope.base}/static/easyui-1.5.5.5/themes/color.css">
<link rel="stylesheet" type="text/css" href="${requestScope.base}/static/easyui-1.5.5.5/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${requestScope.base}/static/easyui-1.5.5.5/themes/bootstrap/easyui.css">

<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="${requestScope.base}/static/global/css/ie7.css">
<![endif]--> 
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="${requestScope.base}/static/global/css/ie8.css">
<![endif]-->

<link rel="stylesheet" type="text/css" href="${requestScope.pageName}.css">

<!-- scripts -->
<script type="text/javascript" src="${requestScope.base}/static/global/js/fix.js"></script>
<script type="text/javascript" src="${requestScope.base}/static/global/js/jquery-1.11.3.min.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="${requestScope.base}/static/global/js/html5shiv-3.7.3.min.js"></script>
<![endif]-->
<script type="text/javascript" src="${requestScope.base}/static/easyui-1.5.5.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${requestScope.base}/static/easyui-1.5.5.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${requestScope.base}/static/global/js/global.js"></script>
<script type="text/javascript">
var base = '${requestScope.base}';
var pageName = '${requestScope.pageName}';
var service = base + '/service';
</script>
<script type="text/javascript" src="${requestScope.pageName}.js"></script>