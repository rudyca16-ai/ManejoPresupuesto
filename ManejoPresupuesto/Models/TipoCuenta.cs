using ManejoPresupuesto.Validaciones;
using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ManejoPresupuesto.Models
{
    public class TipoCuenta
    {
        [Column("id")]
        public int Id { get; set; }

        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [PrimeraLetraMayuscula]
        [Remote(action: "VerificarExisteTipoCuenta", controller: "TiposCuentas")]
        //[StringLength(maximumLength: 50, MinimumLength =3, ErrorMessage = "La longitud del campo {0} debe estar entre {2} y {1}")]
        [Column("nombre")]
        public string Nombre { get; set; }

        [Column("usuario_id")]
        public int UsuarioId { get; set; }

        [Column("orden")]
        public int Orden { get; set; }
    }
}
