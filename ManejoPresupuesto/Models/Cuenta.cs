using ManejoPresupuesto.Validaciones;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ManejoPresupuesto.Models
{
    public class Cuenta
    {
        [Column("id")]
        public int Id { get; set; }
        [Required(ErrorMessage = "El campo {0} es requerido")]
        [StringLength(maximumLength: 50)]
        [PrimeraLetraMayuscula]
        [Column("nombre")]
        public string Nombre { get; set; }
        [Display(Name = "Tipo Cuenta")]
        [Column("tipo_cuenta_id")]
        public int TipoCuentaId { get; set; }
        [Column("balance")]
        public decimal Balance { get; set; }
        [StringLength(maximumLength: 1000)]
        [Column("descripcion")]
        public string Descripcion { get; set; }
        [Column("tipo_cuenta")]
        public string TipoCuenta { get; set; }
    }
}