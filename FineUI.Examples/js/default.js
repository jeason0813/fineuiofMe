
function onReady() {
    var btnExpandAll = Ext.getCmp(IDS.btnExpandAll);
    var btnCollapseAll = Ext.getCmp(IDS.btnCollapseAll);
    var mainMenu = Ext.getCmp(IDS.mainMenu);
    var mainTabStrip = Ext.getCmp(IDS.mainTabStrip);
    var windowSourceCode = Ext.getCmp(IDS.windowSourceCode);

	// 当前展开的手风琴面板
    function getExpandedPanel() {
        var panel = null;
        mainMenu.items.each(function (item) {
            if (!item.collapsed) {
                panel = item;
            }
        });
        return panel;
    }

    // 点击展开菜单
    btnExpandAll.on('click', function () {
        if (IDS.menuType == "menu") {
			// 左侧为树控件
            mainMenu.expandAll();
        } else {
			// 左侧为树控件+手风琴控件
            var expandedPanel = getExpandedPanel();
            if (expandedPanel) {
                expandedPanel.items.itemAt(0).expandAll();
            }
        }
    });

    // 点击折叠菜单
    btnCollapseAll.on('click', function () {
        if (IDS.menuType == "menu") {
			// 左侧为树控件
            mainMenu.collapseAll();
        } else {
			// 左侧为树控件+手风琴控件
            var expandedPanel = getExpandedPanel();
            if (expandedPanel) {
                expandedPanel.items.itemAt(0).collapseAll();
            }
        }
    });

    function createToolbar(tabConfig) {

        // 由工具栏上按钮获得当前标签页中的iframe节点
        function getCurrentIframeNode(button) {
            // 注意：button.ownerCt 是工具栏，button.ownerCt.ownerCt 就是当前激活的标签页。
            return Ext.DomQuery.selectNode('iframe', button.ownerCt.ownerCt.el.dom);
        }

        // 动态创建按钮
        var sourcecodeButton = new Ext.Button({
            text: "源代码",
            type: "button",
            cls: "x-btn-text-icon",
            icon: "./icon/page_white_code.png",
            listeners: {
                click: function (button, e) {
                    windowSourceCode.x_show('./common/source.aspx?files=' + getCurrentIframeNode(button).attributes['src'].value, '源代码');
                    e.stopEvent();
                }
            }
        });

        var openNewWindowButton = new Ext.Button({
            text: '新标签页中打开',
            type: "button",
            cls: "x-btn-text-icon",
            icon: "./icon/tab_go.png",
            listeners: {
                click: function (button, e) {
                    window.open(getCurrentIframeNode(button).src, "_blank");
                    e.stopEvent();
                }
            }
        });

        var refreshButton = new Ext.Button({
            text: '刷新',
            type: "button",
            cls: "x-btn-text-icon",
            icon: "./icon/reload.png",
            listeners: {
                click: function (button, e) {
                    getCurrentIframeNode(button).contentWindow.location.reload(); //.replace(href);
                    e.stopEvent();
                }
            }
        });

        var toolbar = new Ext.Toolbar({
            items: ['->', sourcecodeButton, '-', refreshButton, '-', openNewWindowButton]
        });
		
		tabConfig['tbar'] = toolbar;
    }


    // 初始化主框架中的树(或者Accordion+Tree)和选项卡互动，以及地址栏的更新
    // treeMenu： 主框架中的树控件实例，或者内嵌树控件的手风琴控件实例
	// mainTabStrip： 选项卡实例
	// addTabCallback： 创建选项卡前的回调函数（接受tabConfig参数）
	// updateLocationHash: 切换Tab时，是否更新地址栏Hash值
	// refreshWhenExist： 添加选项卡时，如果选项卡已经存在，是否刷新内部IFrame
	// refreshWhenTabChange: 切换选项卡时，是否刷新内部IFrame
    X.util.initTreeTabStrip(mainMenu, mainTabStrip, createToolbar, true, false, false);

	

    // 公开添加示例标签页的方法
    window.addExampleTab = function (id, url, text, icon, refreshWhenExist) {
		// 动态添加一个标签页
		// mainTabStrip： 选项卡实例
		// id： 选项卡ID
		// url: 选项卡IFrame地址 
		// text： 选项卡标题
		// icon： 选项卡图标
		// addTabCallback： 创建选项卡前的回调函数（接受tabConfig参数）
		// refreshWhenExist： 添加选项卡时，如果选项卡已经存在，是否刷新内部IFrame
        X.util.addMainTab(mainTabStrip, id, url, text, icon, null, refreshWhenExist);
    };

    window.removeActiveTab = function () {
        var activeTab = mainTabStrip.getActiveTab();
        mainTabStrip.removeTab(activeTab.id);
    };

}
