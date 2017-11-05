
(function () {

    X.ajax = {

        timeoutErrorMsg: "Request timeout, please refresh the page and try again!",
        errorMsg: "Error! {0} ({1})",
        errorWindow: null,

        hookPostBack: function () {
            if (typeof (__doPostBack) != 'undefined') {
                __doPostBack = x__doPostBack;
            }
        }

    };

    function enableAjax() {
        if (typeof (X.control_enable_ajax) === 'undefined') {
            return X.global_enable_ajax;
        }
        return X.control_enable_ajax;
    }

    function enableAjaxLoading() {
        if (typeof (X.control_enable_ajax_loading) === 'undefined') {
            return X.global_enable_ajax_loading;
        }
        return X.control_enable_ajax_loading;
    }

    function ajaxLoadingType() {
        if (typeof (X.control_ajax_loading_type) === 'undefined') {
            return X.global_ajax_loading_type;
        }
        return X.control_ajax_loading_type;
    }


    function x__doPostBack_internal() {
        if (typeof (X.util.beforeAjaxPostBackScript) === 'function') {
            X.util.beforeAjaxPostBackScript();
        }

        // Ext.encode will convert Chinese characters. Ext.encode({a:"你好"}) => '{"a":"\u4f60\u597d"}'
        // We will include the official JSON object from http://json.org/
        // 现在还是用的 Ext.encode，在 IETester的 IE8下 JSON.stringify 生成的中文是\u9009\u9879形式。
        //X.util.setHiddenFieldValue('X_STATE', encodeURIComponent(JSON.stringify(getXState())));

        var xstate = Ext.encode(getXState());
        if (Ext.isIE6 || Ext.isIE7) {
            X.util.setHiddenFieldValue('X_STATE_URI', 'true');
            xstate = encodeURIComponent(xstate);
        } else {
            xstate = Base64.encode(xstate);
        }
        X.util.setHiddenFieldValue('X_STATE', xstate);
        //X.util.setHiddenFieldValue('X_STATE', encodeURIComponent(Ext.encode(getXState())));
        if (!enableAjax()) {
            // 当前请求结束后必须重置 X.control_enable_ajax
            X.control_enable_ajax = undefined;
            X.util.setHiddenFieldValue('X_AJAX', 'false');
            theForm.submit();
        } else {
            // 当前请求结束后必须重置 X.control_enable_ajax
            X.control_enable_ajax = undefined;
            X.util.setHiddenFieldValue('X_AJAX', 'true');
            var url = document.location.href;
            var urlHashIndex = url.indexOf('#');
            if (urlHashIndex >= 0) {
                url = url.substring(0, urlHashIndex);
            }
            Ext.Ajax.request({
                form: theForm.id,
                url: url,
                isUpload: X.form_upload_file,
                //params: serializeForm(theForm) + '&X_AJAX=true',
                success: function (data) {
                    // see: http://extjs.com/forum/showthread.php?t=8129
                    // 如果页面中有FileUpload，responseObj.responseText会包含于 <pre>标签。
                    var scripts = data.responseText;
                    if (scripts) {
                        // 已经经过encodeURIComponent编码了，在ResponseFilter中的Close函数中
                        var prefix = scripts.substr(0, 4);
                        if (prefix.toLowerCase() === '<pre') {
                            //scripts = scripts.substr(5, scripts.length - 11);
                            //scripts = decodeURIComponent(scripts.replace(/<\/?pre>/ig, ''));
                            scripts = scripts.replace(/<\/?pre[^>]*>/ig, '');
                            scripts = decodeURIComponent(scripts);
                        }
                        //eval(scripts);
                        new Function(scripts)();
                    }
                    X.ajaxReady();
                },
                failure: function (data) {
                    var lastDisabledButtonId = X.util.getHiddenFieldValue('X_TARGET');
                    if (lastDisabledButtonId) {
                        X.enable(lastDisabledButtonId);
                    }
                    //X.util.alert(String.format(X.ajax.errorMsg, data.statusText, data.status));
                    createErrorWindow(data);
                },
                callback: function (options, success, response) {
                    // AJAX结束时需要清空此字段，否则下一次的type=submit提交（ASP.NET回发方式之一）会被误认为是AJAX提交
                    X.util.setHiddenFieldValue('X_AJAX', 'false');
                }
            });
        }
    }


    // 如果启用 Ajax，则所有对 __doPostBack 的调用都会到这里来
    function x__doPostBack(eventTarget, eventArgument) {
        // 回发页面之前延时 100 毫秒，确保页面上的操作完成（比如选中复选框的动作）
        window.setTimeout(function () {
            // theForm variable will always exist, because we invoke the GetPostBackEventReference in PageManager.
            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;

                x__doPostBack_internal();
            }
        }, 100);
    }


    function writeContentToIFrame(iframe, content) {
        // http://stackoverflow.com/questions/1477547/getelementbyid-contentdocument-error-in-ie
        // contentWindow is always there.
        if (iframe) {
            var doc = iframe.contentWindow.document;
            if (doc) {
                doc.open();
                doc.write(content);
                doc.close();
            }
        }
    }

    // 创建出错窗口
    function createErrorWindow(data) {
        // 如果是请求超时错误，则弹出简单提醒对话框
        if (data.isTimeout) {
            X.util.alert(X.ajax.timeoutErrorMsg);
            return;
        }

        // 如果响应正文为空，则弹出简单提醒对话框
        if (!data.responseText) {
            X.util.alert(String.format(X.ajax.errorMsg, data.statusText, data.status));
            return;
        }

        if (!X.ajax.errorWindow) {
            X.ajax.errorWindow = new Ext.Window({
                id: "FINEUI_ERROR",
                renderTo: window.body,
                width: 550,
                height: 350,
                border: true,
                animCollapse: true,
                collapsible: false,
                collapsed: false,
                closeAction: "hide",
                plain: false,
                modal: true,
                draggable: true,
                minimizable: false,
                minHeight: 100,
                minWidth: 200,
                resizable: true,
                maximizable: true,
                closable: true
            });
        }

        X.ajax.errorWindow.show();
        X.ajax.errorWindow.body.dom.innerHTML = X.wnd.createIFrameHtml('about:blank', 'FINEUI_ERROR');
        X.ajax.errorWindow.setTitle(String.format(X.ajax.errorMsg, data.statusText, data.status));
        writeContentToIFrame(X.ajax.errorWindow.body.query('iframe')[0], data.responseText);
    }

    // Ext.Ajax.serializeForm has a fault. The result will include type="submit" section, which is not always right.
    /*
    function serializeForm(form) {
    var originalStr = Ext.Ajax.serializeForm(form);
    for (var i = 0; i < form.elements.length; i++) {
    el = form.elements[i];
    if (el.type === 'submit') {
    var submitStr = encodeURIComponent(el.name) + '=' + encodeURIComponent(el.value);
    if (originalStr.indexOf(submitStr) == 0) {
    originalStr = originalStr.replace(submitStr, '');
    } else {
    originalStr = originalStr.replace('&' + submitStr, '');
    }
    }
    }
    return originalStr;
    }
    */

    // 序列化表单为 URL 编码字符串，除去 <input type="submit" /> 的按钮
    var extjsSerializeForm = Ext.lib.Ajax.serializeForm;
    Ext.lib.Ajax.serializeForm = function (form) {
        var el, originalStr = extjsSerializeForm(form);
        for (var i = 0; i < form.elements.length; i++) {
            el = form.elements[i];
            if (el.type === 'submit') {
                var submitStr = encodeURIComponent(el.name) + '=' + encodeURIComponent(el.value);
                if (originalStr.indexOf(submitStr) == 0) {
                    originalStr = originalStr.replace(submitStr, '');
                } else {
                    originalStr = originalStr.replace('&' + submitStr, '');
                }
            }
        }
        return originalStr;
    };


    function getXState() {
        var state = {};
        Ext.ComponentMgr.all.each(function (cmp, index) {
            if (cmp.isXType) {
                // x_props store the properties which has been changed on server-side or client-side.
                // Every FineUI control should has this property.
                var xstate = cmp['x_state'];
                if (xstate && Ext.isObject(xstate)) {
                    var cmpState = getXStateViaCmp(cmp, xstate);
                    if (!X.util.isObjectEmpty(cmpState)) {
                        state[cmp.id] = cmpState;
                    }
                }
            }
        });
        return state;
    }

    X.ajax.getXState = getXState;

    function getXStateViaCmp(cmp, xstate) {
        var state = {};

        Ext.apply(state, xstate);

        function saveInHiddenField(property, currentValue) {
            // Save this client-changed property in a form hidden field. 
            X.util.setHiddenFieldValue(cmp.id + '_' + property, currentValue);
        }
        function removeHiddenField(property) {
            X.util.removeHiddenField(cmp.id + '_' + property);
        }

        // 如果存在Gzip压缩的属性，就删除原来的属性
        function resolveGZProperty(property) {
            var gzProperty = property + '_GZ';
            if (state[gzProperty]) {
                delete state[property];
            } else {
                delete state[gzProperty];
            }
        }



        // 有些属性可以在客户端改变，因此需要在每个请求之前计算
        if (cmp.isXType('menucheckitem')) {
            saveInHiddenField('Checked', cmp.checked);
        }

        if (cmp.isXType('panel')) {
            saveInHiddenField('Collapsed', cmp.collapsed);
        }

        if (cmp.isXType('datepicker')) {
            saveInHiddenField('SelectedDate', cmp.getValue().format(cmp.initialConfig.format));
        }

        if (cmp.isXType('button')) {
            if (cmp.initialConfig.enableToggle) {
                saveInHiddenField('Pressed', cmp.pressed);
            }
        }

        if (cmp.isXType('grid')) {

            if (cmp.isXType('editorgrid')) {
                // 可编辑单元格的表格
                // 选中单元格
                saveInHiddenField('SelectedCell', cmp.x_getSelectedCell().join(','));

                // 新增行
                var newAddedRows = cmp.x_getNewAddedRows();
                if (newAddedRows.length > 0) {
                    saveInHiddenField('NewAddedRows', newAddedRows.join(','));
                } else {
                    removeHiddenField('NewAddedRows');
                }

                // 修改的数据
                var modifiedData = cmp.x_getModifiedData();
                if (modifiedData.length > 0) {
                    saveInHiddenField('ModifiedData', Ext.encode(modifiedData));
                } else {
                    removeHiddenField('ModifiedData');
                }

            } else {
                // 普通的表格
                // 选中行索引列表
                saveInHiddenField('SelectedRowIndexArray', cmp.x_getSelectedRows().join(','));
            }

            // 删除的行索引列表
            var deletedRows = cmp.x_getDeletedRows();
            if (deletedRows.length > 0) {
                saveInHiddenField('DeletedRows', deletedRows.join(','));
            } else {
                removeHiddenField('DeletedRows');
            }

            // 隐藏的列索引列表
            var gridHiddenColumns = cmp.x_getHiddenColumns();
            if (gridHiddenColumns.length > 0) {
                saveInHiddenField('HiddenColumnIndexArray', gridHiddenColumns.join(','));
            } else {
                removeHiddenField('HiddenColumnIndexArray');
            }

            // 目前States仅用于CheckBoxField
            var gridStates = cmp.x_getStates();
            if (gridStates.length > 0) {
                saveInHiddenField('States', Ext.encode(gridStates));
            } else {
                removeHiddenField('States');
            }

            // 如果存在 GZIPPED 的属性，就用 GZIPPED 属性
            resolveGZProperty('X_Rows');
        }

        if (cmp.isXType('combo') || cmp.isXType('checkboxgroup') || cmp.isXType('radiogroup')) {

            // 如果存在 GZIPPED 的属性，就用 GZIPPED 属性
            resolveGZProperty('X_Items');
        }

        if (cmp.isXType('field')) {

            // 如果存在 GZIPPED 的属性，就用 GZIPPED 属性
            resolveGZProperty('Text');
        }

        if (cmp.isXType('treepanel')) {
            saveInHiddenField('ExpandedNodes', cmp.x_getExpandedNodes(cmp.getRootNode().childNodes).join(','));
            saveInHiddenField('CheckedNodes', cmp.x_getCheckedNodes().join(','));
            saveInHiddenField('SelectedNodeIDArray', cmp.x_getSelectedNodes().join(','));

            // 如果存在 GZIPPED 的属性，就用 GZIPPED 属性
            resolveGZProperty('X_Nodes');
        }

        if (cmp.isXType('tabpanel')) {
            saveInHiddenField('ActiveTabIndex', cmp.x_getActiveTabIndex());
        }

        if (cmp['x_type']) {
            if (cmp['x_type'] === 'tab') {
                saveInHiddenField('Hidden', cmp.tabEl.style.display === 'none');
            }
        }

        //        if (cmp.isXType('combo')) {
        //            saveInHiddenField('SelectedValue', cmp.getValue());
        //        }

        return state;
    }



    // 显示“正在载入...”的提示信息
    function _showAjaxLoading(ajaxLoadingType) {
        if (_requestCount > 0) {

            if (ajaxLoadingType === "default") {
                X.ajaxLoadingDefault.setStyle('left', (Ext.getBody().getWidth() - X.ajaxLoadingDefault.getWidth()) / 2 + 'px');
                X.ajaxLoadingDefault.show();
            } else {
                X.ajaxLoadingMask.show();
            }

        }
    }

    // 隐藏“正在载入...”的提示信息
    function _hideAjaxLoading(ajaxLoadingType) {
        if (_requestCount <= 0) {
            _requestCount = 0;

            if (ajaxLoadingType === "default") {
                X.ajaxLoadingDefault.hide();
            } else {
                X.ajaxLoadingMask.hide();
            }

        }
    }

    // 当前 Ajax 的并发请求数
    var _requestCount = 0;

    // 发起 Ajax 请求之前事件处理
    Ext.Ajax.on('beforerequest', function (conn, options) {
        _requestCount++;

        if (!enableAjaxLoading()) {
            // Do nothing
        } else {
            Ext.defer(_showAjaxLoading, 100, window, [ajaxLoadingType()]);
        }
    });

    // Ajax 请求结束
    Ext.Ajax.on('requestcomplete', function (conn, options) {
        _requestCount--;

        if (!enableAjaxLoading()) {
            // ...
        } else {
            Ext.defer(_hideAjaxLoading, 100, window, [ajaxLoadingType()]);
        }
        X.control_enable_ajax_loading = undefined;
        X.control_ajax_loading_type = undefined;
    });

    // Ajax 请求发生异常
    Ext.Ajax.on('requestexception', function (conn, options) {
        _requestCount--;

        if (!enableAjaxLoading()) {
            // ...
        } else {
            Ext.defer(_hideAjaxLoading, 100, window, [ajaxLoadingType()]);
        }
        X.control_enable_ajax_loading = undefined;
        X.control_ajax_loading_type = undefined;
    });






    //        // 不适用于所有Extjs控件（比如Toolbar中放置按钮，这个按钮就没有ownerCt对象）
    //        // 更新一个Javascript对象
    //        updateObject: function(obj, newObjFunction, renderImmediately) {
    //            var id = obj.id;
    //            if (Ext.type(renderImmediately) == 'boolean' && !renderImmediately) {

    //                // 1.取得父容器
    //                var owner = obj.ownerCt;
    //                // 2.本控件在父容器的位置
    //                var insertIndex = owner.items.indexOf(obj);
    //                // 3.从父容器中销毁此控件
    //                owner.remove(obj);
    //                // 4.创建新的控件
    //                newObjFunction();
    //                // 5.将新的控件添加到删除的位置
    //                owner.insert(insertIndex, Ext.getCmp(id));
    //                // 6.父容器重新布局
    //                owner.doLayout();

    //            }
    //            else {

    //                // 1.销毁此控件
    //                obj.destroy();
    //                // 2.新建此控件
    //                newObjFunction();
    //            }
    //        }

})();