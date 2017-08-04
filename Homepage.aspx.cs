﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using AjaxControlToolkit;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public class SlideService : System.Web.Services.WebService
    {
        [WebMethod]
        [ScriptMethod]
        public AjaxControlToolkit.Slide[] GetSlides()
        {
            List<Slide> slides = new List<Slide>();
            string path = HttpContext.Current.Server.MapPath("~/adimages/");
            if (path.EndsWith("\\"))
            {
                path = path.Remove(path.Length - 1);
            }
            Uri pathUri = new Uri(path, UriKind.Absolute);
            string[] files = Directory.GetFiles(path);
            foreach (string file in files)
            {
                Uri filePathUri = new Uri(file, UriKind.Absolute);
                slides.Add(new Slide
                {
                    Name = Path.GetFileNameWithoutExtension(file),
                    Description = Path.GetFileNameWithoutExtension(file) + " Description.",
                    ImagePath = pathUri.MakeRelativeUri(filePathUri).ToString()
                });
            }
            return slides.ToArray();
        }
    }

}
