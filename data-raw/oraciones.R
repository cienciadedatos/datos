# From `dput(datos::oraciones)` (245b4af)

# Googling "latin small letter a with acute" and so on
# a "\u00e1"
# e "\u00e9"
# E "\u00c9"
# i "\u00ed"
# o "\u00f3"
# u "\u00fa"
#
# n \u00f1

oraciones <- c(
  "Las casas est\u00e1n construidas de ladrillos de arcilla roja.",
  "La caja fue arrojada al lado del cami\u00f3n estacionado.",
  "El domingo es la mejor parte de la semana.",
  "Agrega a la cuenta de la tienda hasta el \u00faltimo centavo.",
  "Nueve hombres fueron contratados para excavar las ruinas.",
  "Pega la hoja en el fondo azul oscuro.",
  "Instalaron azulejos verdes en la cocina.",
  "Si arrojo la taza azul al suelo se romper\u00e1.",
  "Dos peces azules nadaban en el tanque.",
  "El ancho camino brillaba bajo el calor del sol.",
  "Una voluta de nube flotaba en el aire azul.",
  "Las hojas se vuelven de color marr\u00f3n y amarillo en el oto\u00f1o.",
  "\U00c9l orden\u00f3 tarta de melocot\u00f3n con helado.", # FIXME
  "La mancha en el papel secante fue hecha por la tinta verde.",
  "Hab\u00eda barro salpicado en la parte delantera de su camisa blanca.",
  "El coj\u00edn del sof\u00e1 es de color rojo y de peso ligero.",
  "El cielo de la ma\u00f1ana era claro y azul brillante.",
  "El m\u00e9dico lo cur\u00f3 con estas dos pastillas.",
  "Pod\u00edan re\u00edr a pesar de que estaban tristes.",
  "El tercer acto era aburrido y cans\u00f3 a los actores.",
  "Una grulla azul es una ave zancuda y alta.",
  "Los cables expuestos deben mantenerse cubiertos.",
  "El choque ocurri\u00f3 cerca del banco en la calle principal.",
  "La l\u00e1mpara brillaba con una llama verde y continua.",
  "El pr\u00edncipe orden\u00f3 que le cortaran la cabeza.",
  "La planta creci\u00f3 grande y verde en la ventana.",
  "El lazo p\u00farpura ten\u00eda diez a\u00f1os.",
  "Recu\u00e9state y rel\u00e1jate en la hierba fresca y verde.",
  "El lago brillaba bajo el sol c\u00e1lido y rojo.",
  "Marca el lugar con un cartel pintado de rojo.",
  "El humo sal\u00eda de cada grieta.",
  "La cubierta del sof\u00e1 y las cortinas de la sala eran azules.",
  "Ofreci\u00f3 evidencia a trav\u00e9s de tres gr\u00e1ficos.",
  "Un hombre con un su\u00e9ter azul se sent\u00f3 en el escritorio.",
  "El sorbo de t\u00e9 revive a su amigo cansado.",
  "Una gruesa capa de pintura negra cubr\u00eda todo.",
  "Dibuja el gr\u00e1fico con l\u00edneas negras gruesas.",
  "La peque\u00f1a l\u00e1mpara de ne\u00f3n de color rojo se apag\u00f3.",
  "Pinta los encajes en la pared de color verde opaco.",
  "Despi\u00e9rtate y lev\u00e1ntate, camina hacia el verde exterior.",
  "La luz verde en la caja marr\u00f3n parpadeaba.",
  "Puso su \u00faltimo cartucho en la pistola y dispar\u00f3.",
  "El carnero asust\u00f3 a los ni\u00f1os de la escuela.",
  "Corta una delgada l\u00e1mina de la almohadilla amarilla.",
  "Llovieron centavos de todos lados.",
  "El cielo en el oeste se ti\u00f1e de rojo anaranjado.",
  "El granizo repiqueteaba en la hierba marr\u00f3n quemada.",
  "La gran manzana roja cay\u00f3 al suelo.",
  "El olor de la primavera hace que los corazones j\u00f3venes salten.",
  "Cada palabra y cada frase que habla es cierta."
)

use_data(oraciones, overwrite = TRUE)
