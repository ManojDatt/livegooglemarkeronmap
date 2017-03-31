/**
 * Created by developer on 1/10/2017.
 */
$(document).ready(function () {

    // validate the configuracion form when it is submitted
    $("#new_configuracione").validate({
        rules: {
            "configuracione[Llave]": "required",
            "configuracione[Valor]": "required",
            "configuracione[Descripcion]": "required"
        },
        messages: {
            "configuracione[Llave]": "Llave Requerido",
            "configuracione[Valor]": "Valor Requerido",
            "configuracione[Descripcion]": "Descripcion Requerido"
        }
    });
    // validate the configuracion form when it is submitted
    $('[id^=edit_configuracione]').validate({
        rules: {
            "configuracione[Llave]": "required",
            "configuracione[Valor]": "required",
            "configuracione[Descripcion]": "required"
        },
        messages: {
            "configuracione[Llave]": "Llave Requerido",
            "configuracione[Valor]": "Valor Requerido",
            "configuracione[Descripcion]": "Descripcion Requerido"
        }
    });

// validate the pai form when it is submitted
    $("#new_pai").validate({
        rules: {
            "pai[PA_DESCRIPCION]": "required",
            "pai[CODIGOINT]": "required"
        },
        messages: {
            "pai[PA_DESCRIPCION]": "Pais Requerido",
            "pai[CODIGOINT]": "Codigi Int. Requerido"
        }
    });

// validate the pai form when it is submitted
    $('[id^=edit_pai]').validate({
        rules: {
            "pai[PA_DESCRIPCION]": "required",
            "pai[CODIGOINT]": "required"
        },
        messages: {
            "pai[PA_DESCRIPCION]": "Pais Requerido",
            "pai[CODIGOINT]": "Codigi Int. Requerido"
        }
    });
    // validate the estado form when it is submitted
    $("#new_estado").validate({
        rules: {
            "estado[EDO_DESCRIPCION]": "required",
            "estado[ABREVIATURA]": "required",
            "estado[PKPAIS]": "required"
        },
        messages: {
            "estado[EDO_DESCRIPCION]": "Estado Requerido",
            "estado[ABREVIATURA]": "Abreviatura Requerido",
            "estado[PKPAIS]": "Pais Requerido."
        }
    });

    // validate the estado form when it is submitted
    $('[id^=edit_estado]').validate({
        rules: {
            "estado[EDO_DESCRIPCION]": "required",
            "estado[ABREVIATURA]": "required",
            "estado[PKPAIS]": "required"
        },
        messages: {
            "estado[EDO_DESCRIPCION]": "Estado Requerido",
            "estado[ABREVIATURA]": "Abreviatura Requerido",
            "estado[PKPAIS]": "Pais Requerido."
        }
    });
    // validate the ciudad form when it is submitted
    $("#new_ciudade").validate({
        rules: {
            "ciudade[CD_NOMBRE]": "required",
            "ciudade[PKESTADO]": "required",
            "ciudade[CD_KM]": "required"
        },
        messages: {
            "ciudade[CD_NOMBRE]": "Ciudad Requerido",
            "ciudade[PKESTADO]": "Estado Requerido",
            "ciudade[CD_KM]": "Kilometors Requerido"
        }
    });

    // validate the ciudad form when it is submitted
    $('[id^=edit_ciudade]').validate({
        rules: {
            "ciudade[CD_NOMBRE]": "required",
            "ciudade[PKESTADO]": "required",
            "ciudade[CD_KM]": "required"
        },
        messages: {
            "ciudade[CD_NOMBRE]": "Ciudad Requerido",
            "ciudade[PKESTADO]": "Estado Requerido",
            "ciudade[CD_KM]": "Kilometors Requerido"
        }
    });

    $("#new_sub_marca").validate({
        rules: {
            "sub_marca[SUB_DESCRIPCION]": "required",
            "sub_marca[PKMARCA]": "required",
            "sub_marca[PKTIPO_AUTO]": "required"
        },
        messages: {
            "sub_marca[SUB_DESCRIPCION]": "Sub Marca Requerido",
            "sub_marca[PKMARCA]": "Marca Requerido",
            "sub_marca[PKTIPO_AUTO]": "Tipo De Vehiculo Requerido."
        }
    });

    $('[id^=edit_sub_marca]').validate({
        rules: {
            "sub_marca[SUB_DESCRIPCION]": "required",
            "sub_marca[PKMARCA]": "required",
            "sub_marca[PKTIPO_AUTO]": "required"
        },
        messages: {
            "sub_marca[SUB_DESCRIPCION]": "Sub Marca Requerido",
            "sub_marca[PKMARCA]": "Marca Requerido",
            "sub_marca[PKTIPO_AUTO]": "Tipo De Vehiculo Requerido."
        }
    });
    $("#new_role").validate({
        rules: {
            "role[name]": "required"
        },
        messages: {
            "role[name]": "Rol Requerido"
        }
    });

    $('[id^=edit_role]').validate({
        rules: {
            "role[name]": "required"
        },
        messages: {
            "role[name]": "Rol Requerido"
        }
    });
    $("#new_marca").validate({
        rules: {
            "marca[MAR_DESCRIPCION]": "required"
        },
        messages: {
            "marca[MAR_DESCRIPCION]": "Marca Requerido"
        }
    });

    $('[id^=edit_marca]').validate({
        rules: {
            "marca[MAR_DESCRIPCION]": "required"
        },
        messages: {
            "marca[MAR_DESCRIPCION]": "Marca Requerido"
        }
    });
    $("#new_tipo_vehiculo").validate({
        rules: {
            "tipo_vehiculo[TAUT_DESCRIPCION]": "required",
            "tipo_vehiculo[TAUT_CATEGORIA]": "required"
        },
        messages: {
            "tipo_vehiculo[TAUT_DESCRIPCION]": "Tipo De Vehiculo Requerido",
            "tipo_vehiculo[TAUT_CATEGORIA]": "Categoria Requerido"
        }
    });

    $('[id^=edit_tipo_vehiculo]').validate({
        rules: {
            "tipo_vehiculo[TAUT_DESCRIPCION]": "required",
            "tipo_vehiculo[TAUT_CATEGORIA]": "required"
        },
        messages: {
            "tipo_vehiculo[TAUT_DESCRIPCION]": "Tipo De Vehiculo Requerido",
            "tipo_vehiculo[TAUT_CATEGORIA]": "Categoria Requerido"
        }
    });

    $("#new_admin").validate({
        rules: {
            "admin[email]": "required",
            "admin[password]": "required",
            "admin[password_confirmation]": "required"
        },
        messages: {
            "admin[email]": "Usuario Requerido",
            "admin[password]": "Contrasena Requerido",
            "admin[password_confirmation]": "Confirmar Contrasena Requerido."
        }
    });


$("#new_colore").validate({
        rules: {
            "colore[COL_DESCRIPCION]": "required"
        },
        messages: {
            "colore[COL_DESCRIPCION]": "Color Requerido"
        }
    });

    $('[id^=edit_colore]').validate({
        rules: {
            "colore[COL_DESCRIPCION]": "required"
        },
        messages: {
            "colore[COL_DESCRIPCION]": "Color Requerido"
        }
    });


$("#new_combustible").validate({
        rules: {
            "combustible[COM_FINICIO]": "required",
            "combustible[COM_FFIN]": "required",
            "combustible[COM_DESCRIPCION]": "required",
            "combustible[COM_PRECIO]": "required",
            "ShowCOM[FINICIO]": "required",
            "ShowCOM[FFIN]": "required"

        },
        messages: {
            "combustible[COM_FINICIO]": "Fecha Inicio Requerido",
            "combustible[COM_FFIN]": "Fecha Fin Requerido",
            "combustible[COM_DESCRIPCION]": "COMBUSTIBLE Requerido",
             "combustible[COM_PRECIO]": "PRECIO Requerido",
             "ShowCOM[FINICIO]": "Fecha Inicio Requerido",
             "ShowCOM[FFIN]": "Fecha Fin Requerido"
        }
    });
    // validate the configuracion form when it is submitted
    $('[id^=edit_combustible]').validate({
        rules: {
            "combustible[COM_FINICIO]": "required",
            "combustible[COM_FFIN]": "required",
            "combustible[COM_DESCRIPCION]": "required",
            "combustible[COM_PRECIO]": "required",
             "ShowCOM[FINICIO]": "required",
            "ShowCOM[FFIN]": "required"
        },
        messages: {
            "combustible[COM_FINICIO]": "Fecha Inicio Requerido",
            "combustible[COM_FFIN]": "Fecha Fin Requerido",
            "combustible[COM_DESCRIPCION]": "COMBUSTIBLE Requerido",
             "combustible[COM_PRECIO]": "PRECIO Requerido",
             "ShowCOM[FINICIO]": "Fecha Inicio Requerido",
             "ShowCOM[FFIN]": "Fecha Fin Requerido"
        }
    });





    $("#new_empresa").validate({
        rules: {
            "empresa[EMP_NOMBRE_COMERCIAL]": "required",
            "empresa[EMP_TIPO]": "required",
            "empresa[EMP_RAZON_SOCIAL]": "required",
            "empresa[EMP_RFC]": "required",
            "empresa[EMP_PKESTADO]": "required",
            "empresa[EMP_PKCIUDAD]": "required"

        },
        messages: {
            "empresa[EMP_NOMBRE_COMERCIAL]": "Nombre Comercial Requerido",
            "empresa[EMP_TIPO]": "Tipo de Empresas Requerido",
            "empresa[EMP_RAZON_SOCIAL]": "Razon Social Requerido",
             "empresa[EMP_RFC]": "RFC Requerido",
             "empresa[EMP_PKESTADO]": "Estado Requerido",
             "empresa[EMP_PKCIUDAD]": "Ciudad Requerido"
        }
    });
    // validate the configuracion form when it is submitted
    $('[id^=edit_empresa]').validate({
        rules: {
            "empresa[EMP_NOMBRE_COMERCIAL]": "required",
            "empresa[EMP_TIPO]": "required",
            "empresa[EMP_RAZON_SOCIAL]": "required",
            "empresa[EMP_RFC]": "required",
            "empresa[EMP_PKESTADO]": "required",
            "empresa[EMP_PKCIUDAD]": "required"

        },
        messages: {
            "empresa[EMP_NOMBRE_COMERCIAL]": "Nombre Comercial Requerido",
            "empresa[EMP_TIPO]": "Tipo de Empresas Requerido",
            "empresa[EMP_RAZON_SOCIAL]": "Razon Social Requerido",
             "empresa[EMP_RFC]": "RFC Requerido",
             "empresa[EMP_PKESTADO]": "Estado Requerido",
             "empresa[EMP_PKCIUDAD]": "Ciudad Requerido"
        }
    });

    $.AdminLTE.dinamicMenu = function() {
        var url = window.location;
        // Will only work if string in href matches with location
        $('.treeview-menu li a[href="' + url + '"]').parent().addClass('active');
        // Will also work for relative and absolute hrefs
        $('.treeview-menu li a').filter(function() {
            return this.href == url;
        }).parent().parent().parent().addClass('active');

        $('.treeview-menu li a').filter(function() {
            return this.href == url;
        }).parent().parent().addClass('active');

        $('.treeview-menu li a').filter(function() {
            return this.href == url;
        }).parent().addClass('active');

        if(url.toString().indexOf("dashboard") >= 1)
        {
            $('.dashboard').addClass('active');
        }
    };

    $.AdminLTE.dinamicMenu();

if ($("#notice").html()=='') {

$("#notice").hide();


}

    setTimeout(function(){

$("#notice").fadeOut(10000);

    });





    $("#new_cliente").validate({
        rules: {
            "cliente[NOMBRE]": "required",
            "cliente[DOMICILIO]": "required",
            "cliente[COLONIA]": "required",
            "cliente[RFC]": "required",
            "cliente[PKESTADO]": "required",
            "cliente[PKCIUDAD]": "required",
            "cliente[CP]": "required",
            "cliente[CONTACTO_TELEFONO1]": "required",
            "cliente[IVA_PORCENTAJE]": "required",
            "cliente[RETENCION_IVA_PORCENTAJE]": "required",
            "cliente[PKLISTA]": "required"
        },
        messages: {
            "cliente[NOMBRE]": "NOMBRE O RAZON SOCIAL Requerido",
            "cliente[DOMICILIO]": "DOMICILIO Requerido",
             "cliente[COLONIA]": "COLONIA Requerido",
            "cliente[RFC]": "RFC Requerido",
             "cliente[PKESTADO]": "ESTADO Requerido",
            "cliente[PKCIUDAD]": "CIUDAD Requerido",
             "cliente[CP]": "CP Requerido",
            "cliente[CONTACTO_TELEFONO1]": "TELEFONO DE CONTACTO 1 Requerido",

            "cliente[IVA_PORCENTAJE]": "%IVA Requerido",
             "cliente[RETENCION_IVA_PORCENTAJE]": "%RETENCION IVA",
              "cliente[PKLISTA]": "Lista de Precios Requerido"
        }
    });


 $("[id^=edit_cliente]").validate({
        rules: {
            "cliente[NOMBRE]": "required",
            "cliente[DOMICILIO]": "required",
            "cliente[COLONIA]": "required",
            "cliente[RFC]": "required",
            "cliente[PKESTADO]": "required",
            "cliente[PKCIUDAD]": "required",
            "cliente[CP]": "required",
            "cliente[CONTACTO_TELEFONO1]": "required",
            "cliente[IVA_PORCENTAJE]": "required",
            "cliente[RETENCION_IVA_PORCENTAJE]": "required"
        },
        messages: {
            "cliente[NOMBRE]": "NOMBRE O RAZON SOCIAL Requerido",
            "cliente[DOMICILIO]": "DOMICILIO Requerido",
             "cliente[COLONIA]": "COLONIA Requerido",
            "cliente[RFC]": "RFC Requerido",
             "cliente[PKESTADO]": "ESTADO Requerido",
            "cliente[PKCIUDAD]": "CIUDAD Requerido",
             "cliente[CP]": "CP Requerido",
            "cliente[CONTACTO_TELEFONO1]": "TELEFONO DE CONTACTO 1 Requerido",

            "cliente[IVA_PORCENTAJE]": "%IVA Requerido",
             "cliente[RETENCION_IVA_PORCENTAJE]": "%RETENCION IVA"
        }
    });


    $('[id^=edit_tipo_vehiculo]').validate({
        rules: {
            "tipo_vehiculo[TAUT_DESCRIPCION]": "required",
            "tipo_vehiculo[TAUT_CATEGORIA]": "required"
        },
        messages: {
            "tipo_vehiculo[TAUT_DESCRIPCION]": "Tipo De Vehiculo Requerido",
            "tipo_vehiculo[TAUT_CATEGORIA]": "Categoria Requerido"
        }
    });



$("#new_grua").validate({
        rules: {
            "grua[GR_CLAVE]": "required",
            "grua[PKCOMBUSTIBLE]": "required",
            "grua[PKMARCA]": "required",
            "grua[GR_DESCRIPCION]": "required",
            "grua[GR_MODELO]": "required",
            "grua[GR_MOTOR]": "required",
            "grua[GR_PLACAESTATAL]": "required",
            "grua[GR_TIPO]": "required",
            "grua[GR_CAPACIDAD]":"required",
            "grua[PKEMPRESA]":"required"
        },
        messages: {
            "grua[GR_CLAVE]": "Clave Requerido",
            "grua[PKCOMBUSTIBLE]": "Tipo Combustible Requerido",
            "grua[PKMARCA]": "Marca Requerido",
             "grua[GR_DESCRIPCION]": "Descripcion Requerido",
            "grua[GR_MODELO]": "Modelo Requerido",
             "grua[GR_MOTOR]": "Num. Motor Requerido",
            "grua[GR_PLACAESTATAL]": "Placa Estatal Requerido",
             "grua[GR_TIPO]": "Tipo de Gura Requerido",
             "grua[GR_CAPACIDAD]":"Capacidad (Ton) Requerido",
             "grua[PKEMPRESA]":"Empresa Requerido"

        }
    });


 $("[id^=edit_grua]").validate({
        rules: {
            "grua[GR_CLAVE]": "required",
            "grua[PKCOMBUSTIBLE]": "required",
            "grua[PKMARCA]": "required",
            "grua[GR_DESCRIPCION]": "required",
            "grua[GR_MODELO]": "required",
            "grua[GR_MOTOR]": "required",
            "grua[GR_PLACAESTATAL]": "required",
            "grua[GR_TIPO]": "required",
            "grua[GR_CAPACIDAD]":"required",
            "grua[PKEMPRESA]":"required",
            "grua[GR_ODOMETRO]":"required",
            "grua[GR_HOROMETRO]":"required"
        },
        messages: {
            "grua[GR_CLAVE]": "Clave Requerido",
            "grua[PKCOMBUSTIBLE]": "Tipo Combustible Requerido",
            "grua[PKMARCA]": "Marca Requerido",
             "grua[GR_DESCRIPCION]": "Descripcion Requerido",
            "grua[GR_MODELO]": "Modelo Requerido",
             "grua[GR_MOTOR]": "Num. Motor Requerido",
            "grua[GR_PLACAESTATAL]": "Placa Estatal Requerido",
             "grua[GR_TIPO]": "Tipo de Gura Requerido",
             "grua[GR_CAPACIDAD]":"Capacidad (Ton) Requerido",
             "grua[PKEMPRESA]":"Empresa Requerido",
              "grua[GR_HOROMETRO]":"Horometer Requerido"

        }
    });



$("#new_operadore").validate({
        rules: {
            "operadore[OP_CLAVE]": "required",
            "operadore[OP_ESTADO]": "required",
            "operadore[OP_INGRESO]": "required",
            "operadore[OP_DOMICILIO]": "required",
            "operadore[OP_LICESTATAL]": "required"

        },
        messages: {
            "operadore[OP_CLAVE]": "Clave Requerido",
            "operadore[OP_ESTADO]": "Status Requerido",
            "operadore[OP_INGRESO]": "Fecha de Ingreso Requerido",
             "operadore[OP_DOMICILIO]": "Direccion Requerido",
            "operadore[OP_LICESTATAL]": "Num. Lic Estatal Requerido"


        }
    });


 $("[id^=edit_operadore]").validate({
       rules: {
            "operadore[OP_CLAVE]": "required",
            "operadore[OP_ESTADO]": "required",
            "operadore[OP_INGRESO]": "required",
            "operadore[OP_DOMICILIO]": "required",
            "operadore[OP_LICESTATAL]": "required"

        },
        messages: {
            "operadore[OP_CLAVE]": "Clave Requerido",
            "operadore[OP_ESTADO]": "Status Requerido",
            "operadore[OP_INGRESO]": "Fecha de Ingreso Requerido",
             "operadore[OP_DOMICILIO]": "Direccion Requerido",
            "operadore[OP_LICESTATAL]": "Num. Lic Estatal Requerido"


        }
    });



$("#new_asignacione").validate({
        rules: {
            "ShowAS[FECHAINICIO]": "required",
            "ShowAS[FECHAFIN]": "required",
            "asignacione[PKGRUA]": "required",
            "asignacione[PKOPERADOR]": "required"

        },
        messages: {
            "ShowAS[FECHAINICIO]": "Fecha Inicio Requerido",
            "ShowAS[FECHAFIN]": "Fech Fin Requerido",
            "asignacione[PKGRUA]": "Grua Requerido",
             "asignacione[PKOPERADOR]": "Operador Requerido"
        }
    });


 $("[id^=edit_asignacione]").validate({
        rules: {
            "ShowAS[FECHAINICIO]": "required",
            "ShowAS[FECHAFIN]": "required",
            "asignacione[PKGRUA]": "required",
            "asignacione[PKOPERADOR]": "required"

        },
        messages: {
            "ShowAS[FECHAINICIO]": "Fecha Inicio Requerido",
            "ShowAS[FECHAFIN]": "Fech Fin Requerido",
            "asignacione[PKGRUA]": "Grua Requerido",
             "asignacione[PKOPERADOR]": "Operador Requerido"
        }
    });






$("[id^=new_depositos_inventario]").validate({
        rules: {
            "depositos_inventario[INV_NUMORDEN]": "required",
            "depositos_inventario[PKTIPO_AUTO]": "required",
            "ShowINV[FDETENCION]": "required",
           "depositos_inventario[PKDEPOSITO]": "required",
            "depositos_inventario[PKMARCA]": "required",
            "depositos_inventario[PKSUBMARCA]": "required",
            "depositos_inventario[PKCOLOR]": "required",
            "depositos_inventario[INV_MODELO]": "required",
            "depositos_inventario[INV_NOSERIE]": "required",
             "depositos_inventario[INV_NOMOTOR]": "required",
              "depositos_inventario[INV_PLACAS]": "required",
            //"depositos_inventario[depositos_pertenencias_attributes][]": "required"

            // depositos_inventario[depositos_pertenencias_attributes][1486728000431][PER_CANTIDAD]
        },
        messages: {
            "depositos_inventario[INV_NUMORDEN]": "Num. Orden Grua Requerido",
            "depositos_inventario[PKTIPO_AUTO]": "Tipo de Vehiculo Requerido",
            "ShowINV[FDETENCION]": "Fecha Detencion Requerido",
             "depositos_inventario[PKDEPOSITO]": "Deposito Vehicular Requerido",

            "depositos_inventario[PKMARCA]": "Marca Requerido",
            "depositos_inventario[PKSUBMARCA]": "Submarca Requerido",
            "depositos_inventario[PKCOLOR]": "Color Requerido",
            "depositos_inventario[INV_MODELO]": "Modelo Requerido",
            "depositos_inventario[INV_NOSERIE]": "Num. Serie Requerido",
             "depositos_inventario[INV_NOMOTOR]": "Num. Motor Requerido",
              "depositos_inventario[INV_PLACAS]": "Placas Requerido",
             //"depositos_inventario[depositos_pertenencias_attributes][]": "Requerido"
        }
    });


$("[id^=edit_depositos_inventario]").validate({
        rules: {
            "depositos_inventario[INV_NUMORDEN]": "required",
            "depositos_inventario[PKTIPO_AUTO]": "required",
            "ShowINV[FDETENCION]": "required",
           "depositos_inventario[PKDEPOSITO]": "required",
            "depositos_inventario[PKMARCA]": "required",
            "depositos_inventario[PKSUBMARCA]": "required",
            "depositos_inventario[PKCOLOR]": "required",
            "depositos_inventario[INV_MODELO]": "required",
            "depositos_inventario[INV_NOSERIE]": "required",
             "depositos_inventario[INV_NOMOTOR]": "required",
              "depositos_inventario[INV_PLACAS]": "required",
            //"depositos_inventario[depositos_pertenencias_attributes][]": "required"

            // depositos_inventario[depositos_pertenencias_attributes][1486728000431][PER_CANTIDAD]
        },
        messages: {
            "depositos_inventario[INV_NUMORDEN]": "Num. Orden Grua Requerido",
            "depositos_inventario[PKTIPO_AUTO]": "Tipo de Vehiculo Requerido",
            "ShowINV[FDETENCION]": "Fecha Detencion Requerido",
             "depositos_inventario[PKDEPOSITO]": "Deposito Vehicular Requerido",

            "depositos_inventario[PKMARCA]": "Marca Requerido",
            "depositos_inventario[PKSUBMARCA]": "Submarca Requerido",
            "depositos_inventario[PKCOLOR]": "Color Requerido",
            "depositos_inventario[INV_MODELO]": "Modelo Requerido",
            "depositos_inventario[INV_NOSERIE]": "Num. Serie Requerido",
             "depositos_inventario[INV_NOMOTOR]": "Num. Motor Requerido",
              "depositos_inventario[INV_PLACAS]": "Placas Requerido",
             //"depositos_inventario[depositos_pertenencias_attributes][]": "Requerido"
        }
    });






$("[id^=new_depositos_salida]").validate({
        rules: {
            "depositos_salida[PKINVENTARIO]": "required",
            "depositos_salida[S_RFC]": "required",
            "depositos_salida[S_CLIENTE]": "required",
           "depositos_salida[S_METODOPAGO]": "required",
            "depositos_salida[S_FORMA_DE_PAGO]": "required",
            "depositos_salida[S_DOMICILIO]": "required",
            "depositos_salida[S_Municipio]": "required",
            "depositos_salida[S_Estado]": "required",
            "depositos_salida[S_Pais]": "required",
             "depositos_salida[S_CodigoPostal]": "required",
              "depositos_salida[S_NumDias]": "required",

                "depositos_salida[S_NumDias]": "required",
                  "depositos_salida[S_ImporteDiario]": "required",
                    "depositos_salida[S_SubTotal]": "required",
                      "depositos_salida[S_IVA]": "required",
                        "depositos_salida[S_Total]": "required",
            //"depositos_inventario[depositos_pertenencias_attributes][]": "required"

            // depositos_inventario[depositos_pertenencias_attributes][1486728000431][PER_CANTIDAD]
        },
        messages: {
             "depositos_salida[PKINVENTARIO]": "Num. Inventario Requerido",
            "depositos_salida[S_RFC]": "Rfc Requerido",
            "depositos_salida[S_CLIENTE]": "Cliente Requerido",
           "depositos_salida[S_METODOPAGO]": "Metodo de Pagp Requerido",
            "depositos_salida[S_FORMA_DE_PAGO]": "Forma De Pago Requerido",
            "depositos_salida[S_DOMICILIO]": "Domicilio Requerido",
            "depositos_salida[S_Municipio]": "Municipio Requerido",
            "depositos_salida[S_Estado]": "Estado Requerido",
            "depositos_salida[S_Pais]": "Pais Requerido",
             "depositos_salida[S_CodigoPostal]": "Codigo Postal Requerido",
              "depositos_salida[S_NumDias]": "NumDias Requerido",

                  "depositos_salida[S_ImporteDiario]": "ImporteDiario Requerido",
                    "depositos_salida[S_SubTotal]": "SubTotal Requerido",
                      "depositos_salida[S_IVA]": "IVA Requerido",
                        "depositos_salida[S_Total]": "Total Requerido",
             //"depositos_inventario[depositos_pertenencias_attributes][]": "Requerido"
        }
    });




 $("#new_tarifas_servicio").validate({
        rules: {
            "tarifas_servicio[SER_DESCRIPCION]": "required"

        },
        messages: {
            "tarifas_servicio[SER_DESCRIPCION]": "Descripcion del Servicio Requerido"

        }
    });
    // validate the configuracion form when it is submitted
    $('[id^=edit_tarifas_servicio]').validate({
         rules: {
            "tarifas_servicio[SER_DESCRIPCION]": "required"

        },
        messages: {
            "tarifas_servicio[SER_DESCRIPCION]": "Descripcion del Servicio Requerido"

        }
    });



    $("#new_categorias_vehiculo").validate({
        rules: {
            "categorias_vehiculo[CAT_DESCRIPCION]": "required"

        },
        messages: {
            "categorias_vehiculo[CAT_DESCRIPCION]": "Categoria de Vehiculo Requerido"

        }
    });
    // validate the configuracion form when it is submitted
    $('[id^=edit_categorias_vehiculo]').validate({
         rules: {
            "categorias_vehiculo[CAT_DESCRIPCION]": "required"

        },
        messages: {
            "categorias_vehiculo[CAT_DESCRIPCION]": "Categoria de Vehiculo Requerido"

        }
    });






$("[id^=new_listas_precio]").validate({
        rules: {
            "listas_precio[LIS_DESCRIPCION]": "required"


        },
        messages: {
            "listas_precio[LIS_DESCRIPCION]": "Nombre de la List de Precios Requerido"
        }
    });


$("[id^=edit_listas_precio]").validate({
         rules: {
            "listas_precio[LIS_DESCRIPCION]": "required"


        },
        messages: {
            "listas_precio[LIS_DESCRIPCION]": "Nombre de la List de Precios Requerido"
        }
    });



  $("#frmManualTruck_Assignment").validate({
        rules: {
            "Asignar_GURA": "required",
            "OS[OPERADOR]": "required",
            "OS[TIEMPO_COMPROMISO]": "required"
        },
        messages: {
            "Asignar_GURA": "Asigngar Gura Requerido",
            "pai[CODIGOINT]": "Operador Requerido",
            "OS[TIEMPO_COMPROMISO]": "Tiempo Compromiso Requerido"
        }
    });


});


function isNumber(evt) {

    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;

    if (charCode > 31 && charCode !=45 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
function isFloat(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;

    if (charCode > 31 && charCode!=46 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}


String.prototype.trimEnd = function (c) {
    c = c ? c : ' ';
    var i = this.length - 1;
    for (; i >= 0 && this.charAt(i) == c; i--);
    return this.substring(0, i + 1);
}
