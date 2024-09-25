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
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    audioLen: "20",
    author: "Dr. Henry Cloud",
    aboutAuthor: "Hi my name is Nafi and I written this book",
    coverUrl: "Assets/Images/boundraries.jpg",
    rating: "4.2",
    category: "Documentary",
    price: 100,
    pages: 200,
    language: "ENG",
    bookurl: "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",

  ),
  BookModel(
    id: "2",
    title: "Daily Stoic",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    audioLen: "20",
    author: "Ryan Halliday",
    aboutAuthor: "I am Ryan and I have written this book",
    coverUrl: "Assets/Images/daily stoic.jpg",
    rating: "4.2",
    category: "Documentary",
    price: 100,
    pages: 300,
    language: "ENG",
    bookurl: "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",

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
    pages: 100,
    language: "ENG",
    bookurl: "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",
  ),
];
