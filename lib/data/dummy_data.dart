import 'package:wed_plan_project/models/category.dart';
import 'package:wed_plan_project/models/vendor.dart';

const availableCategories = [
  Category(
    id: 'C1',
    title: 'Wedding Planner',
    imageUrl: 'assets/images/catImages/c1-4.jpeg',
  ),
  Category(
    id: 'C2',
    title: 'Photographer',
    imageUrl: 'assets/images/catImages/c2-1.jpeg',
  ),
  Category(
    id: 'C3',
    title: 'Makeup Artist',
    imageUrl: 'assets/images/catImages/c3-1.avif',
  ),
  Category(
    id: 'C4',
    title: 'Veil Designer',
    imageUrl: 'assets/images/catImages/c4-1.jpeg',
  ),
  Category(
    id: 'C5',
    title: 'Hair Dresser',
    imageUrl: 'assets/images/catImages/c5-1.avif',
  ),
  Category(
    id: 'C6',
    title: 'Nails',
    imageUrl: 'assets/images/catImages/c6-1.jpeg',
  ),
  Category(
    id: 'C7',
    title: 'Fashion Designer',
    imageUrl: 'assets/images/catImages/c7-1.jpeg',
  ),
  Category(
    id: 'C8',
    title: 'Jewelry',
    imageUrl: 'assets/images/catImages/c8-1.avif',
  ),
  Category(
    id: 'C9',
    title: 'Head Piece',
    imageUrl: 'assets/images/catImages/c9-1.avif',
  ),
  Category(
    id: 'C10',
    title: 'Bouquet',
    imageUrl: 'assets/images/catImages/c10-1.avif',
  ),
];

const availableVendors = [
  Vendor(
    name: 'Fatma El Shazly',
    id: 'C1',
    category: 'Wedding Planner',
    imageUrl: 'assets/images/catImages/c1-7.jpeg',
    businessUrl: 'https://www.instagram.com/fatmaweddingplanner/',
    phoneNumber: '01099002717',
    rating: 5,
    price: 20000,
  ),
  Vendor(
    name: 'Egyptian Wedding',
    id: 'C1',
    category: 'Wedding Planner',
    imageUrl: 'assets/images/catImages/c1-1.jpeg',
    businessUrl: 'https://www.instagram.com/egyptian_weddings/',
    phoneNumber: '01020559808',
    rating: 4,
    price: 10000,
  ),
  Vendor(
    name: 'Kamal Sayed',
    id: 'C1',
    category: 'Wedding Planner',
    imageUrl: 'assets/images/catImages/c1-3.png',
    businessUrl: 'https://www.instagram.com/kamalsayedwedding/',
    phoneNumber: '01102330218',
    rating: 4,
    price: 15000,
  ),
  Vendor(
    name: 'Omneya Weddings',
    id: 'C1',
    category: 'Wedding Planner',
    imageUrl: 'assets/images/catImages/c1-4.jpeg',
    businessUrl: 'https://www.instagram.com/omneya.weddings/',
    phoneNumber: '01104374081',
    rating: 4.2,
    price: 17500,
  ),
  Vendor(
    name: 'Islam Adel',
    id: 'C1',
    category: 'Wedding Planner',
    imageUrl: 'assets/images/catImages/c1-8.jpeg',
    businessUrl: 'https://www.instagram.com/islamadel_weddingplanner/',
    phoneNumber: '01104374081',
    rating: 4.5,
    price: 12500,
  ),
  Vendor(
    name: 'Bling Wedding',
    id: 'C1',
    category: 'Wedding Planner',
    imageUrl: 'assets/images/catImages/c1-6.jpeg',
    businessUrl: 'https://www.instagram.com/bling.weddings/',
    phoneNumber: '01005048757',
    rating: 4,
    price: 30000,
  ),
  Vendor(
    name: 'Hossam Antikka',
    id: 'C2',
    category: 'Photographer',
    imageUrl: 'assets/images/catImages/c2-2.jpeg',
    businessUrl: 'https://www.instagram.com/antikkahossam/',
    phoneNumber: '01128275960',
    rating: 5,
    price: 15000,
  ),
  Vendor(
    name: 'Ahmed Mekawy',
    id: 'C2',
    category: 'Photographer',
    imageUrl: 'assets/images/catImages/c2-3.jpeg',
    businessUrl: 'https://www.instagram.com/mekkyvideocompany/',
    phoneNumber: '01553966341',
    rating: 4.5,
    price: 10000,
  ),
  Vendor(
    name: 'Abed Photography',
    id: 'C2',
    category: 'Photographer',
    imageUrl: 'assets/images/catImages/c2-4.jpeg',
    businessUrl: 'https://www.instagram.com/abedphotograhy/',
    phoneNumber: '01097803400',
    rating: 4,
    price: 12500,
  ),
  Vendor(
    name: 'Aboutaleb',
    id: 'C2',
    category: 'Photographer',
    imageUrl: 'assets/images/catImages/c2-5.jpeg',
    businessUrl: 'https://www.instagram.com/aboutalebofficial/',
    phoneNumber: '01281000727',
    rating: 4,
    price: 16000,
  ),
  Vendor(
    name: 'Karim Basyoni',
    id: 'C2',
    category: 'Photographer',
    imageUrl: 'assets/images/catImages/c2-6.jpeg',
    businessUrl: 'https://www.instagram.com/karim_basyoni_photography/',
    phoneNumber: '01063813840',
    rating: 4,
    price: 20000,
  ),
  Vendor(
    name: 'Sarah Khalil',
    id: 'C2',
    category: 'Photographer',
    imageUrl: 'assets/images/catImages/c2-7.jpeg',
    businessUrl: 'https://www.instagram.com/sarahkhalilphotography/',
    phoneNumber: '01006690708',
    rating: 4,
    price: 17500,
  ),
  Vendor(
    name: 'Dina Ragheb',
    id: 'C3',
    category: 'Makeup Artist',
    imageUrl: 'assets/images/catImages/c3-4.png',
    businessUrl: 'https://www.instagram.com/dinaragheb/',
    phoneNumber: '01005198644',
    rating: 5,
    price: 20000,
  ),
  Vendor(
    name: 'Mai Elbahey',
    id: 'C3',
    category: 'Makeup Artist',
    imageUrl: 'assets/images/catImages/c3-2.jpeg',
    businessUrl: 'https://www.instagram.com/mai_elbahey/',
    phoneNumber: '01000224843',
    rating: 4,
    price: 17500,
  ),
  Vendor(
    name: 'Zeina El Naggar',
    id: 'C3',
    category: 'Makeup Artist',
    imageUrl: 'assets/images/catImages/c3-3.jpeg',
    businessUrl: 'https://www.instagram.com/zeinaelnaggar/',
    phoneNumber: '01006069356',
    rating: 4,
    price: 15000,
  ),
  Vendor(
    name: 'Aya El Batt',
    id: 'C3',
    category: 'Makeup Artist',
    imageUrl: 'assets/images/catImages/c3-5.jpeg',
    businessUrl: 'https://www.instagram.com/aya_elbatt/',
    phoneNumber: '01093560771',
    rating: 4,
    price: 12500,
  ),
  Vendor(
    name: 'Shams',
    id: 'C3',
    category: 'Makeup Artist',
    imageUrl: 'assets/images/catImages/c3-6.jpeg',
    businessUrl: 'https://www.instagram.com/makeupbyshamss/',
    phoneNumber: '01016555412',
    rating: 4,
    price: 10000,
  ),
  Vendor(
    name: 'Noha Shereif',
    id: 'C3',
    category: 'Makeup Artist',
    imageUrl: 'assets/images/catImages/c3-7.jpeg',
    businessUrl: 'https://www.instagram.com/noha_shereif/',
    phoneNumber: '01022197275',
    rating: 4,
    price: 5000,
  ),
  Vendor(
    name: 'Mai Yasser',
    id: 'C4',
    category: 'Veil Designer',
    imageUrl: 'assets/images/catImages/c4-2.png',
    businessUrl: 'https://www.instagram.com/maiyasser_veil_designer/',
    phoneNumber: '01092801185',
    rating: 5,
    price: 20000,
  ),
  Vendor(
    name: 'Meima Ashraf',
    id: 'C4',
    category: 'Veil Designer',
    imageUrl: 'assets/images/catImages/c4-3.jpeg',
    businessUrl: 'https://www.instagram.com/meimaashraf_veildesigner/',
    phoneNumber: '01010342934',
    rating: 4.5,
    price: 17500,
  ),
  Vendor(
    name: 'Salma badr',
    id: 'C4',
    category: 'Veil Designer',
    imageUrl: 'assets/images/catImages/c4-4.jpeg',
    businessUrl: 'https://www.instagram.com/salmabadr_veil_designer/',
    phoneNumber: '01098323996',
    rating: 4,
    price: 15000,
  ),
  Vendor(
    name: 'Dina El Gabarouny',
    id: 'C4',
    category: 'Veil Designer',
    imageUrl: 'assets/images/catImages/c4-6.jpeg',
    businessUrl: 'https://www.instagram.com/veildesigner_dina_elgabarouny/',
    phoneNumber: '01222731082',
    rating: 4,
    price: 10000,
  ),
  Vendor(
    name: 'Nada Ibrahiem',
    id: 'C4',
    category: 'Veil Designer',
    imageUrl: 'assets/images/catImages/c4-7.jpeg',
    businessUrl: 'https://www.instagram.com/nadaibrahiem.veildesinger/',
    phoneNumber: '01202208431',
    rating: 4,
    price: 7500,
  ),
  Vendor(
    name: 'Mayar Sherif',
    id: 'C4',
    category: 'Veil Designer',
    imageUrl: 'assets/images/catImages/c4-8.jpeg',
    businessUrl: 'https://www.instagram.com/mayar.sherif.veildesigner/',
    phoneNumber: '01069064463',
    rating: 4,
    price: 5000,
  ),
  Vendor(
    name: 'Rasha Refaat',
    id: 'C5',
    category: 'Hair Dresser',
    imageUrl: 'assets/images/catImages/c5-2.jpeg',
    businessUrl: 'https://www.instagram.com/rasha_refaat_hairdresser/',
    phoneNumber: '01025267760',
    rating: 4,
    price: 20000,
  ),
  Vendor(
    name: 'Nelly Essam',
    id: 'C5',
    category: 'Hair Dresser',
    imageUrl: 'assets/images/catImages/c5-3.jpeg',
    businessUrl: 'https://www.instagram.com/nana.hairdresser/',
    phoneNumber: '01098341737',
    rating: 4,
    price: 17500,
  ),
  Vendor(
    name: 'Mina Ayad',
    id: 'C5',
    category: 'Hair Dresser',
    imageUrl: 'assets/images/catImages/c5-4.jpeg',
    businessUrl: 'https://www.instagram.com/minaayad_hairdresser/',
    phoneNumber: '01283165611',
    rating: 5,
    price: 15000,
  ),
  Vendor(
    name: 'Magi Borhan',
    id: 'C5',
    category: 'Hair Dresser',
    imageUrl: 'assets/images/catImages/c5-5.jpeg',
    businessUrl: 'https://www.instagram.com/magi_borhan_hairdresser/',
    phoneNumber: '01026122827',
    rating: 4.5,
    price: 10000,
  ),
  Vendor(
    name: 'Kirillos Hair Dresser',
    id: 'C5',
    category: 'Hair Dresser',
    imageUrl: 'assets/images/catImages/c5-6.jpeg',
    businessUrl: 'https://www.instagram.com/kirollos_hairdresser/',
    phoneNumber: '01202229095',
    rating: 4.2,
    price: 7500,
  ),
  Vendor(
    name: 'Aya Saied',
    id: 'C5',
    category: 'Hair Dresser',
    imageUrl: 'assets/images/catImages/c5-7.jpeg',
    businessUrl: 'https://www.instagram.com/ayasaiedhairdresser/',
    phoneNumber: '01062922903',
    rating: 4,
    price: 5000,
  ),
  Vendor(
    name: 'Simply Nails',
    id: 'C6',
    category: 'Nails',
    imageUrl: 'assets/images/catImages/c6-2.avif',
    businessUrl: 'https://www.instagram.com/simplynailsspa/',
    phoneNumber: '01156926977',
    rating: 5,
    price: 20000,
  ),
  Vendor(
    name: 'Beauty Nails',
    id: 'C6',
    category: 'Nails',
    imageUrl: 'assets/images/catImages/c6-3.jpeg',
    businessUrl: 'https://www.instagram.com/beuty_nails/',
    phoneNumber: '01098673159',
    rating: 4.5,
    price: 17500,
  ),
  Vendor(
    name: 'Beauty Trends Home',
    id: 'C6',
    category: 'Nails',
    imageUrl: 'assets/images/catImages/c6-4.jpeg',
    businessUrl: 'https://www.instagram.com/beautytrends15/',
    phoneNumber: '01001474313',
    rating: 4,
    price: 15000,
  ),
  Vendor(
    name: 'L.A Nails',
    id: 'C6',
    category: 'Nails',
    imageUrl: 'assets/images/catImages/c6-5.jpeg',
    businessUrl: 'https://www.instagram.com/l.a_nails_egypt/',
    phoneNumber: '01114281888',
    rating: 4,
    price: 10000,
  ),
  Vendor(
    name: 'Sivo Nails',
    id: 'C6',
    category: 'Nails',
    imageUrl: 'assets/images/catImages/c6-6.jpeg',
    businessUrl: 'https://www.instagram.com/sivo_nails/',
    phoneNumber: '01007601991',
    rating: 4,
    price: 7500,
  ),
  Vendor(
    name: 'Wink Lashes & Nails',
    id: 'C6',
    category: 'Nails',
    imageUrl: 'assets/images/catImages/c6-7.jpeg',
    businessUrl: 'https://www.instagram.com/winklashesandnails/',
    phoneNumber: '01155564448',
    rating: 4,
    price: 5000,
  ),
  Vendor(
    name: 'Samo Hagras',
    id: 'C7',
    category: 'Fashion Designer',
    imageUrl: 'assets/images/catImages/c7-3.webp',
    businessUrl: 'https://www.instagram.com/samo_hagras/',
    phoneNumber: '01120186000',
    rating: 4,
    price: 20000,
  ),
  Vendor(
    name: 'Hany El Behairy',
    id: 'C7',
    category: 'Fashion Designer',
    imageUrl: 'assets/images/catImages/c7-4.jpeg',
    businessUrl: 'https://www.instagram.com/hanyelbehairyhautecouture/',
    phoneNumber: '01028970909',
    rating: 5,
    price: 17500,
  ),
  Vendor(
    name: 'Couture Reem',
    id: 'C7',
    category: 'Fashion Designer',
    imageUrl: 'assets/images/catImages/c7-5.webp',
    businessUrl: 'https://www.instagram.com/couturereem/',
    phoneNumber: '01002816234',
    rating: 4,
    price: 15000,
  ),
  Vendor(
    name: 'Fatma Nasr',
    id: 'C7',
    category: 'Fashion Designer',
    imageUrl: 'assets/images/catImages/c7-6.jpeg',
    businessUrl: 'https://www.instagram.com/fatmanasrcouture/',
    phoneNumber: '01024740624',
    rating: 4,
    price: 10000,
  ),
  Vendor(
    name: 'Norhan bakry',
    id: 'C7',
    category: 'Fashion Designer',
    imageUrl: 'assets/images/catImages/c7-7.jpeg',
    businessUrl: 'https://www.instagram.com/fashiondesigner.norhanbakry/',
    phoneNumber: '01006645859',
    rating: 4,
    price: 10000,
  ),
  Vendor(
    name: 'Beshoy & Madona',
    id: 'C7',
    category: 'Fashion Designer',
    imageUrl: 'assets/images/catImages/c7-8.jpeg',
    businessUrl: 'https://www.instagram.com/beshoy_wedding_dresses/',
    phoneNumber: '01011997299',
    rating: 4,
    price: 10000,
  ),
  Vendor(
    name: 'Ishraqa jewelry',
    id: 'C8',
    category: 'Jewelry',
    imageUrl: 'assets/images/catImages/c8-2.jpeg',
    businessUrl: 'https://www.instagram.com/ishraqa.jewelry/',
    phoneNumber: '01098267764',
    rating: 5,
    price: 20000,
  ),
  Vendor(
    name: 'Zayed jewelry',
    id: 'C8',
    category: 'Jewelry',
    imageUrl: 'assets/images/catImages/c8-3.jpeg',
    businessUrl: 'https://www.instagram.com/zayed.jewellery/',
    phoneNumber: '01000021877',
    rating: 4,
    price: 17500,
  ),
  Vendor(
    name: 'Khorrassany Jewelery',
    id: 'C8',
    category: 'Jewelry',
    imageUrl: 'assets/images/catImages/c8-4.jpeg',
    businessUrl: 'https://www.instagram.com/khorrassany_jewellery/',
    phoneNumber: '01007920000',
    rating: 4,
    price: 15000,
  ),
  Vendor(
    name: 'Idar Jewelery',
    id: 'C8',
    category: 'Jewelry',
    imageUrl: 'assets/images/catImages/c8-5.jpeg',
    businessUrl: 'https://www.instagram.com/idar_jewellery/',
    phoneNumber: '01065949383',
    rating: 4,
    price: 15000,
  ),
  Vendor(
    name: 'Bajocchi Jewelery',
    id: 'C8',
    category: 'Jewelry',
    imageUrl: 'assets/images/catImages/c8-6.jpeg',
    businessUrl: 'https://www.instagram.com/bajocchi_jewellers/',
    phoneNumber: '01272550241',
    rating: 4,
    price: 10000,
  ),
  Vendor(
    name: 'Glamour Jewelery',
    id: 'C8',
    category: 'Jewelry',
    imageUrl: 'assets/images/catImages/c8-7.jpeg',
    businessUrl: 'https://www.instagram.com/glamour.jewellery/',
    phoneNumber: '01024444479',
    rating: 4,
    price: 50000,
  ),
  Vendor(
    name: 'Saraz Headpieces',
    id: 'C9',
    category: 'Head Piece',
    imageUrl: 'assets/images/catImages/c9-2.jpeg',
    businessUrl: 'https://www.instagram.com/saraz_headpieces/',
    phoneNumber: '01101423238',
    rating: 4,
    price: 20000,
  ),
  Vendor(
    name: 'Uniqueen Headpieces',
    id: 'C9',
    category: 'Head Piece',
    imageUrl: 'assets/images/catImages/c9-3.avif',
    businessUrl: 'https://www.instagram.com/uniqueen_headpiece/',
    phoneNumber: '01019791631',
    rating: 4,
    price: 15000,
  ),
  Vendor(
    name: 'Sara Medhat',
    id: 'C9',
    category: 'Head Piece',
    imageUrl: 'assets/images/catImages/c9-4.jpeg',
    businessUrl: 'https://www.instagram.com/headpiecebysara/',
    phoneNumber: '01061148621',
    rating: 5,
    price: 10000,
  ),
  Vendor(
    name: 'Centimes Bourgeois Headpieces',
    id: 'C9',
    category: 'Head Piece',
    imageUrl: 'assets/images/catImages/c9-6.png',
    businessUrl: 'https://www.instagram.com/cbheadpieces/',
    phoneNumber: '+961813517 35',
    rating: 4,
    price: 5000,
  ),
  Vendor(
    name: 'Halo Headpieces',
    id: 'C9',
    category: 'Head Piece',
    imageUrl: 'assets/images/catImages/c9-5.jpeg',
    businessUrl: 'https://www.instagram.com/halo.headpieces/',
    phoneNumber: '01091177332',
    rating: 4,
    price: 1500,
  ),
  Vendor(
    name: 'G.N Headpieces',
    id: 'C9',
    category: 'Head Piece',
    imageUrl: 'assets/images/catImages/c9-7.png',
    businessUrl: 'https://www.instagram.com/g.n_headpieces/',
    phoneNumber: '01064111463',
    rating: 4,
    price: 1500,
  ),
  Vendor(
    name: 'Nour Ali',
    id: 'C10',
    category: 'Bouquet',
    imageUrl: 'assets/images/catImages/c10-2.jpeg',
    businessUrl: 'https://www.instagram.com/bouquet_bride_by_nour_ali/',
    phoneNumber: '01271715639',
    rating: 5,
    price: 15000,
  ),
  Vendor(
    name: 'Shimaa omar',
    id: 'C10',
    category: 'Bouquet',
    imageUrl: 'assets/images/catImages/c9-8.jpeg',
    businessUrl: 'https://www.instagram.com/bouquet_bride_by_shimaa_omar/',
    phoneNumber: '01202990622',
    rating: 4.5,
    price: 1500,
  ),
  Vendor(
    name: 'Sahar',
    id: 'C10',
    category: 'Bouquet',
    imageUrl: 'assets/images/catImages/c10-4.jpeg',
    businessUrl: 'https://www.instagram.com/bouquet_bride_by_sahar/',
    phoneNumber: '01028858078',
    rating: 4,
    price: 20000,
  ),
  Vendor(
    name: 'Mariam Hamdy',
    id: 'C10',
    category: 'Bouquet',
    imageUrl: 'assets/images/catImages/c10-5.jpeg',
    businessUrl: 'https://www.instagram.com/mariam_hamdy_bouquet/',
    phoneNumber: '01282542341',
    rating: 4,
    price: 1500,
  ),
  Vendor(
    name: 'Nashwa',
    id: 'C10',
    category: 'Bouquet',
    imageUrl: 'assets/images/catImages/c10-6.jpeg',
    businessUrl: 'https://www.instagram.com/nashwa_bride_bouquet/',
    phoneNumber: '01011862090',
    rating: 4,
    price: 1500,
  ),
];
