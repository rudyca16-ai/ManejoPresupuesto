using System.ComponentModel.DataAnnotations.Schema;

namespace ManejoPresupuesto.Models
{
    public class IndiceCuentasViewModel
    {
        [Column("tipo_cuenta")]
        public string TipoCuenta { get; set; }
        [Column("cuentas")]
        public IEnumerable<Cuenta> Cuentas { get; set; }
        public decimal Balance => Cuentas.Sum(x => x.Balance);
    }
}