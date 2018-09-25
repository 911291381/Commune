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
                            url : service + '/vehicle/' + row.oid,
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
    pushParam(param, 'hphm', $('#txtHphm').textbox('getValue'));
    
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
    $.getJSON(service + '/vehicle/list', param, function(r) {
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
    pushParam(param, 'hphm', $('#_txtHphm').textbox('getValue'));
    pushParam(param, 'sfzmhm', $('#_txtSfzmhm').textbox('getValue'));
    pushParam(param, 'syr', $('#_txtSyr').textbox('getValue'));
    pushParam(param, 'lxdh', $('#_txtLxdh').textbox('getValue'));
    
    /*
    pushParam(param, 'clpp1', $('#_txtClpp1').textbox('getValue'));
    
    pushParam(param, 'jdcxh', $('#_txtJdcxh').textbox('getValue'));
    pushParam(param, 'hpzl', $('#_txtHpzl').textbox('getValue'));
    pushParam(param, 'clxh', $('#_txtClxh').textbox('getValue'));
    pushParam(param, 'clpp2', $('#_txtClpp2').textbox('getValue'));
    
    pushParam(param, 'gcjk', $('#_cbxGcjk').combobox('getValue'));
    pushParam(param, 'zzg', $('#_txtZzg').textbox('getValue'));
    pushParam(param, 'zzcmc', $('#_txtZzcmc').textbox('getValue'));
    pushParam(param, 'clsbdh', $('#_txtClsbdh').textbox('getValue'));
    
    pushParam(param, 'fdjh', $('#_txtFdjh').textbox('getValue'));
    pushParam(param, 'cllx', $('#_txtCllx').textbox('getValue'));
    pushParam(param, 'csys', $('#_txtCsys').textbox('getValue'));
    pushParam(param, 'syxz', $('#_txtSyxz').textbox('getValue'));
    
    pushParam(param, 'sfzmhm', $('#_txtSfzmhm').textbox('getValue'));
    pushParam(param, 'sfzmmc', $('#_txtSfzmmc').textbox('getValue'));
    pushParam(param, 'syq', $('#_txtSyq').textbox('getValue'));
    pushParam(param, 'ccdjrq', $('#_txtCcdjrq').datetimebox('getValue'));
    
    pushParam(param, 'djrq', $('#_txtDjrq').datetimebox('getValue'));
    pushParam(param, 'yxqz', $('#_txtYxqz').datetimebox('getValue'));
    pushParam(param, 'qzbfqz', $('#_txtQzbfqz').datetimebox('getValue'));
    pushParam(param, 'fzjg', $('#_txtFdjrq').textbox('getValue'));
    
    pushParam(param, 'glbm', $('#_txtGlbm').textbox('getValue'));
    pushParam(param, 'fprq', $('#_txtFhgzrq').datetimebox('getValue'));
    pushParam(param, 'fzrq', $('#_txtFzrq').datetimebox('getValue'));
    pushParam(param, 'fdjrq', $('#_txtFdjrq').datetimebox('getValue'));
    
    pushParam(param, 'fhgzrq', $('#_txtFhgzrq').datetimebox('getValue'));
    pushParam(param, 'bxzzrq', $('#_txtBxzzrq').datetimebox('getValue'));
    pushParam(param, 'bpcs', $('#_txtBpcs').numberbox('getValue'));
    pushParam(param, 'bzcs', $('#_txtBzcs').numberbox('getValue'));
    
    pushParam(param, 'bdjcs', $('#_txtBdjcs').numberbox('getValue'));
    pushParam(param, 'djzsbh', $('#_txtDjzsbh').textbox('getValue'));
    pushParam(param, 'zdjzshs', $('#_txtZdjzshs').numberbox('getValue'));
    pushParam(param, 'dabh', $('#_txtDabh').textbox('getValue'));
    
    pushParam(param, 'xzqh', $('#_txtXzqh').textbox('getValue'));
    pushParam(param, 'zt', $('#_txtZt').textbox('getValue'));
    pushParam(param, 'djbj', $('#_cbxDjbj').combobox('getValue'));
    pushParam(param, 'jbr', $('#_txtJbr').textbox('getValue'));
    
    pushParam(param, 'clly', $('#_cbxClly').combobox('getValue'));
    pushParam(param, 'ccrq', $('#_txtCcrq').datetimebox('getValue'));
    pushParam(param, 'hdfs', $('#_txtHdfs').textbox('getValue'));
    pushParam(param, 'gxrq', $('#_txtGxrq').datetimebox('getValue'));
    
    pushParam(param, 'bz', $('#_txtBz').textbox('getValue'));
    pushParam(param, 'zsxzqh', $('#_txtZsxzqh').textbox('getValue'));
    pushParam(param, 'zsxxdz', $('#_txtZsxxdz').textbox('getValue'));
    pushParam(param, 'yzbm1', $('#_txtYzbm1').textbox('getValue'));
    
    pushParam(param, 'zzz', $('#_txtZzz').textbox('getValue'));
    pushParam(param, 'zzxzqh', $('#_txtZzxzqh').textbox('getValue'));
    pushParam(param, 'zzxxdz', $('#_txtZzxxdz').textbox('getValue'));
    pushParam(param, 'yzbm2', $('#_txtYzbm2').textbox('getValue'));
    
    pushParam(param, 'zdyzt', $('#_txtZdyzt').textbox('getValue'));
    pushParam(param, 'yxh', $('#_txtYxh').textbox('getValue'));
    pushParam(param, 'dphgzbh', $('#_txtDphgzbh').textbox('getValue'));
    pushParam(param, 'sqdm', $('#_txtSqdm').textbox('getValue'));
    
    pushParam(param, 'clyt', $('#_txtClyt').textbox('getValue'));
    pushParam(param, 'ytsx', $('#_txtYtsx').textbox('getValue'));
    pushParam(param, 'dzyx', $('#_txtDzyx').textbox('getValue'));
    pushParam(param, 'xszbh', $('#_txtXszbh').textbox('getValue'));
    
    pushParam(param, 'sjhm', $('#_txtSjhm').textbox('getValue'));
    pushParam(param, 'jyhgbzbh', $('#_txtJyhgbzbh').textbox('getValue'));
    pushParam(param, 'dwbh', $('#_txtDwbh').textbox('getValue'));
     */

    if (param.oid) {
        $.ajax({
            url: service + '/vehicle/' + param.oid,
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
        $.post(service + '/vehicle', param, function(r){
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
    $('#_txtHphm').textbox('setValue', row.hphm);
    $('#_txtSyr').textbox('setValue', row.syr);
    $('#_txtLxdh').textbox('setValue', row.lxdh);
    $('#_txtSfzmhm').textbox('setValue', row.sfzmhm);

    /*
    $('#_txtClpp1').textbox('setValue', row.clpp1);
    
    $('#_txtJdcxh').textbox('setValue', row.jdcxh);
    $('#_txtHpzl').textbox('setValue', row.hpzl);
    $('#_txtClxh').textbox('setValue', row.clxh);
    $('#_txtClpp2').textbox('setValue', row.clpp2);

    $('#_txtZzg').textbox('setValue', row.zzg);
    $('#_txtZzcmc').textbox('setValue', row.zzcmc);
    $('#_txtClsbdh').textbox('setValue', row.clsbdh);

    $('#_txtFdjh').textbox('setValue', row.fdjh);
    $('#_txtCllx').textbox('setValue', row.cllx);
    $('#_txtCsys').textbox('setValue', row.csys);
    $('#_txtSyxz').textbox('setValue', row.syxz);

    $('#_txtSfzmhm').textbox('setValue', row.sfzmhm);
    $('#_txtSfzmmc').textbox('setValue', row.sfzmmc);
    $('#_txtSyq').textbox('setValue', row.syq);
    $('#_txtCcdjrq').datetimebox('setValue', row.ccdjrq);

    $('#_txtDjrq').datetimebox('setValue', row.djrq);
    $('#_txtYxqz').datetimebox('setValue', row.yxqz);
    $('#_txtQzbfqz').datetimebox('setValue', row.qzbfqz);
    $('#_txtFzjg').textbox('setValue', row.fzjg);

    $('#_txtGlbm').textbox('setValue', row.glbm);
    $('#_txtFprq').datetimebox('setValue', row.fprq);
    $('#_txtFzrq').datetimebox('setValue', row.fzrq);
    $('#_txtFdjrq').datetimebox('setValue', row.fdjrq);

    $('#_txtFhgzrq').datetimebox('setValue', row.fhgzrq);
    $('#_txtBxzzrq').datetimebox('setValue', row.bxzzrq);
    $('#_txtBpcs').numberbox('setValue', row.bpcs);
    $('#_txtBzcs').numberbox('setValue', row.bzcs);

    $('#_txtBdjcs').numberbox('setValue', row.bdjcs);
    $('#_txtDjzsbh').textbox('setValue', row.djzsbh);
    $('#_txtZdjzshs').numberbox('setValue', row.zdjzshs);
    $('#_txtDabh').textbox('setValue', row.dabh);

    $('#_txtXzqh').textbox('setValue', row.xzqh);
    $('#_txtZt').textbox('setValue', row.zt);
    $('#_txtJbr').textbox('setValue', row.jbr);

    $('#_txtCcrq').datetimebox('setValue', row.ccrq);
    $('#_txtHdfs').textbox('setValue', row.hdfs);
    $('#_txtGxrq').datetimebox('setValue', row.gxrq);

    $('#_txtBz').textbox('setValue', row.bz);
    $('#_txtZsxzqh').textbox('setValue', row.zsxzqh);
    $('#_txtZsxxdz').textbox('setValue', row.zsxxdz);
    $('#_txtYzbm1').textbox('setValue', row.yzbm1);

    $('#_txtZzz').textbox('setValue', row.zzz);
    $('#_txtZzxzqh').textbox('setValue', row.zzxzqh);
    $('#_txtZzxxdz').textbox('setValue', row.zzxxdz);
    $('#_txtYzbm2').textbox('setValue', row.yzbm2);

    $('#_txtZdyzt').textbox('setValue', row.zdyzt);
    $('#_txtYxh').textbox('setValue', row.yxh);
    $('#_txtDphgzbh').textbox('setValue', row.dphgzbh);
    $('#_txtSqdm').textbox('setValue', row.sqdm);

    $('#_txtClyt').textbox('setValue', row.clyt);
    $('#_txtYtsx').textbox('setValue', row.ytsx);
    $('#_txtDzyx').textbox('setValue', row.dzyx);
    $('#_txtXszbh').textbox('setValue', row.xszbh);

    $('#_txtSjhm').textbox('setValue', row.sjhm);
    $('#_txtJyhgbzbh').textbox('setValue', row.jyhgbzbh);
    $('#_txtDwbh').textbox('setValue', row.dwbh);

    $('#_cbxGcjk').combobox('setValue', row.gcjk);
    $('#_cbxDjbj').combobox('setValue', row.djbj);
    $('#_cbxClly').combobox('setValue', row.clly);
    */
}

function destoryForm(){
    renderForm({});
}

// formatters
var dictGcjk = {
	    0 : '国产',
	    1 : '进口',
	};
function gcjkFormatter(value, row, idx) {
	return dictGcjk[value] || '';
}

var dictDjbj = {
	    0 : '未抵押',
	    1 : '已抵押',
	};
function djbjFormatter(value, row, idx) {
	return dictDjbj[value] || '';
}

var dictClly = {
	    1 : '注册',
	    2 : '转入',
	    3 : '过户'
	};
function cllyFormatter(value, row, idx) {
	return dictClly[value] || '';
}