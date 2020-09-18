import 'package:listening_book/model/course.dart';
import 'package:listening_book/model/listening_book.dart';

const bannerList = ['assets/images/banner01.png', 'assets/images/banner02.png'];

List featuredList = [
  ListeningBook(
    imageUrl: 'assets/images/listening_book1.png',
    title: 'The Forgotten Hours',
    author: 'Sarah Perez',
    price: 0.0,
    newPrice: 4.99,
    rating: 4.5,
  ),
  ListeningBook(
    imageUrl: 'assets/images/listening_book2.png',
    title: 'Whiskey in a acup',
    author: 'Frank Lee',
    price: 12.99,
    newPrice: 2.99,
    rating: 5.0,
  ),
  ListeningBook(
    imageUrl: 'assets/images/listening_book3.png',
    title: 'SHE: kate spade new york',
    author: 'Simon',
    price: 0.0,
    newPrice: 0.0,
    rating: 5.0,
  ),
  ListeningBook(
    imageUrl: 'assets/images/listening_book4.png',
    title: 'The Killer Collective',
    author: 'Sarah Perez',
    price: 12.99,
    newPrice: 2.99,
    rating: 4.0,
  ),
];

List latestedList = [
  ListeningBook(
    imageUrl: 'assets/images/latested1.png',
    title: 'Blood for Blood',
    newPrice: 0.0,
    time: '12:22:44',
    bookIntro:
        'Rush hour, London. A packed commuter train is torn apart in a collision. Picking through the carnage, ex-special forces profiler Ziba MacKenzie helps a dying woman who passes on a cryptic message: He did it. You have to tell someone.',
  ),
  ListeningBook(
    imageUrl: 'assets/images/latested2.png',
    title: 'The Killer Collective',
    newPrice: 2.99,
    time: '12:22:44',
    bookIntro:
        'put forward (someone or something) with approval as being suitable for a particular purpose or role.',
  ),
  ListeningBook(
    imageUrl: 'assets/images/latested3.png',
    title: 'Planner Weekly And Monthly',
    newPrice: 0.0,
    time: '12:22:44',
    bookIntro:
        'put forward (someone or something) with approval as being suitable for a particular purpose or role.',
  ),
  ListeningBook(
    imageUrl: 'assets/images/latested4.png',
    title: 'Anne Brigman',
    newPrice: 2.99,
    time: '12:22:44',
    bookIntro:
        'put forward (someone or something) with approval as being suitable for a particular purpose or role.',
  ),
  ListeningBook(
    imageUrl: 'assets/images/latested5.png',
    title: 'The Vocabulary of Style',
    newPrice: 0.0,
    time: '12:22:44',
    isVedio: true,
    bookIntro:
        'put forward (someone or something) with approval as being suitable for a particular purpose or role.',
  ),
];


List courseList = [
  Course(
    imageUrl: 'assets/images/course1.png',
    title: 'Learnr - Online Courses Educational App UI Kit',
    current: 12,
    total: 24,
  ),
  Course(
    imageUrl: 'assets/images/course2.png',
    title: 'Learnr - Online Courses Educational App UI Kit',
    current: 12,
    total: 30,
  ),
  Course(
    imageUrl: 'assets/images/course3.png',
    title: 'Learnr - Online Courses Educational App UI Kit',
    current: 12,
    total: 28,
    isVideo: true,
  ),
];
