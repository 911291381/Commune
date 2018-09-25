<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../static/global/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
    var result = '${result}';
    var callback = '${param.callback}';
    if ($.isFunction(parent[callback])) {
        parent[callback](JSON.parse(result));
    }
</script>
</head>
</html>