

SELECT *
FROM [WebC2000T_SAP].[dbo].affinity_cab_pedidos_cont B
WHERE NOT EXISTS (SELECT 1 FROM [WebC2000T_Test].[dbo].affinity_cab_pedidos_cont a WHERE b.contador = a.contador)


INSERT INTO [WebC2000T_Test].[dbo].[AFFINITY_CAB_PEDIDOS_CONT]
           ([contador]
           ,[convenio]
           ,[afiliadoRut]
           ,[empleadorRut]
           ,[num_ped_cli]
           ,[fecha])
SELECT DISTINCT [contador]
      ,[convenio]
      ,[afiliadoRut]
      ,[empleadorRut]
      ,[num_ped_cli]
      ,[fecha]
FROM [WebC2000T_SAP].[dbo].[AFFINITY_CAB_PEDIDOS_CONT] A
WHERE
NOT EXISTS (SELECT 1 FROM [WebC2000T_Test].[dbo].[AFFINITY_CAB_PEDIDOS_CONT] B WHERE (A.CONTADOR = B.CONTADOR));




/**********************/

SELECT *
FROM [WebC2000T_SAP].[dbo].[CLIENTES_FINAL] B
WHERE NOT EXISTS (SELECT 1 FROM [WebC2000T_Test].[dbo].[CLIENTES_FINAL] a WHERE b.COD_CLI_FINAL = a.COD_CLI_FINAL)


INSERT INTO [WebC2000T_Test].[dbo].[AFFINITY_CAB_PEDIDOS_HP]
           ([Contador]
           ,[ConvenioID]
           ,[AfiliadoRUT]
           ,[EmpleadorRUT]
           ,[Num_Ped_Cli]
           ,[Num_Ped_Optim]
           ,[Status]
           ,[Comment1]
           ,[Comment2]
           ,[Comment3]
           ,[Comment4]
           ,[Comment5]
           ,[Comment6]
           ,[Comment7]
           ,[Comment8]
           ,[Cod_Tip_Envio]
           ,[Tot_Neto]
           ,[Tot_IVA]
           ,[Tot_COFIS]
           ,[Tot_Pedido]
           ,[GtoAdmin]
           ,[Flete]
           ,[Dir1_Entrega]
           ,[Dir2_Entrega]
           ,[Cod_Comuna]
           ,[Cod_Ciudad]
           ,[Cod_Region]
           ,[Telefono]
           ,[Mail1QuienRecibe]
           ,[Nombre1QuienRecibe]
           ,[RUT2QuienRecibe]
           ,[Nombre2QuienRecibe]
           ,[RUT3QuienRecibe]
           ,[Nombre3QuienRecibe]
           ,[Procesado]
           ,[Fecha_Entrega]
           ,[Numero_Cuotas]
           ,[Telefono2QuienRecibe]
           ,[Telefono3QuienRecibe]
           ,[ModoPago]
           ,[Giro]
           ,[FECHA]
           ,[IPCLIENTE]
           ,[numero_orden_hp]
           ,[regiondesc]
           ,[ciudaddesc]
           ,[comunadesc]
           ,[OC]
           ,[emailUsuario]
           ,[Fechasap]
           ,[num_edi]
           ,[procesado850]
           ,[procesado855]
           ,[procesado856]
           ,[mailContacto]
           ,[RUT1QuienRecibe]
           ,[enviado])

SELECT DISTINCT
		[Contador]
           ,[ConvenioID]
           ,[AfiliadoRUT]
           ,[EmpleadorRUT]
           ,[Num_Ped_Cli]
           ,[Num_Ped_Optim]
           ,[Status]
           ,[Comment1]
           ,[Comment2]
           ,[Comment3]
           ,[Comment4]
           ,[Comment5]
           ,[Comment6]
           ,[Comment7]
           ,[Comment8]
           ,[Cod_Tip_Envio]
           ,[Tot_Neto]
           ,[Tot_IVA]
           ,[Tot_COFIS]
           ,[Tot_Pedido]
           ,[GtoAdmin]
           ,[Flete]
           ,[Dir1_Entrega]
           ,[Dir2_Entrega]
           ,[Cod_Comuna]
           ,[Cod_Ciudad]
           ,[Cod_Region]
           ,[Telefono]
           ,[Mail1QuienRecibe]
           ,[Nombre1QuienRecibe]
           ,[RUT2QuienRecibe]
           ,[Nombre2QuienRecibe]
           ,[RUT3QuienRecibe]
           ,[Nombre3QuienRecibe]
           ,[Procesado]
           ,[Fecha_Entrega]
           ,[Numero_Cuotas]
           ,[Telefono2QuienRecibe]
           ,[Telefono3QuienRecibe]
           ,[ModoPago]
           ,[Giro]
           ,[FECHA]
           ,[IPCLIENTE]
           ,[numero_orden_hp]
           ,[regiondesc]
           ,[ciudaddesc]
           ,[comunadesc]
           ,[OC]
           ,[emailUsuario]
           ,[Fechasap]
           ,[num_edi]
           ,[procesado850]
           ,[procesado855]
           ,[procesado856]
           ,[mailContacto]
           ,[RUT1QuienRecibe]
           ,[enviado]
  FROM [WebC2000T_SAP].[dbo].[AFFINITY_CAB_PEDIDOS_HP] A
WHERE
NOT EXISTS (SELECT 1 FROM [WebC2000T_Test].[dbo].[AFFINITY_CAB_PEDIDOS_HP] B WHERE (A.CONTADOR = B.CONTADOR));
go











/**********************/




SELECT *
FROM [WebC2000T_SAP].[dbo].affinity_lin_pedidos B
WHERE NOT EXISTS (SELECT 1 FROM [WebC2000T_Test].[dbo].affinity_lin_pedidos a WHERE b.contador = a.contador)


INSERT INTO [WebC2000T_Test].[dbo].[AFFINITY_LIN_PEDIDOS]
           ([Contador]
           ,[POS]
           ,[Ref_Art]
           ,[Desc_Art_Breve]
           ,[Cant_Ped]
           ,[SuPrecio]
           ,[Cant_Disp]
           ,[PN_Fabr]
           ,[Nom_Fabr]
           ,[Num_Ped_Cli]
           ,[Monto_Neto]
           ,[Porc_COFIS]
           ,[Comment1]
           ,[Comment2]
           ,[Comment3]
           ,[Comment4]
           ,[Comment5]
           ,[Comment6]
           ,[Comment7]
           ,[comment8]
           ,[CONVENIOID])

SELECT DISTINCT
		[Contador]
      ,[POS]
      ,[Ref_Art]
      ,[Desc_Art_Breve]
      ,[Cant_Ped]
      ,[SuPrecio]
      ,[Cant_Disp]
      ,[PN_Fabr]
      ,[Nom_Fabr]
      ,[Num_Ped_Cli]
      ,[Monto_Neto]
      ,[Porc_COFIS]
      ,[Comment1]
      ,[Comment2]
      ,[Comment3]
      ,[Comment4]
      ,[Comment5]
      ,[Comment6]
      ,[Comment7]
      ,[comment8]
      ,[CONVENIOID]
  FROM [WebC2000T_SAP].[dbo].[AFFINITY_LIN_PEDIDOS] a

WHERE
NOT EXISTS (SELECT 1 FROM [WebC2000T_Test].[dbo].[AFFINITY_LIN_PEDIDOS] B WHERE (A.CONTADOR = B.CONTADOR));
go