
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    TemplateField.cs
 * CreatedOn:   2008-05-27
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *      ->
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Text;
using System.Xml;
using System.Web;
using System.Web.UI;
using System.Globalization;
using System.Reflection;
using System.Web.UI.HtmlControls;
using System.IO;


namespace FineUI
{
    /// <summary>
    /// 表格模板列
    /// </summary>
    [ToolboxItem(false)]
    [ParseChildren(true)]
    [PersistChildren(false)]
    public class TemplateField : BaseField
    {
        #region Properties

        private ITemplate _itemTemplate;

        /// <summary>
        /// 模板容器
        /// </summary>
        [Browsable(false)]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [TemplateInstance(TemplateInstance.Single)]
        [TemplateContainer(typeof(GridRowControl))]
        [Description("模板容器")]
        public virtual ITemplate ItemTemplate
        {
            get
            {
                return _itemTemplate;
            }
            set
            {
                _itemTemplate = value;
            }
        }


        private bool _renderAsRowExpander = false;

        /// <summary>
        /// 是否渲染为行扩展列
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(false)]
        [Description("是否渲染为行扩展列")]
        public bool RenderAsRowExpander
        {
            get
            {
                return _renderAsRowExpander;
            }
            set
            {
                _renderAsRowExpander = value;
            }
        }

        #endregion

        #region GetColumnValue

        internal override string GetColumnValue(GridRow row)
        {
            GridRowControl control = row.TemplateContainers[ColumnIndex];
            
            return String.Format("{0}{1}", Grid.TEMPLATE_PLACEHOLDER_PREFIX, control.ID);
        }

        //public override string GetFieldType()
        //{
        //    return "string";
        //}

        #endregion

    }
}



