
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    ConfigSection.cs
 * CreatedOn:   2008-04-07
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *       
 * 
 * 
 * 
 * 
 */

#endregion


using System;
using System.Configuration;

namespace FineUI
{
    /// <summary>
    /// FineUI在Web.config中的配置节
    /// </summary>
    public class ConfigSection : ConfigurationSection
    {
        /// <summary>
        /// 主题
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.THEME, DefaultValue = ConfigPropertyValue.THEME_DEFAULT)]
        public string Theme
        {
            get
            {
                return (string)base[ConfigPropertyName.THEME];
            }
            set
            {
                base[ConfigPropertyName.THEME] = value;
            }
        }

        /// <summary>
        /// 语言
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.LANGUAGE, DefaultValue = ConfigPropertyValue.LANGUAGE_DEFAULT)]
        public string Language
        {
            get
            {
                return (string)base[ConfigPropertyName.LANGUAGE];
            }
            set
            {
                base[ConfigPropertyName.LANGUAGE] = value;
            }
        }

        /// <summary>
        /// 表单验证消息的提示位置
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.FROMMESSAGETARGET, DefaultValue = ConfigPropertyValue.FORM_MESSAGETARGET_DEFAULT)]
        public string FormMessageTarget
        {
            get
            {
                return (string)base[ConfigPropertyName.FROMMESSAGETARGET];
            }
            set
            {
                base[ConfigPropertyName.FROMMESSAGETARGET] = value;
            }
        }

        /// <summary>
        /// 表单控件右侧距离边界的距离
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.FORMOFFSETRIGHT, DefaultValue = ConfigPropertyValue.FORM_OFFSETRIGHT_DEFAULT)]
        public int FormOffsetRight
        {
            get
            {
                return (int)base[ConfigPropertyName.FORMOFFSETRIGHT];
            }
            set
            {
                base[ConfigPropertyName.FORMOFFSETRIGHT] = value;
            }
        }

        /// <summary>
        /// 表单控件标签的宽度
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.FORMLABELWIDTH, DefaultValue = ConfigPropertyValue.FORM_LABELWIDTH_DEFAULT)]
        public int FormLabelWidth
        {
            get
            {
                return (int)base[ConfigPropertyName.FORMLABELWIDTH];
            }
            set
            {
                base[ConfigPropertyName.FORMLABELWIDTH] = value;
            }
        }

        /// <summary>
        /// 表单控件标签的分隔符
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.FORMLABELSEPARATOR, DefaultValue = ConfigPropertyValue.FORM_LABELSEPARATOR_DEFAULT)]
        public string FormLabelSeparator
        {
            get
            {
                return (string)base[ConfigPropertyName.FORMLABELSEPARATOR];
            }
            set
            {
                base[ConfigPropertyName.FORMLABELSEPARATOR] = value;
            }
        }

        /// <summary>
        /// 启用AJAX
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ENABLEAJAX, DefaultValue = ConfigPropertyValue.ENABLE_AJAX_DEFAULT)]
        public bool EnableAjax
        {
            get
            {
                return (bool)base[ConfigPropertyName.ENABLEAJAX];
            }
            set
            {
                base[ConfigPropertyName.ENABLEAJAX] = value;
            }
        }

        /// <summary>
        /// 启用AJAX加载提示信息
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ENABLEAJAXLOADING, DefaultValue = ConfigPropertyValue.ENABLE_AJAX_LOADING_DEFAULT)]
        public bool EnableAjaxLoading
        {
            get
            {
                return (bool)base[ConfigPropertyName.ENABLEAJAXLOADING];
            }
            set
            {
                base[ConfigPropertyName.ENABLEAJAXLOADING] = value;
            }
        }

        /// <summary>
        /// AJAX提示信息的类型
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.AJAXLOADINGTYPE, DefaultValue = ConfigPropertyValue.AJAX_LOADING_TYPE_DEFAULT)]
        public string AjaxLoadingType
        {
            get
            {
                return (string)base[ConfigPropertyName.AJAXLOADINGTYPE];
            }
            set
            {
                base[ConfigPropertyName.AJAXLOADINGTYPE] = value;
            }
        }

        /// <summary>
        /// 客户端AJAX超时时间
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.AJAXTIMEOUT, DefaultValue = ConfigPropertyValue.AJAX_TIMEOUT_DEFAULT)]
        public int AjaxTimeout
        {
            get
            {
                return (int)base[ConfigPropertyName.AJAXTIMEOUT];
            }
            set
            {
                base[ConfigPropertyName.AJAXTIMEOUT] = value;
            }
        }

        /// <summary>
        /// 是否启用大字体（将ExtJS所有11px字体改为12px）
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ENABLEBIGFONT, DefaultValue = false)]
        public bool EnableBigFont
        {
            get
            {
                return (bool)base[ConfigPropertyName.ENABLEBIGFONT];
            }
            set
            {
                base[ConfigPropertyName.ENABLEBIGFONT] = value;
            }
        }

        /// <summary>
        /// 是否启用调试模式
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.DEBUGMODE, DefaultValue = false)]
        public bool DebugMode
        {
            get
            {
                return (bool)base[ConfigPropertyName.DEBUGMODE];
            }
            set
            {
                base[ConfigPropertyName.DEBUGMODE] = value;
            }
        }

        /// <summary>
        /// ExtJS文件夹所在的根目录
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.EXTJSBASEPATH, DefaultValue = ConfigPropertyValue.EXTJS_BASE_PATH_DEFAULT)]
        public string ExtjsBasePath
        {
            get
            {
                return (string)base[ConfigPropertyName.EXTJSBASEPATH];
            }
            set
            {
                base[ConfigPropertyName.EXTJSBASEPATH] = value;
            }
        }

        /// <summary>
        /// 图标所在的根目录
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ICONBASEPATH, DefaultValue = ConfigPropertyValue.ICON_BASE_PATH_DEFAULT)]
        public string IconBasePath
        {
            get
            {
                return (string)base[ConfigPropertyName.ICONBASEPATH];
            }
            set
            {
                base[ConfigPropertyName.ICONBASEPATH] = value;
            }
        }

        /// <summary>
        /// 自定义主题所在的根目录
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.CUSTOMTHEMEBASEPATH, DefaultValue = ConfigPropertyValue.CUSTOM_THEME_BASE_PATH_DEFAULT)]
        public string CustomThemeBasePath
        {
            get
            {
                return (string)base[ConfigPropertyName.CUSTOMTHEMEBASEPATH];
            }
            set
            {
                base[ConfigPropertyName.CUSTOMTHEMEBASEPATH] = value;
            }
        }

        /// <summary>
        /// 自定义主题名称
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.CUSTOMTHEME, DefaultValue = ConfigPropertyValue.CUSTOM_THEME_DEFAULT)]
        public string CustomTheme
        {
            get
            {
                return (string)base[ConfigPropertyName.CUSTOMTHEME];
            }
            set
            {
                base[ConfigPropertyName.CUSTOMTHEME] = value;
            }
        }

        /// <summary>
        /// 是否启用XState压缩（默认为true）
        /// </summary>
        [ConfigurationProperty(ConfigPropertyName.ENABLEXSTATECOMPRESS, DefaultValue = ConfigPropertyValue.ENABLE_XSTATE_COMPRESS)]
        public bool EnableXStateCompress
        {
            get
            {
                return (bool)base[ConfigPropertyName.ENABLEXSTATECOMPRESS];
            }
            set
            {
                base[ConfigPropertyName.ENABLEXSTATECOMPRESS] = value;
            }
        }

    }
}
