﻿using AvisFormation.Data;
using AvisFormation.WebUi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AvisFormation.WebUi.Controllers
{
    public class HomeController : Controller
    {        
        public ActionResult Accueil()
        {
            var vm = new AccueilViewModel();
            using (var context = new AvisEntities())
            {
                var listFormation = context.Formation.OrderBy(x => Guid.NewGuid()).Take(4).ToList();
                foreach (var f in listFormation)
                {
                    var dto = new FormationAvecAvisDto();
                    dto.Formation = f;
                    if (f.Avis.Count == 0)
                        dto.Note = 0;
                    else
                        dto.Note = Math.Round(f.Avis.Average(a => a.Note), 2);
                    vm.ListFormations.Add(dto);
                }
            }
            return View(vm);
        }
        [Authorize]
        public ActionResult TestAuthentication()
        {
            return View();
        }

    }
}