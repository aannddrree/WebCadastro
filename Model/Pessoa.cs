﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Pessoa
    {
        #region Propriedades

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Telefone { get; set; }

        public Cidade Cidade { get; set; }
 
        #endregion
    }
}
