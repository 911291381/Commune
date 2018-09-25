<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员信息</title>
<jsp:include page="comm.jsp"></jsp:include>
</head>
<body>
<div class="list-item">
<input id="txtName" class="easyui-textbox" data-options="label:'姓名:',labelWidth:100,labelAlign:'right',width:220"/>
<input id="txtIdNum" class="easyui-textbox" data-options="label:'身份证号:',labelWidth:100,labelAlign:'right',width:220"/>
<input id="txtDhhm" class="easyui-textbox" data-options="label:'电话号码:',labelWidth:100,labelAlign:'right',width:220"/>
<select id="cbxXb" class="easyui-combobox" data-options="label:'性别:',labelAlign:'right',labelWidth:100,width:220">
    <option value="">请选择</option>
    <option value="1">男</option>
    <option value="2">女</option>
    <option value="0">未知</option>
</select>
</div>
<div class="list-item">
<select id="cbxType" class="easyui-combobox" data-options="label:'人员类别:',labelAlign:'right',labelWidth:100,width:220">
    <option value="">请选择</option>
    <option value="1">常口</option>
    <option value="2">暂口</option>
    <option value="3">境外人员</option>
    <option value="4">无证人员</option>
</select>
<select id="cbxSfhz" class="easyui-combobox" data-options="label:'是否户主:',labelAlign:'right',labelWidth:100,width:220">
    <option value="">请选择</option>
    <option value="1">是</option>
    <option value="0">否</option>
</select>
<select id="cbxCzrkType" class="easyui-combobox" data-options="label:'常住人员状态:',labelAlign:'right',labelWidth:100,width:220">
    <option value="">请选择</option>
    <option value="1">人户一致</option>
    <option value="2">人在户不在</option>
    <option value="3">户在人不在</option>
</select>
<a id="btnSearch" class="easyui-linkbutton" iconcls="icon-search" style="margin-left: 60px;width:80px;">查&nbsp;&nbsp;询</a>
</div>
<table id='dgMain' title="人员信息" class="easyui-datagrid" 
    data-options="singleSelect: true, minHeight:'350', striped:true
                ,rownumbers:true, pagination:true,fitColumns:true
                ,loader:mainLoader, toolbar:'#toolbar'">
    <thead>
        <tr>
            <th data-options="field:'name'">姓名</th>
            <th data-options="field:'xb',formatter:xbFormatter">性别</th>
            <th data-options="field:'idNum'" >身份证号</th>
            <th data-options="field:'mz'">民族</th>
            <th data-options="field:'dhhm'">电话号码</th>
            <th data-options="field:'zzdz'">暂住地址</th>
            <th data-options="field:'hksx'">户口省县</th>
            <th data-options="field:'type',formatter:typeFormatter">人员类别</th>
            <th data-options="field:'sfhz',formatter:sfhzFormatter">是否户主</th>
        </tr>
    </thead>
 </table>
 <div id="toolbar" style="height:auto; padding: 5px;">
    <a id="btnCreate" class="easyui-linkbutton" iconcls="icon-add">新建</a>
    <a id="btnModify" class="easyui-linkbutton" iconCls="icon-edit">修改</a>
    <a id="btnRemove" class="easyui-linkbutton" iconCls="icon-cancel">删除</a>
</div>

<div id="winEditor" class="easyui-dialog" style="padding: 10px;width:1000px"
    data-options="modal:true,closed:true,resizable:false,iconCls:'icon-save',onClose:destoryForm,
            maximizable:false,minimizable:false,collapsible:false,buttons:'#editorButtons'">
    <input type="hidden" id="txtOid" />
    <div class="list-item">
        <input id="_txtName" class="easyui-textbox" data-options="label:'姓名:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtIdNum" class="easyui-textbox" data-options="label:'身份证号:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtMz" class="easyui-textbox" data-options="label:'民族:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtDhhm" class="easyui-textbox" data-options="label:'电话号码:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>

    <div class="list-item">
        <select id="_cbxXb" class="easyui-combobox" data-options="label:'性别:',labelAlign:'right',labelWidth:100,width:230">
        <option value="">请选择</option>
        <option value="1">男</option>
        <option value="2">女</option>
        <option value="0">未知</option>
    </select>
        <select id="_cbxType" class="easyui-combobox" data-options="label:'人员类别:',labelAlign:'right',labelWidth:100,width:230">
            <option value="">请选择</option>
            <option value="1">常口</option>
            <option value="2">暂口</option>
            <option value="3">境外人员</option>
            <option value="4">无证人员</option>
        </select>
        <select id="_cbxSfhz" class="easyui-combobox" data-options="label:'是否户主:',labelAlign:'right',labelWidth:100,width:230">
            <option value="">请选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
        </select>
        <select id="_cbxCzrkType" class="easyui-combobox" data-options="label:'常住人员状态:',labelAlign:'right',labelWidth:100,width:230">
            <option value="">请选择</option>
            <option value="1">人户一致</option>
            <option value="2">人在户不在</option>
            <option value="3">户在人不在</option>
        </select>
    </div>

    <div class="list-item">
        <input id="_txtHksx" class="easyui-textbox" data-options="label:'户口省县:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtHkxz" class="easyui-textbox" data-options="label:'户口详址:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtCsrq" class="easyui-textbox" data-options="label:'出生日期:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtHyzk" class="easyui-textbox" data-options="label:'婚姻状况:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtWhcd" class="easyui-textbox" data-options="label:'文化程度:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZzdz" class="easyui-textbox" data-options="label:'暂住地址:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtGzcs" class="easyui-textbox" data-options="label:'工作场所:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtFzxm" class="easyui-textbox" data-options="label:'房主姓名:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtFzsfzh" class="easyui-textbox" data-options="label:'房主身份证号:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtFzlxdh" class="easyui-textbox" data-options="label:'房主联系电话:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtDjrq" class="easyui-textbox" data-options="label:'登记日期:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtDqrq" class="easyui-textbox" data-options="label:'到期日期:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtRoomCode" class="easyui-textbox" data-options="label:'房间代码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtBuildingCode" class="easyui-textbox" data-options="label:'楼栋代码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtQxdm" class="easyui-textbox" data-options="label:'区县代码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtPcsdm" class="easyui-textbox" data-options="label:'派出所代码:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtXzjddm" class="easyui-textbox" data-options="label:'现住街道代码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtSqdm" class="easyui-textbox" data-options="label:'社区代码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtBm" class="easyui-textbox" data-options="label:'别名:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtJkzk" class="easyui-textbox" data-options="label:'健康状况:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtZjxy" class="easyui-textbox" data-options="label:'宗教信仰:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtLxx" class="easyui-textbox" data-options="label:'脸型:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtSg" class="easyui-textbox" data-options="label:'身高:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtXh" class="easyui-textbox" data-options="label:'鞋号:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtTx" class="easyui-textbox" data-options="label:'体型:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtFjdm" class="easyui-textbox" data-options="label:'房间代码:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZdry" class="easyui-textbox" data-options="label:'重点人员类型:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtSjly" class="easyui-textbox" data-options="label:'数据来源:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtWgdm" class="easyui-textbox" data-options="label:'WGDM:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtUniteName" class="easyui-textbox" data-options="label:'单元名:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtRoomName" class="easyui-textbox" data-options="label:'房间名:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtLx" class="easyui-textbox" data-options="label:'经度:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtLy" class="easyui-textbox" data-options="label:'维度:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtLylx" class="easyui-textbox" data-options="label:'LYLX:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtAge" class="easyui-textbox" data-options="label:'年龄:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtGj" class="easyui-textbox" data-options="label:'国籍:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtGjmc" class="easyui-textbox" data-options="label:'国籍名称:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZjyxq" class="easyui-textbox" data-options="label:'证件有效期:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtJdxx" class="easyui-textbox" data-options="label:'就读学校:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtKy" class="easyui-textbox" data-options="label:'口音:',labelWidth:100,labelAlign:'right',width:230"/>               
    </div>
    
    <div class="list-item">        
        <input id="_txtYhzgx" class="easyui-textbox" data-options="label:'与户主关系:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtZjzl" class="easyui-textbox" data-options="label:'证件种类:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtWwx" class="easyui-textbox" data-options="label:'外文姓:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtXyzngs" class="easyui-textbox" data-options="label:'现有子女个数:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
        <input id="_txtWwm" class="easyui-textbox" data-options="label:'外文名:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtJwrysf" class="easyui-textbox" data-options="label:'境外人员身份:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtQzzl" class="easyui-textbox" data-options="label:'签证种类:',labelWidth:100,labelAlign:'right',width:230"/>
        <input id="_txtQzjg" class="easyui-textbox" data-options="label:'签证机构:',labelWidth:100,labelAlign:'right',width:230"/>
    </div>
    
    <div class="list-item">
  		<input id="_txtJwryLxrsfz" class="easyui-textbox" data-options="label:'境外人员联系人身份证:',labelWidth:150,labelAlign:'right',width:450"/>
        <input id="_txtQzyxq" class="easyui-textbox" data-options="label:'签证有效截止日期:',labelWidth:150,labelAlign:'right',width:450"/>     
    </div>
    
    <div class="list-item">    	
    	<input id="_txtJwryLxrxm" class="easyui-textbox" data-options="label:'境外人员联系人姓名:',labelWidth:150,labelAlign:'right',width:450"/>
    	<input id="_txtJwryLxrsj" class="easyui-textbox" data-options="label:'境外人员联系人手机:',labelWidth:150,labelAlign:'right',width:450"/>
    </div>  
     
    <div class="list-item">
        <select id="_cbxHistory" class="easyui-combobox" data-options="label:'历史人员:',labelAlign:'right',labelWidth:100,width:230">
            <option value="">请选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
        </select>
        <select id="_cbxZc" class="easyui-combobox" data-options="label:'政治面貌:',labelAlign:'right',labelWidth:100,width:230">
            <option value="">请选择</option>
            <option value="0">群众</option>
            <option value="1">中共党员</option>
            <option value="2">其他党派民主人士</option>
        </select>
        <select id="_cbxIsZdgj" class="easyui-combobox" data-options="label:'是否重点国家:',labelAlign:'right',labelWidth:100,width:230">
            <option value="">请选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
        </select>
        <select id="_cbxZzrkType" class="easyui-combobox" data-options="label:'暂住人员状态:',labelAlign:'right',labelWidth:100,width:230">
            <option value="">请选择</option>
            <option value="1">人证一致</option>
            <option value="2">人在证不在</option>
            <option value="3">证在人不在</option>
        </select>
    </div>
    
    <div class="list-item">
        <select id="_cbxIsSfny" class="easyui-combobox" data-options="label:'是否捺印:',labelAlign:'right',labelWidth:100,width:230">
            <option value="">请选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
        </select>
    </div>
    
	<div class="list-item">
		<form id="frmFaceUpload" method="post" enctype="multipart/form-data" action="${base}/service/upload" target="ifrmUpload">
			<input id="fileUpload" name="file" class="easyui-filebox" 
			  data-options="label:'图片：',labelWidth:100,labelAlign:'right',width:300,buttonText:'选择文件',accept:'image/jpeg',onChange:onFileChange" />
			<input type="hidden" name="callback" value="uploadCallback" />
		</form>
	</div>
	
	<div class="list-item">
		<img id="imgUpload" width="200px" style="padding-left:100px;"/>
	</div>
	
  </div>
</div>
<div id="editorButtons">
    <a id="btnSave" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">确&nbsp;&nbsp;定</a>
    <a id="btnCancel" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">取&nbsp;&nbsp;消</a>
</div>
<iframe name="ifrmUpload" height="0" width="0" style="dispaly:none;"></iframe>
</body>
</html>