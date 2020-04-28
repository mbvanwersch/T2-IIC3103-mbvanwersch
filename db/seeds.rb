# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creo Hamburguesas
hamburguesas = Hamburguesa.create([
  {
    nombre: "De la casa",
    precio: 5990,
    descripcion: "Exquisita hamburguesa con queso y salsa BBQ, la especialidad de la casa",
    imagen: "https://cdn.hswstatic.com/gif/cheeseburger-1.jpg"
  },
  {
    nombre: "Juicy Lucy",
    precio: 7000,
    descripcion: "Exquisita hamburguesa",
    imagen: "https://static.vix.com/es/sites/default/files/styles/4x3/public/imj/elgranchef/h/hamburguesa-con-queso-feta-y-rucula-1.jpg?itok=r41jlZzU"},
  {
    nombre: "La maestranza",
    precio: 6500,
    descripcion: "Exquisita hamburguesa especialidad de la maestranza",
    imagen: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSqO6Yl0Wuv-epJnKgs9uS4-SzIgqUuCM9jPU1gc2015hQ5JE6N&usqp=CAU"},
  {
    nombre: "Camarona",
    precio: 6000,
    descripcion: "Exquisita hamburguesa con camarones",
    imagen: "https://www.cocinavital.mx/wp-content/uploads/2018/03/receta-de-hamburguesa-de-camaron-con-queso.jpg"},
  {
    nombre: "Pulled pork",
    precio: 8500,
    descripcion: "Exquisita hamburguesa con pulled pork",
    imagen: "https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/03/17/Recortada/img_ccasanovas_20200317-093342_imagenes_lv_terceros_hamburguesa_pulled_pork_lv-kP4F-U4742268744286UD-992x558@LaVanguardia-Web.jpg"},
  {
    nombre: "Top burger",
    precio: 5000,
    descripcion: "La mejor hamburguesa que puedes probar",
    imagen: "https://www.spicescave.com/blog/wp-content/uploads/2017/11/hamburguesa_hemingway_500x500.jpg"
  },
  {
    nombre: "La vegetariana",
    precio: 4500,
    descripcion: "Exquisita hamburguesa vegetariana",
    imagen: "https://okdiario.com/img/2018/07/03/hamburguesa-al-vapor-655x368.jpg"
  },
  {
    nombre: "Holy Moly",
    precio: 6000,
    descripcion: "Simple pero rica",
    imagen: "https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2018/08/hamburguesas-caseras-receta-facil.jpg"
  },
  {
    nombre: "Mexicana",
    precio: 5990,
    descripcion: "Exquisita hamburguesa inspirada en México",
    imagen: "https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg"
  },
  {
    nombre: "La chilena",
    precio: 5990,
    descripcion: "Para recordar tu país",
    imagen: "https://www.recetasdesbieta.com/wp-content/uploads/2018/04/hamburguesas-caseras-1.jpg"
  }
  ])

# Creo Ingredientes
ingredientes = Ingrediente.create([
  {
    id: 1,
    nombre: "Queso Cheddar",
    descripcion: "Cheddar de la mejor calidad"
  },
  {
    id: 2,
    nombre: "Queso Americano",
    descripcion: "De la mejor calidad"
  },
  {
    id: 3, 
    nombre: "Tomate",
    descripcion: "De la mejor calidad"
  },
  {
    id: 4,
    nombre: "Lechuga",
    descripcion: "De la mejor calidad"
  },
  {
    id: 5,
    nombre: "Cebolla",
    descripcion: "De la mejor calidad"
  },
  {
    id: 6,
    nombre: "Salsa BBQ",
    descripcion: "De la mejor calidad"
  },
  {
    id: 7,
    nombre: "Mayonesa",
    descripcion: "De la mejor calidad"
  },
  {
    id: 8,
    nombre: "Ketchup",
    descripcion: "De la mejor calidad"
  },
  {
    id: 9,
    nombre: "Camarones",
    descripcion: "De la mejor calidad"
  },
  {
    id: 10,
    nombre: "Palta",
    descripcion: "De la mejor calidad"
  }
  ])
