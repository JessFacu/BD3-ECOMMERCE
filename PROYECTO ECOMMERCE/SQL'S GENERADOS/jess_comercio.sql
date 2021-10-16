
CREATE TABLE public.dim_tiempo (
                id_tiempo INTEGER NOT NULL,
                anho VARCHAR(20) NOT NULL,
                mes VARCHAR(2) NOT NULL,
                dia VARCHAR(2) NOT NULL,
                CONSTRAINT dim_tiempo_pk PRIMARY KEY (id_tiempo)
);


CREATE TABLE public.dim_variacion (
                id_variacion INTEGER NOT NULL,
                descripcion_variacion VARCHAR(100) NOT NULL,
                CONSTRAINT dim_variacion_pk PRIMARY KEY (id_variacion)
);


CREATE TABLE public.dim_moneda (
                id_moneda INTEGER NOT NULL,
                simbolo VARCHAR(5) NOT NULL,
                descripcion_moneda VARCHAR(100) NOT NULL,
                CONSTRAINT dim_moneda_pk PRIMARY KEY (id_moneda)
);


CREATE TABLE public.dim_pais (
                id_pais INTEGER NOT NULL,
                gentilicio VARCHAR(50) NOT NULL,
                descripcion VARCHAR(100) NOT NULL,
                CONSTRAINT dim_pais_pk PRIMARY KEY (id_pais)
);


CREATE TABLE public.dim_categoria (
                id_categoria INTEGER NOT NULL,
                tag VARCHAR(100) NOT NULL,
                CONSTRAINT dim_categoria_pk PRIMARY KEY (id_categoria)
);


CREATE TABLE public.dim_producto (
                id_producto INTEGER NOT NULL,
                descripcion_producto VARCHAR(100) NOT NULL,
                costo_producto DOUBLE PRECISION NOT NULL,
                precio_producto DOUBLE PRECISION NOT NULL,
                url_producto VARCHAR(500) NOT NULL,
                imagen_producto BYTEA NOT NULL,
                raiting DOUBLE PRECISION NOT NULL,
                rainting_count INTEGER NOT NULL,
                rainting_count_cinco INTEGER NOT NULL,
                rainting_count_cautro DOUBLE PRECISION NOT NULL,
                rainting_count_tres DOUBLE PRECISION NOT NULL,
                rainting_count_dos DOUBLE PRECISION NOT NULL,
                rainting_count_uno DOUBLE PRECISION NOT NULL,
                color_producto VARCHAR(30),
                tematica_producto VARCHAR(100),
                CONSTRAINT dim_producto_pk PRIMARY KEY (id_producto)
);


CREATE TABLE public.hecho_popularidad_producto (
                id_hecho_popularidad_producto INTEGER NOT NULL,
                id_categoria INTEGER NOT NULL,
                id_pais INTEGER NOT NULL,
                id_producto INTEGER NOT NULL,
                id_variacion INTEGER NOT NULL,
                id_tiempo INTEGER NOT NULL,
                id_moneda INTEGER NOT NULL,
                raiting DOUBLE PRECISION NOT NULL,
                raiting_count INTEGER NOT NULL,
                raiting_count_uno DOUBLE PRECISION NOT NULL,
                raiting_count_dos DOUBLE PRECISION NOT NULL,
                raiting_count_tres DOUBLE PRECISION NOT NULL,
                raiting_count_cuatro VARCHAR NOT NULL,
                raiting_count_cinco INTEGER NOT NULL,
                CONSTRAINT hecho_popularidad_producto_pk PRIMARY KEY (id_hecho_popularidad_producto, id_categoria, id_pais, id_producto, id_variacion, id_tiempo, id_moneda)
);


ALTER TABLE public.hecho_popularidad_producto ADD CONSTRAINT dim_tiempo_hecho_popularidad_producto_fk
FOREIGN KEY (id_tiempo)
REFERENCES public.dim_tiempo (id_tiempo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.hecho_popularidad_producto ADD CONSTRAINT dim_variacion_hecho_popularidad_producto_fk
FOREIGN KEY (id_variacion)
REFERENCES public.dim_variacion (id_variacion)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.hecho_popularidad_producto ADD CONSTRAINT dim_moneda_hecho_popularidad_producto_fk
FOREIGN KEY (id_moneda)
REFERENCES public.dim_moneda (id_moneda)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.hecho_popularidad_producto ADD CONSTRAINT dim_pais_hecho_popularidad_producto_fk
FOREIGN KEY (id_pais)
REFERENCES public.dim_pais (id_pais)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.hecho_popularidad_producto ADD CONSTRAINT dim_categoria_hecho_popularidad_producto_fk
FOREIGN KEY (id_categoria)
REFERENCES public.dim_categoria (id_categoria)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.hecho_popularidad_producto ADD CONSTRAINT dim_producto_hecho_popularidad_producto_fk
FOREIGN KEY (id_producto)
REFERENCES public.dim_producto (id_producto)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
