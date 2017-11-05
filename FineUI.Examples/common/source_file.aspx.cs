using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FineUI.Examples
{
    public partial class source_file : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string file = Request.QueryString["file"].ToLower();

                // 不是网站根目录下的文件
                if (!UnderRootPath(file))
                {
                    return;
                }


                // 不允许下载文件的目录
                string basePath = GetBasePath(file);
                List<string> disallowPaths = new List<string> { "bin", "obj", "upload", "res", "Properties" };
                if (disallowPaths.Contains(basePath))
                {
                    return;
                }


                // 只能下载指定类型文件
                string fileType = GetFileType(file);
                List<string> allowFileTypes = new List<string> { "aspx", "ascx", "master", "ashx", "cs", "xml" };
                if (!allowFileTypes.Contains(fileType))
                {
                    return;
                }
            
                
                string content = File.ReadAllText(Server.MapPath(file));

                if (!String.IsNullOrEmpty(file))
                {
                    string language = "ASPX";
                    string fileName = file.ToLower();
                    if (fileName.EndsWith(".aspx"))
                    {
                        language = "ASPX";
                    }
                    else if (fileName.EndsWith(".cs"))
                    {
                        language = "C#";
                    }
                    else if (fileName.EndsWith(".config") || fileName.EndsWith(".sitemap") || fileName.EndsWith(".xml"))
                    {
                        language = "XML";
                    }
                    else if (fileName.EndsWith(".css"))
                    {
                        language = "CSS";
                    }
                    else if (fileName.EndsWith(".js"))
                    {
                        language = "JavaScript";
                    }

                    SyntaxHighlighter1.Mode = Wilco.Web.SyntaxHighlighting.HighlightMode.Source;
                    SyntaxHighlighter1.Language = language;
                    SyntaxHighlighter1.Text = content;
                } 

            }
        }

        private bool UnderRootPath(string fileName)
        {
            string filePath = Server.MapPath(fileName);
            string rootPath = Server.MapPath("~/");

            return filePath.StartsWith(rootPath);
        }

        private string GetBasePath(string fileName)
        {
            string filePath = Server.MapPath(fileName);
            string rootPath = Server.MapPath("~/");

            string basePath = filePath.Substring(rootPath.Length);
            int slashIndex = basePath.IndexOf("\\");
            if (slashIndex >= 0)
            {
                basePath = basePath.Substring(0, slashIndex);
            }

            return basePath;
        }

        private string GetFileType(string fileName)
        {
            string fileType = String.Empty;

            int lastDotIndex = fileName.ToLower().LastIndexOf(".");
            if (lastDotIndex >= 0)
            {
                fileType = fileName.Substring(lastDotIndex + 1);
            }

            return fileType;
        }

    }
}
