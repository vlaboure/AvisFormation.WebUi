﻿using AvisFormation.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AvisFormation.WebUi.Models
{
    public class SaveCommentViewModel
    {
        public string NomSeo { get;  set; }
        public string Commentaire { get;  set; }
        public string Nom { get;  set; }
        public string Note { get;  set; }
    }
}