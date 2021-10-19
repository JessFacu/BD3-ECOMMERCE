/*-----------------------------------------------------------------------------------------
//
	1- TABLA dim_categoria
//

*/

INSERT INTO public.dim_categoria(
	id_categoria, tag, fecha_fin, actual, anterior, checksum)
	VALUES (?, ?, ?, ?, ?, ?);
	
	
SELECT id_categoria, tag, fecha_fin, actual, anterior, checksum
	FROM public.dim_categoria;

	
UPDATE public.dim_categoria
	SET id_categoria=?, tag=?, fecha_fin=?, actual=?, anterior=?, checksum=?
	WHERE <condition>;	
	
/*-----------------------------------------------------------------------------------------
//
	2- TABLA dim_categoria
//

*/




/*-----------------------------------------------------------------------------------------
//
	3- TABLA dim_categoria
//

*/