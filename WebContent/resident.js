$(function() {
    $('#btnSearch').linkbutton({
        'onClick' : function() {
            $('#dgMain').datagrid('reload', getSearchParams());
        }
    });

    $('#btnCreate').linkbutton({
        'onClick' : function() {
            openEditor();
        }
    });

    $('#btnModify').linkbutton({
        'onClick' : function() {
            handleRow(function(row) {
                openEditor(row);
            });
        }
    });

    $('#btnRemove').linkbutton({
        'onClick' : function() {
            handleRow(function(row) {
                $.messager.confirm('确认', '您确认想要删除记录吗？', function(choose) {
                    if (choose) {
                        $.ajax({
                            url : service + '/resident/' + row.oid,
                            method : 'delete',
                            success : function(r) {
                                $("#dgMain").datagrid("load");
                                if (r.success) {
                                    $.messager.show({
                                        title : '操作结果',
                                        msg : '删除成功',
                                        timeout : 2000,
                                        showType : 'slide'
                                    });
                                } else {
                                    $.messager.alert('删除失败', r.message || r.code, 'warning');
                                }
                            }
                        });
                    }
                });
            });
        }
    });
    
    $('#btnSave').linkbutton({
        'onClick' : function() {
            save();
        }
    });
    
    $('#btnCancel').linkbutton({
        'onClick' : function() {
            $('#winEditor').dialog('close');
        }
    });
});

function getSearchParams(){
    var param = {};
    pushParam(param, 'name', $('#txtName').textbox('getValue'));
    pushParam(param, 'idNum', $('#txtIdNum').textbox('getValue'));
    pushParam(param, 'dhhm', $('#txtDhhm').textbox('getValue'));
    pushParam(param, 'xb', $('#cbxXb').combobox('getValue'));
    pushParam(param, 'type', $('#cbxType').combobox('getValue'));
    pushParam(param, 'sfhz', $('#cbxSfhz').combobox('getValue'));
    pushParam(param, 'czrkType', $('#cbxCzrkType').combobox('getValue'));
    
    return param;
}

function handleRow(handler) {
    var row = $('#dgMain').datagrid("getSelected");
    if (row == null) {
        $.messager.alert('警告', '请选择一条记录', 'warning');
    } else {
        handler(row);
    }
}

function mainLoader(param, success, error) {
    $.getJSON(service + '/resident/list', param, function(r) {
        if (r.success) {
            success(r);
        }
    });
}

function openEditor(row) {
    var title = '新建';
    if (row) {
        title = '修改';
        renderForm(row);
    }
    
    $('#winEditor').dialog('setTitle', title)
    $('#winEditor').dialog('open');
}

function save() {
    var param = {};
    pushParam(param, 'oid', $('#txtOid').val());
    pushParam(param, 'name', $('#_txtName').textbox('getValue'));
    pushParam(param, 'idNum', $('#_txtIdNum').textbox('getValue'));
    pushParam(param, 'dhhm', $('#_txtDhhm').textbox('getValue'));
    pushParam(param, 'mz', $('#_txtMz').textbox('getValue'));
    pushParam(param, 'xb', $('#_cbxXb').combobox('getValue'));
    pushParam(param, 'type', $('#_cbxType').combobox('getValue'));
    pushParam(param, 'sfhz', $('#_cbxSfhz').combobox('getValue'));
    pushParam(param, 'czrkType', $('#_cbxCzrkType').combobox('getValue'));
    
    pushParam(param, 'hksx', $('#_txtHksx').textbox('getValue'));
    pushParam(param, 'hkxz', $('#_txtHkxz').textbox('getValue'));
    pushParam(param, 'csrq', $('#_txtCsrq').textbox('getValue'));
    pushParam(param, 'hyzk', $('#_txtHyzk').textbox('getValue'));
    
    pushParam(param, 'whcd', $('#_txtWhcd').textbox('getValue'));
    pushParam(param, 'zzdz', $('#_txtZzdz').textbox('getValue'));
    pushParam(param, 'gzcs', $('#_txtGzcs').textbox('getValue'));
    pushParam(param, 'fzxm', $('#_txtFzxm').textbox('getValue'));
    
    pushParam(param, 'fzsfzh', $('#_txtFzsfzh').textbox('getValue'));
    pushParam(param, 'fzlxdh', $('#_txtFzlxdh').textbox('getValue'));
    pushParam(param, 'djrq', $('#_txtDjrq').textbox('getValue'));
    pushParam(param, 'dqrq', $('#_txtDqrq').textbox('getValue'));
    
    pushParam(param, 'roomCode', $('#_txtRoomCode').textbox('getValue'));
    pushParam(param, 'buildingCode', $('#_txtBuildingCode').textbox('getValue'));
    pushParam(param, 'qxdm', $('#_txtQxdm').textbox('getValue'));
    pushParam(param, 'pcsdm', $('#_txtPcsdm').textbox('getValue'));
    
    pushParam(param, 'xzjddm', $('#_txtXzjddm').textbox('getValue'));
    pushParam(param, 'sqdm', $('#_txtSqdm').textbox('getValue'));
    pushParam(param, 'bm', $('#_txtBm').textbox('getValue'));
    pushParam(param, 'jkzk', $('#_txtJkzk').textbox('getValue'));
    
    pushParam(param, 'zjxy', $('#_txtZjxy').textbox('getValue'));
    pushParam(param, 'lxx', $('#_txtLxx').textbox('getValue'));
    pushParam(param, 'sg', $('#_txtSg').textbox('getValue'));
    pushParam(param, 'xh', $('#_txtXh').textbox('getValue'));
    
    pushParam(param, 'tx', $('#_txtTx').textbox('getValue'));
    pushParam(param, 'fjdm', $('#_txtFjdm').textbox('getValue'));
    pushParam(param, 'zdry', $('#_txtZdry').textbox('getValue'));
    pushParam(param, 'sjly', $('#_txtSjly').textbox('getValue'));
    
    pushParam(param, 'wgdm', $('#_txtWgdm').textbox('getValue'));
    pushParam(param, 'uniteName', $('#_txtUniteName').textbox('getValue'));
    pushParam(param, 'roomName', $('#_txtRoomName').textbox('getValue'));
    pushParam(param, 'lx', $('#_txtLx').textbox('getValue'));
    
    pushParam(param, 'ly', $('#_txtLy').textbox('getValue'));
    pushParam(param, 'lylx', $('#_txtLylx').textbox('getValue'));
    pushParam(param, 'age', $('#_txtAge').textbox('getValue'));
    pushParam(param, 'gj', $('#_txtGj').textbox('getValue'));
    
    pushParam(param, 'gjmc', $('#_txtGjmc').textbox('getValue'));
    pushParam(param, 'zjyxq', $('#_txtZjyxq').textbox('getValue'));
    pushParam(param, 'jwryLxrsfz', $('#_txtJwryLxrsfz').textbox('getValue'));
    pushParam(param, 'jwryLxrxm', $('#_txtJwryLxrxm').textbox('getValue'));
    
    pushParam(param, 'jwryLxrsj', $('#_txtJwryLxrsj').textbox('getValue'));
    pushParam(param, 'yhzgx', $('#_txtYhzgx').textbox('getValue'));
    pushParam(param, 'zjzl', $('#_txtZjzl').textbox('getValue'));
    pushParam(param, 'wwx', $('#_txtWwx').textbox('getValue'));
    
    pushParam(param, 'wwm', $('#_txtWwm').textbox('getValue'));
    pushParam(param, 'jwrysf', $('#_txtJwrysf').textbox('getValue'));
    pushParam(param, 'qzzl', $('#_txtQzzl').textbox('getValue'));
    pushParam(param, 'qzjg', $('#_txtQzjg').textbox('getValue'));
    
    pushParam(param, 'qzyxq', $('#_txtQzyxq').textbox('getValue'));
    pushParam(param, 'xyzngs', $('#_txtXyzngs').textbox('getValue'));
    pushParam(param, 'jdxx', $('#_txtJdxx').textbox('getValue'));
    pushParam(param, 'ky', $('#_txtKy').textbox('getValue'));
    
    pushParam(param, 'history', $('#_cbxHistory').combobox('getValue'));
    pushParam(param, 'zc', $('#_cbxZc').combobox('getValue'));
    pushParam(param, 'iszdgj', $('#_cbxIsZdgj').combobox('getValue'));
    pushParam(param, 'zzrkType', $('#_cbxZzrkType').combobox('getValue'));
    pushParam(param, 'sfny', $('#_cbxIsSfny').combobox('getValue'));

    if (param.oid) {
        $.ajax({
            url: service + '/resident/' + param.oid,
            data: param,
            method: 'put',
            success:function(r){
               if (r.success) {
                   $('#winEditor').dialog('close');
                   $.messager.show({
                       title:'结果',
                       msg:'操作成功',
                       timeout:2000,
                       showType:'slide'
                   });
                   $('#dgMain').datagrid('reload', getSearchParams());
               } else {
                   $.messager.alert('操作失败',r.message || r.code,'error')
               }
           } 
        });
    } else {
        $.post(service + '/resident', param, function(r){
            if (r.success) {
                $('#winEditor').dialog('close');
                $.messager.show({
                    title:'结果',
                    msg:'操作成功',
                    timeout:2000,
                    showType:'slide'
                });
                $('#dgMain').datagrid('reload', getSearchParams());
            } else {
                $.messager.alert('操作失败',r.message || r.code,'error')
            }
        });
    }
}

function renderForm(row){
    $('#txtOid').val(row.oid);
    $('#_txtName').textbox('setValue', row.name);
    $('#_txtIdNum').textbox('setValue', row.idNum);
    $('#_txtMz').textbox('setValue', row.mz);
    $('#_txtDhhm').textbox('setValue', row.dhhm);
    $('#_cbxXb').combobox('setValue',row.xb);
    $('#_cbxType').combobox('setValue',row.type);
    $('#_cbxSfhz').combobox('setValue',row.sfhz);
    $('#_cbxCzrkType').combobox('setValue',row.czrkType);
    
    $('#_txtHksx').textbox('setValue', row.hksx);
    $('#_txtHkxz').textbox('setValue', row.hkxz);
    $('#_txtCsrq').textbox('setValue', row.csrq);
    $('#_txtHyzk').textbox('setValue', row.hyzk);
    
    $('#_txtWhcd').textbox('setValue', row.whcd);
    $('#_txtZzdz').textbox('setValue', row.zzdz);
    $('#_txtGzcs').textbox('setValue', row.gzcs);
    $('#_txtFzxm').textbox('setValue', row.fzxm);
    
    $('#_txtFzsfzh').textbox('setValue', row.fzsfzh);
    $('#_txtFzlxdh').textbox('setValue', row.fzlxdh);
    $('#_txtDjrq').textbox('setValue', row.djrq);
    $('#_txtDqrq').textbox('setValue', row.dqrq);
    
    $('#_txtRoomCode').textbox('setValue', row.roomCode);
    $('#_txtBuildingCode').textbox('setValue', row.buildingCode);
    $('#_txtQxdm').textbox('setValue', row.qxdm);
    $('#_txtPcsdm').textbox('setValue', row.pcsdm);
    
    $('#_txtXzjddm').textbox('setValue', row.xzjddm);
    $('#_txtSqdm').textbox('setValue', row.sqdm);
    $('#_txtBm').textbox('setValue', row.bm);
    $('#_txtJkzk').textbox('setValue', row.jkzk);
    
    $('#_txtZjxy').textbox('setValue', row.zjxy);
    $('#_txtLxx').textbox('setValue', row.lxx);
    $('#_txtSg').textbox('setValue', row.sg);
    $('#_txtXh').textbox('setValue', row.xh);
    
    $('#_txtTx').textbox('setValue', row.tx);
    $('#_txtFjdm').textbox('setValue', row.fjdm);
    $('#_txtZdry').textbox('setValue', row.zdry);
    $('#_txtSjly').textbox('setValue', row.sjly);
    
    $('#_txtWgdm').textbox('setValue', row.wgdm);
    $('#_txtUniteName').textbox('setValue', row.uniteName);
    $('#_txtRoomName').textbox('setValue', row.roomName);
    $('#_txtLx').textbox('setValue', row.lx);
    
    $('#_txtLy').textbox('setValue', row.ly);
    $('#_txtLylx').textbox('setValue', row.lylx);
    $('#_txtAge').textbox('setValue', row.age);
    $('#_txtGj').textbox('setValue', row.gj);
    
    $('#_txtGjmc').textbox('setValue', row.gjmc);
    $('#_txtZjyxq').textbox('setValue', row.zjyxq);
    $('#_txtJwryLxrsfz').textbox('setValue', row.jwryLxrsfz);
    $('#_txtJwryLxrxm').textbox('setValue', row.jwryLxrxm);
    
    $('#_txtJwryLxrsj').textbox('setValue', row.jwryLxrsj);
    $('#_txtYhzgx').textbox('setValue', row.yhzgx);
    $('#_txtZjzl').textbox('setValue', row.zjzl);
    $('#_txtWwx').textbox('setValue', row.wwx);
    
    $('#_txtWwm').textbox('setValue', row.wwm);
    $('#_txtJwrysf').textbox('setValue', row.jwrysf);
    $('#_txtQzzl').textbox('setValue', row.qzzl);
    $('#_txtQzjg').textbox('setValue', row.qzjg);
    
    $('#_txtQzyxq').textbox('setValue', row.qzyxq);
    $('#_txtXyzngs').textbox('setValue', row.xyzngs);
    $('#_txtJdxx').textbox('setValue', row.jdxx);
    $('#_txtKy').textbox('setValue', row.ky);
    
    $('#_cbxHistory').combobox('setValue',row.history);
    $('#_cbxZc').combobox('setValue',row.zc);
    $('#_cbxIsZdgj').combobox('setValue',row.iszdgj);
    $('#_cbxZzrkType').combobox('setValue',row.zzrkType);
    $('#_cbxIsSfny').combobox('setValue',row.sfny);
}

function destoryForm(){
    renderForm({});
}

// formatters
var dictXb = {
    0 : '未知',
    1 : '男',
    2 : '女'
};
function xbFormatter(value, row, idx) {
    return dictXb[value] || '';
}

var dictType = {
    1 : '常口',
    2 : '暂口',
    3 : '境外人员',
    4 : '无证人员'
};
function typeFormatter(value, row, idx) {
    return dictType[value] || '';
}

var dictSfhz = {
    0 : '否',
    1 : '是'
};
function sfhzFormatter(value, row, idx) {
    return dictSfhz[value] || '';
}

var dictCzrkType = {
    1 : '人户一致',
    2 : '人在户不在',
    3 : '户在人不在'
};
function czrkTypeFormatter(value, row, idx) {
    return dictCzrkType[value] || '';
}


var dictHistory = {
	    0 : '否',
	    1 : '是'
};
function historyFormatter(value, row, idx) {
    return dictHistory[value] || '';
}

var dictZc = {
	    0 : '群众',
	    1 : '中共党员',
	    2 : '其他党派民主人士'
};
function zcFormatter(value, row, idx) {
    return dictZc[value] || '';
}

var dictIsZdgj = {
	    0 : '否',
	    1 : '是'
};
function isZdgjFormatter(value, row, idx) {
    return dictIsZdgj[value] || '';
}

var dictZzrkType = {
	    1 : '人证一致',
	    2 : '人在证不在',
	    3 : '证在人不在'
};
function zzrkTypeFormatter(value, row, idx) {
    return dictZzrkType[value] || '';
}

var dictIsSfny = {
	    0 : '否',
	    1 : '是'
};
function isSfnyFormatter(value, row, idx) {
    return dictIsSfny[value] || '';
}

var dictMz = {
		01 : '汉族',
		02 : '蒙古族',
		03 : '回族',
		04 : '藏族',
		05 : '维吾尔族',
		06 : '苗族',
		07 : '彝族',
		08 : '壮族',
		09 : '布依族',
		10 : '朝鲜族',
		11 : '满族',
		12 : '侗族',
		13 : '瑶族',
		14 : '白族',
		15 : '土家',
		16 : '哈尼族',
		17 : '哈萨克族',
		18 : '傣族',
		19 : '黎族',
		20 : '傈僳族',
		21 : '佤族',
		22 : '畲族',
		23 : '高山族',
		24 : '拉祜族',
		25 : '水族',
		26 : '东乡族',
		27 : '纳西族',
		28 : '景颇族',
		29 : '柯尔克孜族',
		30 : '土族',
		31 : '达斡尔族',
		32 : '仫佬族',
		33 : '羌族',
		34 : '布朗族',
		35 : '撒拉族',
		36 : '毛难族',
		37 : '仡佬族',
		38 : '锡伯族',
		39 : '阿昌族',
		40 : '普米族',
		41 : '塔吉克族',
		42 : '怒族',
		43 : '乌孜别克族',
		44 : '俄罗斯族',
		45 : '鄂温克族',
		46 : '崩龙族',
		47 : '保安族',
		48 : '裕固族',
		49 : '京族',
		50 : '塔塔尔族',
		51 : '独龙族',
		52 : '鄂伦春族',
		53 : '赫哲族',
		54 : '门巴族',
		55 : '珞巴族',
		56 : '基诺族',
		96 : '穿青人',
		97 : '其他',
		98 : '外国血统中国籍'
};
function mzFormatter(value, row, idx) {
    return dictMz[value] || '';
}

//event handler
function onFileChange(pre,crt) {
	if (pre != crt) {
		$('#frmFaceUpload').submit();
	}
}

// callback
function uploadCallback(r){
	if (r.success) {
		$.getJSON(service + '/upload/image',{tmpName:r.data.tempName}, function(_r){
			$('#imgUpload').attr('src', 'data:image/jpeg;base64,' + _r.data);
		});
	}
}
