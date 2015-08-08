//
//  ProductLine.swift
//  Stuller
//
//  Created by Raul Ernesto Escobedo Herrera on 7/4/15.
//  Copyright (c) 2015 Raul Ernesto Escobedo Herrera. All rights reserved.
//
//  (1) Agrandadores de Anillos
//  (2) Alicates y Cortadores
//  (3) Artículos de Seguridad
//  (4) Gravado
//  (5) Relojería

import Foundation

class ProductLine
{
    // Variables
    var name: String            // name of the product line
    var products: [Product]     // all products in the line
    
    class var numberOfProducts: Int {
        get {
            return (ProductLine.herramientaAgrandadorAnillos().products.count + ProductLine.herramientasAlicatesCortadores().products.count + ProductLine.herramientasArticulosSeguridad().products.count + ProductLine.herramientasGravado().products.count + ProductLine.herramientasRelojeria().products.count)
        }
    }
    
    init(named: String, includeProducts: [Product])
    {
        name = named
        products = includeProducts
    }
    
    class func productLines() -> [ProductLine]
    {
        return [self.herramientaAgrandadorAnillos(), self.herramientasAlicatesCortadores(), self.herramientasArticulosSeguridad(), self.herramientasGravado(), self.herramientasRelojeria()]
    }
    
    // Private methods
    
    private class func herramientaAgrandadorAnillos() -> ProductLine {
        //  (1) Agrandadores de Anillos
        var products = [Product]()
        
        products.append(Product(titled: "RING SIZE CUTTER", description: "Este cortador de anillo ahorra tiempo al cortar cuidadosamente una cantidad controlada del material del anillo. El anillo permanece perfectamente paralelo para que el soldado sea limpio y rápido. Viene con siete hojas de diferentes tamaños: 2.1, 4.3, 1, 11 / 4, 11 / 2, 13 / 4, y 2. Estos tamaños corresponden a la variación de tamaño del anillo. Hojas de cambio rápido y fácil sin herramientas. Las cuchillas de repuesto se venden por separado.", imageName: "26-4150.png"))
        products.append(Product(titled: "RING BENDER", description: "Esta unidad es para el doblado de media caña, ovales planos y grabados en blanco, anillo en forma de anillo circular. Consta de un Mandril escalonado para trabajar con diferentes tamaños y tiene dos hileras de un juego y medio de metal redondo y plano. Apto para el trabajo de producción.", imageName: "48-0500.png"))
        products.append(Product(titled: "RING BENDING TOOL", description: "Herramienta para doblar la luz, así como trabajos pesados, en las curvas de hasta 5 mm en blanco para anillos gruesos, también para los cables, las tiras de metal tan ancho como de 10 mm (3 / 8). 3 bandejas cilindro de 14mm, 16mm y 20mm con pulsadores correspondientes ofrecen una variedad de posibilidades de plegado. Operado por un dispositivo de palanca excéntrica. Utilizado en prensa de banco. Diseñado para la mayorÌa de los metales blandos, no de acero.", imageName: "48-0515.png"))
        products.append(Product(titled: "STEPPED RING STRETCHER & REDUCER", description: "Escalonada, con paredes rectas. La precisión aumenta las ventas para ajustar el anillo con el tamaño del cliente", imageName: "48-0516.png"))
        products.append(Product(titled: "KAGAN RING ROLLER W/HANDLE", description: "Permite al joyero ampliar el anillo con piedras en el montaje, rodillos paralelos estiran el anillo y la espiga sin mover las piedras. Sizer viene con ocho hileras de óvalo, todo el año y medio, de punta cuchillo y espigas planas. Se puede utilizar como un mini-tren de laminación.", imageName: "48-7530.png"))
        
        return ProductLine(named: "Agrandadores de Anillos", includeProducts: products)
    }
    
    //  (2) Alicates y Cortadores
    
    private class func herramientasAlicatesCortadores() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "MESH BRACELET CUTTER", description: "Una herramienta de corte cilíndrico útil para el corte de las bandas de malla, también de la soldadura, alambre y pequeñas piezas de láminas de metal. El mango largo es un respaldo de corte máxima. La presión aplicada incluso por esta máquina se asegurará de hacer cortes rectos.", imageName: "25-0446.png"))
        products.append(Product(titled: "METAL HOLE PUNCH PLIERS", description: "Nuevo diseño de pinza perforadora de punzón de cobre o de plata tan gruesa como el calibre 18. Con asas ergonómicas y el perno de reemplazo templado, estas pinzas le ahorran tiempo y dinero. Disponible en dos modelos: 1,25 mm o 1,8 mm de diámetro del pasador. Las pinzas son de acero al carbono de espesor y vienen con un pin adicional que es reemplazable. Longitud 5 1 / 4 (135mm).", imageName: "46-0404.png"))
        products.append(Product(titled: "REPLACEMENT PINS PK/5 FOR 46-0404", description: "Descripción no disponible.", imageName: "46-0406.png"))
        products.append(Product(titled: "TRIPLE BAIL LOOPING PLIERS", description: "Alambre de acero inoxidable con bucle de pinzas con doble hoja en los muelles. También conocido como alicates de acoplamiento. Permite al usuario doblar alambre fácilmente. Tres mandíbulas en ronda en un cuadro y articulado para una mayor durabilidad. Finamente pulido, una ronda y una mandÌbula cóncava. Longitud total de 5 3 / 4 (146mm).", imageName: "46-0406.png"))
        products.append(Product(titled: "CONCAVE RING BENDING PLIERS", description: "Esta pinza cuadro de conjunto único se hace para completar cualquier tamaño debido a su forma exclusiva. El menor (cóncava) de la mandíbula va desde 10,5 mm en la punta de 17mm en la base. Longitud total de 6 1 / 2 (165mm).", imageName: "46-2900.png"))
        
        
        return ProductLine(named: "Alicates y Cortadores", includeProducts: products)
    }
    
    //  (3) Artículos de Seguridad
    
    private class func herramientasArticulosSeguridad() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "3M 6800 MEDIUM FULL FACEPIECE RESPIRATOR", description: "Los respiradores 3M 6000 series proporcionan una versatilidad con la comodidad y facilidad de uso. Las unidades de bajo mantenimiento son aprobados para su uso con una amplia gama de cartuchos instalados fácilmente y filtros de partículas o de gas y vapor de protección. Cartuchos y filtros se venden por separado.", imageName: "29-0006.png"))
        products.append(Product(titled: "3M #6009 MERCURY VAPOR CT/PK 2", description: "Ofrece cobertura extendida ojo sin cerrada en la sensación. templos ajustables permiten una, la costumbre ajuste cómodo. Los lentes son de policarbonato de alto impacto. Negro es el marco de nylon resistente pero ligero. El DX con recubrimiento objetivo es anti-niebla, anti-arañazos y anti-UV, antiestático y tiene una excelente resistencia química.", imageName: "29-0030.png"))
        products.append(Product(titled: "FIRST AID KIT", description: "Nuevos kits de primeros auxilios para tratar las heridas y salvar vidas. Descubre el mejor valor en los kits de primeros auxilios. Este nuevo kit del Norte le permite configurar una estación de primeros auxilios de inmediato, en cualquier lugar. calidad de los contenidos Premium tratar hasta 25 personas. Seis áreas de particiones para mantener el contenido organizado. Característica de moldeado cómoda en el asa.", imageName: "29-0100.png"))
        products.append(Product(titled: "ANTI-FOG COVER GOGGLES", description: "Diseñado para el joyero de trabajo por un joyero de trabajo con 30 años de experiencia. El material es un gran delantal de tela resistente a la quema. Cuando el metal caliente se coloca sobre ella, deja una marca de quemadura apenas perceptible. Es una tela suave, que no pierde sus cualidades retardantes del fuego, incluso después de muchas lavadas. La parte superior de la plataforma fue diseñada para ser más amplia, para proteger más el cuello y el pecho, y tiene una correa para el cuello ajustable que no se quedan atascados en el pelo largo, como el velcro. Las amarras son largas para envolver y atar en el frente. El delantal es de 38 pulgadas de largo para cubrir adecuadamente la vuelta cuando se está sentado, y tiene una aleta pequeña en la parte inferior para atrapar las piezas fuera de control o virutas de metal cayendo en la plataforma.", imageName: "29-0040.png"))
        
        
        return ProductLine(named: "Artículos de Seguridad", includeProducts: products)
    }
    
    //  (4) Gravado
    
    private class func herramientasGravado() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "SOFTWARE MATRIX 7.5 C/RHINO 5.0 ", description: "Descripción no disponible", imageName: "SW_MATRIX.png"))
        products.append(Product(titled: "QC SHARPENING SYSTEM", description: "Incluye cambio rápido afilado accesorio, el poder perfeccionar, cambiar el adaptador de la rueda rápida, grano 260 y 600 discos de diamante de grano, la vuelta de cer·mica, 1 / 2 diamante aerosol micrones, y el estante de almacenamiento de las ruedas.", imageName: "26-3999.png"))
        products.append(Product(titled: "MEIJI EMZ-5 BINOCULAR MICROSCOPE SYSTEM BENCH ", description: "Este sistema incluye el banco: Meiji EMZ-5 con ámbito de aplicación, soporte de acróbata con el resto del abezal, ocular 10X, flash anular y el 0,5 lente auxiliar. El auxiliar del objetivo 0.5 aumenta la distancia de trabajo de 93 mm (3.66 pulgadas) de 150 mm (5.90 pulgadas). Incluye adaptador de montaje.", imageName: "26-4073.png"))
        
        return ProductLine(named: "Gravado", includeProducts: products)
    }
    
    //  (5) Relojería
    
    private class func herramientasRelojeria() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "MAQUINA FRESADORA REVO 540 CX ", description: "Descripción no disponible por el momento", imageName: "REVO_54.png"))
        
        return ProductLine(named: "Relojería", includeProducts: products)
    }
}
