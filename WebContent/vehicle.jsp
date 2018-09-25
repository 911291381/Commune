<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车辆信息</title>
<jsp:include page="comm.jsp"></jsp:include>
</head>
<body>
<div class="list-item">
<input id="txtHphm" class="easyui-textbox" data-options="label:'车牌号码:',labelWidth:100,labelAlign:'right',width:220"/>
<a id="btnSearch" class="easyui-linkbutton" iconcls="icon-search" style="margin-left: 60px;width:80px;">查&nbsp;&nbsp;询</a>
</div>
<table id='dgMain' title="车辆信息" class="easyui-datagrid" 
    data-options="singleSelect: true, minHeight:'350', striped:true
                ,rownumbers:true, pagination:true,fitColumns:true
                ,loader:mainLoader, toolbar:'#toolbar'">
    <thead>
        <tr>
            <th data-options="field:'hphm'">车牌号码</th>
           <!-- <th data-options="field:'clpp1'">中文品牌</th> -->
           	<th data-options="field:'sfzmhm'">身份证号</th>
            <th data-options="field:'syr'" >所有人</th>
            <th data-options="field:'lxdh'">联系电话</th>
        </tr>
    </thead>
 </table>
 <div id="toolbar" style="height:auto; padding: 5px;">
    <a id="btnCreate" class="easyui-linkbutton" iconcls="icon-add">新建</a>
    <a id="btnModify" class="easyui-linkbutton" iconCls="icon-edit">修改</a>
    <a id="btnRemove" class="easyui-linkbutton" iconCls="icon-cancel">删除</a>
</div>

<div id="winEditor" class="easyui-dialog" style="padding: 10px; width:1000px"
    data-options="modal:true,closed:true,resizable:false,iconCls:'icon-save',onClose:destoryForm,
            maximizable:false,minimizable:false,collapsible:false,buttons:'#editorButtons'">
    <input type="hidden" id="txtOid" />
    <div class="list-item">
        <input id="_txtHphm" class="easyui-textbox" data-options="label:'车牌号码:',labelWidth:100,labelAlign:'right',width:230"/>
        <!-- 
         <input id="_txtClpp1" class="easyui-textbox" data-options="label:'中文品牌:',labelWidth:100,labelAlign:'right',width:230"/>
         -->
        <input id="_txtSfzmhm" class="easyui-textbox" data-options="label:'身份证号码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtSyr" class="easyui-textbox" data-options="label:'所有人:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtLxdh" class="easyui-textbox" data-options="label:'联系电话:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <!-- 
    <div class="list-item">
        <input id="_txtJdcxh" class="easyui-textbox" data-options="label:'机动车序号:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtHpzl" class="easyui-textbox" data-options="label:'号牌种类:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtClxh" class="easyui-textbox" data-options="label:'车辆型号:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtClpp2" class="easyui-textbox" data-options="label:'英文品牌:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
     -->
    <!-- 
    <div class="list-item">
        <input id="_txtZzg" class="easyui-textbox" data-options="label:'制造国:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZzcmc" class="easyui-textbox" data-options="label:'制造厂名称:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtClsbdh" class="easyui-textbox" data-options="label:'车辆识别代号:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtFdjh" class="easyui-textbox" data-options="label:'发动机号:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
     -->
     <!-- 
    <div class="list-item">
        <input id="_txtCllx" class="easyui-textbox" data-options="label:'车辆类型:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtCsys" class="easyui-textbox" data-options="label:'车身颜色:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtSyxz" class="easyui-textbox" data-options="label:'使用性质:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtSfzmhm" class="easyui-textbox" data-options="label:'身份证明号码:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
      -->
	<!-- 
    <div class="list-item">
        <input id="_txtSfzmmc" class="easyui-textbox" data-options="label:'身份证明名称:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtSyq" class="easyui-textbox" data-options="label:'所有权:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtCcdjrq" class="easyui-datetimebox" data-options="label:'初次登记日期:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtDjrq" class="easyui-datetimebox" data-options="label:'最近定检日期:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
	 -->
	<!-- 
    <div class="list-item">
        <input id="_txtYxqz" class="easyui-datetimebox" data-options="label:'检验有效期止:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtQzbfqz" class="easyui-datetimebox" data-options="label:'强制报废期止:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtFzjg" class="easyui-textbox" data-options="label:'发证机关:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtGlbm" class="easyui-textbox" data-options="label:'管理:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
	 -->
	<!-- 
    <div class="list-item">
        <input id="_txtFprq" class="easyui-datetimebox" data-options="label:'发牌日期:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtFzrq" class="easyui-datetimebox" data-options="label:'发行驶证日期:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtFdjrq" class="easyui-datetimebox" data-options="label:'发登记证书日期:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtFhgzrq" class="easyui-datetimebox" data-options="label:'发合格证日期:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <input id="_txtBxzzrq" class="easyui-datetimebox" data-options="label:'保险终止日期:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtBpcs" class="easyui-numberbox" data-options="label:'补领号牌次数:',labelWidth:100,labelAlign:'right',width:230,min:0,precision:0"/>
        <input id="_txtBzcs" class="easyui-numberbox" data-options="label:'补领行驶证次数',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtBdjcs" class="easyui-numberbox" data-options="label:'补/换领证书次数:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <input id="_txtDjzsbh" class="easyui-textbox" data-options="label:'登记证书编号:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZdjzshs" class="easyui-numberbox" data-options="label:'制登记证书行数:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtDabh" class="easyui-textbox" data-options="label:'档案编号:',labelWidth:100,labelAlign:'right',width:230"/>
         <input id="_txtXzqh" class="easyui-textbox" data-options="label:'管理辖区:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <input id="_txtZt" class="easyui-textbox" data-options="label:'机动车状态:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtJbr" class="easyui-textbox" data-options="label:'经办人:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtCcrq" class="easyui-datetimebox" data-options="label:'出厂日期:',labelWidth:100,labelAlign:'right',width:230"/>
         <input id="_txtHdfs" class="easyui-textbox" data-options="label:'获得方式:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <input id="_txtGxrq" class="easyui-datetimebox" data-options="label:'更新日期:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtBz" class="easyui-textbox" data-options="label:'备注:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZsxzqh" class="easyui-textbox" data-options="label:'住所行政区划:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZsxxdz" class="easyui-textbox" data-options="label:'住所详细地址:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <input id="_txtYzbm1" class="easyui-textbox" data-options="label:'住所邮政编码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZzz" class="easyui-textbox" data-options="label:'暂住居住证明:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZzxzqh" class="easyui-textbox" data-options="label:'暂住行政区划:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZzxxdz" class="easyui-textbox" data-options="label:'暂住详细地址:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <input id="_txtYzbm2" class="easyui-textbox" data-options="label:'暂住邮政编码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZdyzt" class="easyui-textbox" data-options="label:'自定义状态:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtYxh" class="easyui-textbox" data-options="label:'原机动车序号:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtDphgzbh" class="easyui-textbox" data-options="label:'底盘合格证编号:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <input id="_txtSqdm" class="easyui-textbox" data-options="label:'社区代码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtClyt" class="easyui-textbox" data-options="label:'车辆用途',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtYtsx" class="easyui-textbox" data-options="label:'用途属性',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtDzyx" class="easyui-textbox" data-options="label:'电子邮箱:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <input id="_txtXszbh" class="easyui-textbox" data-options="label:'行驶证证芯编号:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtSjhm" class="easyui-textbox" data-options="label:'手机号码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtJyhgbzbh" class="easyui-textbox" data-options="label:'检验合格标志:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtDwbh" class="easyui-textbox" data-options="label:'单位编号:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <select id="_cbxGcjk" class="easyui-combobox" data-options="label:'国产/进口:',labelAlign:'right',labelWidth:100,width:230">
        	<option value="">请选择</option>
        	<option value="0">国产</option>
        	<option value="1">进口</option>   
    </select>
        <select id="_cbxDjbj" class="easyui-combobox" data-options="label:'抵押标记:',labelAlign:'right',labelWidth:100,width:230">
       	 <option value="">请选择</option>
        	<option value="0">未抵押</option>
        	<option value="1">已抵押</option> 
        </select>
        <select id="_cbxClly" class="easyui-combobox" data-options="label:'车辆来源:',labelAlign:'right',labelWidth:100,width:230">
        	<option value="">请选择</option>
        	<option value="1">注册</option>
        	<option value="2">转入</option>
        	<option value="3">过户</option>
    	</select>
    </div>
	 -->
</div>
<div id="editorButtons">
    <a id="btnSave" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">确&nbsp;&nbsp;定</a>
    <a id="btnCancel" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">取&nbsp;&nbsp;消</a>
</div>
</body>
</html>