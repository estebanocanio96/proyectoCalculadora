using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoCalculadora
{
    public partial class calculadora1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calculateButton_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(TextBox1.Text);
            double num2 = Convert.ToDouble(TextBox2.Text);

            string operacion = DropDownList1.SelectedValue;
            double resultado = 0;

            switch (operacion)
            {
                case "sumar":
                    resultado = num1 + num2;
                    break;
                case "restar":
                    resultado = num1 - num2;
                    break;
                case "multiplicar":
                    resultado = num1 * num2;
                    break;
                case "dividir":
                    if (num2 != 0)
                    {
                        resultado = num1 / num2;
                    }
                    else
                    {
                        resultLabel.Text = "No se puede dividir por cero.";
                        return; 
                    }
                    break;
     
            }

            resultLabel.Text = $"Resultado: {resultado}";
        }
    }
}