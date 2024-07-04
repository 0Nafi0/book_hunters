import 'package:book_hunters/Models/BookModel.dart';

var categoryData = [
  {
    "icon": "Assets/Icons/heart.svg",
    "label": "Romance",
  },
  {
    "icon": "Assets/Icons/plane.svg",
    "label": "Travel",
  },
  {
    "icon": "Assets/Icons/world.svg",
    "label": "Documentary",
  },
  {
    "icon": "Assets/Icons/heart.svg",
    "label": "Love Stories",
  }
];

var bookData = [
  BookModel(
    id: "1",
    title: "Boundaries",
    description: "",
    audioLen: "20",
    author: "Nafi Bin Zafar",
    aboutAuthor: "Hi my name is Nafi and I written this book",
    coverUrl: "Assets/Images/boundaries.jpg",
    rating: "4.2",
    category: "Documentary",
    price: 100,
  ),
  BookModel(
    id: "2",
    title: "Daily Stoic",
    description: "",
    audioLen: "20",
    author: "Ryan Halliday",
    aboutAuthor: "I am Ryan and I have written this book",
    coverUrl: "Assets/Images/daily stoic.jpg",
    rating: "4.2",
    category: "Documentary",
    price: 100,
  ),
  BookModel(
    id: "3",
    title: "Give and Take",
    description: "",
    audioLen: "20",
    author: "Adam Grant",
    aboutAuthor: "Hi my name is Adam and I written this book",
    coverUrl: "Assets/Images/Give and Take.jpg",
    rating: "4.2",
    category: "Documentary",
    price: 100,
  ),
];
