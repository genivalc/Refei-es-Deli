import 'package:flutter/material.dart';
import '../enum/complexity.dart';
import '../enum/cost.dart';
import '../models/category.dart';
import '../models/meal.dart';

const DUMMY_CATEGORIES = const [
  const Category(
    id: 'c1',
    title: 'Italiano',
    imagem: 'https://i.pinimg.com/originals/83/d6/40/83d6408707023b3cc4da95c07d139819.jpg',
  ),
  const Category(
    id: 'c2',
    title: 'Rápido & Fácil',
   imagem: 'https://www.midiamax.com.br/wp-content/uploads/2019/05/Arroz-de-forno.jpg',
  ),
  const Category(
    id: 'c3',
    title: 'Hamburgers',
     imagem: 'https://portal.minervafoods.com/files/como_fazer_hamburguer_caseiro.jpg',
  ),
  const Category(
    id: 'c4',
    title: 'Alemã',
    imagem: 'https://a-static.mlcdn.com.br/618x463/quadro-decorativo-bandeira-da-alemanha-decoracao-com-moldura-vital-quadros/vitalquadrosdobrasil/0800041/ff9ce3ee331e1e0ec41114b14ba137bd.jpg',
  ),
  const Category(
    id: 'c5',
    title: 'Leve & Saudável',
    imagem: 'https://www.rioquente.com.br/images/news/0291/comidas_tipicas_de_goias_.jpg',
  ),
  const Category(
    id: 'c6',
    title: 'Exótica',
 imagem: 'https://thumbor.clickpb.com.br/gRSDTjF18mtWwJXBq3ix7GRBGCE=/1410x650/top/smart/www.clickpb.com.br/media/filer_public/34/66/34669e41-47ff-4657-843d-03943d7ac106/comida_exotica.jpg',
  ),
  const Category(
    id: 'c7',
    title: 'Café da Manhã',
   imagem: 'https://www.selecoes.com.br/wp-content/uploads/2018/06/o-que-comer-no-cafe%CC%81-da-manha%CC%83.jpg',
  ),
  const Category(
    id: 'c8',
    title: 'Asiática',
   imagem: 'https://http2.mlstatic.com/bandeira-india-cetim-alto-brilho-150m-x-90cm-pronta-entrega-D_NQ_NP_879918-MLB40410251658_012020-F.jpg',
  ),
  const Category(
    id: 'c9',
    title: 'Francesa',
    imagem: 'https://img.ibxk.com.br/2015/11/16/16092422195035.jpg',
  ),
  const Category(
    id: 'c10',
    title: 'Verão',
   imagem: 'https://s1.static.brasilescola.uol.com.br/galeria/images/2d28fe1a3b1ed960bca2e3798803c6b5.jpg',
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Espaguete com molho de tomate',
    cost: Cost.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomates',
      '1 Colher de sopa de azeite',
      '1 Cebola',
      '250g Espaguete',
      'Especiarias',
      'Queijo (opcional)'
    ],
    steps: [
      'Corte os tomates e a cebola em pedaços pequenos.',
      'Ferva um pouco de água - adicione sal quando ferver.',
      'Coloque o espaguete na água fervente - eles devem ser feitos em cerca de 10 a 12 minutos.',
      'Enquanto isso, aqueça um pouco de azeite e adicione a cebola cortada. ',
      'Depois de 2 minutos, adicione os pedaços de tomate, sal, pimenta e outras especiarias.',
      'O molho será feito assim que o espaguete estiver.',
      'Sinta-se livre para adicionar um pouco de queijo em cima do prato acabado.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Toast Hawaii',
    cost: Cost.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 fatia de pão branco',
      '1 fatia de presunto',
      '1 fatia de abacaxi',
      '1-2 fatias de queijo',
      'manteiga'
    ],
    steps: [
      "Manteiga um lado do pão branco",
      'Camada de presunto, ananás e queijo no pão branco',
      'Asse a torrada por cerca de 10 minutos no forno a 200 ° C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c3'],
    title: 'Hambúrguer clássico',
    cost: Cost.Fair,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g de gado bovino',
      '1 tomate',
      '1 pepino',
      '1 cebola',
      'Ketchup',
      '2 pães de hambúrguer'
    ],
    steps: [
      'Forma 2 rissóis',
      'Frite os rissóis para c. 4 minutos de cada lado ',
      'Frite rapidamente os pães por c. 1 minuto de cada lado ',
      'Bruch pãezinhos com ketchup',
      'Sirva hambúrguer com tomate, pepino e cebola'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Wiener Schnitzel',
    cost: Cost.Expensive,
    complexity: Complexity.Medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 costeletas de vitela',
      '4 ovos',
      '200g de pão ralado',
      '100g de farinha',
      '300 ml de manteiga',
      '100g de óleo vegetal',
      'Sal',
      'Fatias de limão'
    ],
    steps: [
      'Amaciar a vitela a cerca de 2 a 4 mm e sal de ambos os lados.',
      'Em um prato plano, mexa os ovos brevemente com um garfo.',
      'Cubra levemente as costeletas com farinha, mergulhe no ovo e, finalmente, cubra com farinha de rosca.',
      'Aqueça a manteiga e o óleo em uma panela grande (deixe a gordura esquentar) e frite os schnitzels até dourar dos dois lados.',
      'Certifique-se de jogar a panela regularmente para que os schnitzels fiquem cercados de óleo e a crosta fique'
          'fofa'
          '.',
      'Remova e escorra sobre papel de cozinha. Frite a salsa no óleo restante e escorra. ',
      "Coloque os schnitzels em um prato quente e sirva decorado com salsa e fatias de limão."
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada com Salmão Defumado',
    cost: Cost.Expensive,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rúcula',
      'Alface-de-cordeiro',
      'Salsinha',
      'Funcho',
      '200g de salmão fumado',
      'Mostarda',
      'Vinagre balsâmico',
      'Azeite',
      'Sal e pimenta'
    ],
    steps: [
      'Lave e corte salada e ervas',
      "Pique o salmão",
      "Transforme mostarda, vinagre e azeite em uma sobremesa",
      'Prepare a salada',
      'Adicione cubos de salmão e molho'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c6', 'c10'],
    title: 'Delicioso Mousse de Laranja',
    cost: Cost.Cheap,
    complexity: Complexity.Difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 folhas de gelatina',
      '150 ml de sumo de laranja',
      '80g de açúcar',
      '300g de iogurte',
      '200g de creme',
      'Casca de laranja',
    ],
    steps: [
      'Dissolver a gelatina em vaso',
      "Adicione suco de laranja e açúcar",
      'Tire a panela do fogão',
      "Adicione 2 colheres de sopa de iogurte",
      "Misture a gelatina com o iogurte restante",
      "Esfrie tudo na geladeira",
      'Chicoteie o creme e levante-o sob a massa alaranjada',
      "Arrefecer novamente por pelo menos 4 horas",
      "Sirva com casca de laranja",
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c7'],
    title: 'Panquecas',
    cost: Cost.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 xícaras de farinha de trigo'
          '3 1/2 colheres de chá de fermento em pó',
      '1 colher de chá de sal',
      '1 colher de sopa de açúcar branco',
      '1 1/4 chávenas de leite',
      '1 ovo',
      '3 colheres de sopa de manteiga derretida',
    ],
    steps: [
      'Em uma tigela grande, peneire a farinha, o fermento, o sal e o açúcar.',
      ' Faça um poço no centro e despeje o leite, o ovo e a manteiga derretida; misture até ficar homogêneo. ',
      'Aqueça uma frigideira ou frigideira levemente untada com óleo em fogo médio alto.',
      'Despeje ou coloque a massa na chapa, usando aproximadamente 1/4 de xícara para cada panqueca. Marrom em ambos os lados e servir quente.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c8'],
    title: 'Caril indiano cremoso da galinha',
    cost: Cost.Fair,
    complexity: Complexity.Medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 peitos de frango',
      '1 cebola',
      '2 dentes de alho',
      '1 pedaço de gengibre',
      '4 colheres de sopa de amêndoas',
      '1 colher de chá de pimenta caiena',
      '500 ml de leite de coco',
    ],
    steps: [
      'Fatie e frite o peito de frango',
      'Transforme cebola, alho e gengibre em pasta e refogue tudo',
      'Adicione temperos e frite',
      'Adicione o peito de frango + 250 ml de água e cozinhe tudo por 10 minutos',
      "Adicione o leite de coco",
      'Sirva com arroz'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c9'],
    title: 'Suflê de chocolate',
    cost: Cost.Cheap,
    complexity: Complexity.Difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      "1 colher de chá de manteiga derretida",
      '2 colheres de sopa de açúcar branco',
      '2 onças de chocolate amargo a 70%, partido em pedaços',
      '1 colher de sopa de manteiga',
      '1 colher de sopa de farinha de trigo'
          '4 1/3 colheres de sopa de leite frio',
      '1 pitada de sal',
      '1 pitada de pimenta caiena',
      '1 gema de ovo grande',
      '2 claras de ovo grandes',
      '1 pitada de creme de tártaro',
      '1 colher de sopa de açúcar branco',
    ],
    steps: [
      'Pré-aqueça o forno a 190 ° C. Forre uma assadeira com papel manteiga. ',
      'Pincele levemente o fundo e os lados de 2 ramequins com 1 colher de chá de manteiga derretida; cobrir o fundo e os lados até o aro. ',
      ' Adicione 1 colher de sopa de açúcar branco aos ramequins. Gire os ramequins até que o açúcar cubra todas as superfícies. ',
      'Coloque os pedaços de chocolate em uma tigela de metal.',
      ' Coloque a tigela sobre uma panela com cerca de 3 xícaras de água quente em fogo baixo.',
      'Derreta 1 colher de sopa de manteiga em uma frigideira em fogo médio.',
      'Polvilhe com farinha. Bata até a farinha incorporar na manteiga e a mistura engrossar. ',
      'Bata o leite frio até a mistura ficar macia e engrossar. Transfira a mistura para a tigela com chocolate derretido. ',
      'Adicione sal e pimenta caiena. Misture bem. Adicione a gema e misture bem. ',
      'Deixe a tigela acima da água quente (sem ferver) para manter o chocolate quente enquanto você bate as claras em neve.',
      'Coloque 2 claras em uma tigela; adicione creme de tártaro. Bata até que a mistura comece a engrossar e uma garoa do batedor permaneça na superfície cerca de 1 segundo antes de desaparecer na mistura. ',
      'Adicione 1/3 de açúcar e bata. Bata mais um pouco por 15 segundos.',
      'bata o restante do açúcar. Continue mexendo até que a mistura fique tão grossa quanto o creme de barbear e mantenha picos macios por 3 a 5 minutos. ',
      'Transfira um pouco menos da metade das claras em ovo para o chocolate.',
      'Misture até que as claras estejam bem incorporadas ao chocolate.',
      'Adicione o restante das claras em neve; dobre delicadamente no chocolate com uma espátula, levantando do fundo e dobrando. ',
      '- Pare de misturar depois que a clara do ovo desaparecer. Divida a mistura entre 2 ramequins preparados. Coloque os ramequins na assadeira preparada. ',
      'Asse no forno pré-aquecido até que as brigas fiquem inchadas e subam acima do topo das jantes, 12 a 15 minutos.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada de Espargos com Tomate Cereja',
    cost: Cost.Expensive,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Espargos brancos e verdes',
      '30g de pinhões',
      '300g de tomate cereja',
      'Salada',
      'Sal, pimenta e azeite'
    ],
    steps: [
      "Lave, descasque e corte os aspargos",
      'Cozinhe em água salgada',
      "Sal e pimenta os espargos",
      'Assar os pinhões',
      'Metade dos tomates',
      "Misture com aspargos, salada e molho",
      'Sirva com baguete'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
