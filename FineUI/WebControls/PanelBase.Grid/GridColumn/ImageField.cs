
#region Comment

/*
 * Project£º    FineUI
 * 
 * FileName:    ImageField.cs
 * CreatedOn:   2008-05-28
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description£º
 *      ->
 *   
 * History£º
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
using System.Web.UI.WebControls;
using System.Globalization;
using System.Reflection;


namespace FineUI
{
    /// <summary>
    /// ±í¸ñÍ¼Æ¬ÁÐ
    /// </summary>
    [ToolboxItem(false)]
    [ParseChildren(true)]
    [PersistChildren(false)]
    public class ImageField : BaseField
    {

        #region Properties


        private string _dataImageUrlField = String.Empty;

        /// <summary>
        /// Í¼Æ¬µØÖ·×Ö¶Î
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("Í¼Æ¬µØÖ·×Ö¶Î")]
        public string DataImageUrlField
        {
            get
            {
                return _dataImageUrlField;
            }
            set
            {
                _dataImageUrlField = value;
            }
        }



        private string _dataImageUrlFormatString = String.Empty;

        /// <summary>
        /// Í¼Æ¬µØÖ·×Ö¶Î¸ñÊ½»¯×Ö·û´®
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("Í¼Æ¬µØÖ·×Ö¶Î¸ñÊ½»¯×Ö·û´®")]
        public string DataImageUrlFormatString
        {
            get
            {
                return _dataImageUrlFormatString;
            }
            set
            {
                _dataImageUrlFormatString = value;
            }
        }


        private Unit _imageWidth = Unit.Empty;

        /// <summary>
        /// Í¼Æ¬µÄ¿í¶È
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(typeof(Unit), "")]
        [Description("Í¼Æ¬µÄ¿í¶È")]
        public Unit ImageWidth
        {
            get
            {
                return _imageWidth;
            }
            set
            {
                _imageWidth = value;
            }
        }

        private Unit _imageHeight = Unit.Empty;

        /// <summary>
        /// Í¼Æ¬µÄ¸ß¶È
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(typeof(Unit), "")]
        [Description("Í¼Æ¬µÄ¸ß¶È")]
        public Unit ImageHeight
        {
            get
            {
                return _imageHeight;
            }
            set
            {
                _imageHeight = value;
            }
        }

        #endregion

        #region Methods

        internal override string GetColumnValue(GridRow row)
        {
            string result = String.Empty;

            if (!String.IsNullOrEmpty(DataImageUrlField))
            {
                object value = row.GetPropertyValue(DataImageUrlField);
                string imageUrl = String.Empty;

                if (value != null)
                {
                    if (!String.IsNullOrEmpty(DataImageUrlFormatString))
                    {
                        imageUrl = String.Format(DataImageUrlFormatString, value);
                    }
                    else
                    {
                        imageUrl = value.ToString();
                    }
                }

                string cssStr = String.Empty;
                if (ImageWidth != Unit.Empty)
                {
                    cssStr += String.Format("width:{0}px;", ImageWidth.Value);
                }
                if (ImageHeight != Unit.Empty)
                {
                    cssStr += String.Format("height:{0}px;", ImageHeight.Value);
                }

                result = String.Format("<img src=\"{0}\" style=\"border-width: 0px;{1}\"/>", Grid.ResolveUrl(imageUrl), cssStr);
            }

            string tooltip = GetTooltipString(row);
            if (!String.IsNullOrEmpty(tooltip))
            {
                result = result.ToString().Insert(4, tooltip);
            }

            return result;
        }


        //public override string GetFieldType()
        //{
        //    return "string";
        //}

        #endregion

    }
}



