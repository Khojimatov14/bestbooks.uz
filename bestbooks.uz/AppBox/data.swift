////
////  data.swift
////  BestBooks.uz
////
////  Created by Anvarjon Khojimatov on 2022/02/14.
////
//
//import Foundation
//import SwiftUI
//
//let romanlar: [BookModel] = [
//    BookModel(
//        bookImage: Image("kitob4"),
//        bookName: "romanlar",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "20.000"),
//    BookModel(
//        bookImage: Image("kitob1"),
//        bookName: "romanlar",
//        bookAuthor: "Abdulla Oripov",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "15.000"),
//    BookModel(
//        bookImage: Image("kitob2"),
//        bookName: "romanlar",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "16.000"),
//    BookModel(
//        bookImage: Image("kitob3"),
//        bookName: "romanlar",
//        bookAuthor: "Leonardo Dovinchi",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "18.000"),
//    BookModel(
//        bookImage: Image("kitob4"),
//        bookName: "romanlar",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "20.000"),
//    BookModel(
//        bookImage: Image("kitob5"),
//        bookName: "romanlar",
//        bookAuthor: "Malkolm Gladuel",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "14.000")
//    ]
//
//let diniy: [BookModel] = [
//    BookModel(
//        bookImage: Image("kitob1"),
//        bookName: "diniy",
//        bookAuthor: "Abdulla Oripov",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "15.000"),
//    BookModel(
//        bookImage: Image("kitob1"),
//        bookName: "diniy",
//        bookAuthor: "Abdulla Oripov",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "15.000"),
//    BookModel(
//        bookImage: Image("kitob2"),
//        bookName: "diniy",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "16.000"),
//    BookModel(
//        bookImage: Image("kitob3"),
//        bookName: "diniy",
//        bookAuthor: "Leonardo Dovinchi",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "18.000"),
//    BookModel(
//        bookImage: Image("kitob4"),
//        bookName: "diniy",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "20.000"),
//    BookModel(
//        bookImage: Image("kitob5"),
//        bookName: "diniy",
//        bookAuthor: "Malkolm Gladuel",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "14.000")
//    ]
//
//let biznes: [BookModel] = [
//    BookModel(
//        bookImage: Image("kitob2"),
//        bookName: "Biznes",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "16.000"),
//    BookModel(
//        bookImage: Image("kitob1"),
//        bookName: "Biznes",
//        bookAuthor: "Abdulla Oripov",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "15.000"),
//    BookModel(
//        bookImage: Image("kitob2"),
//        bookName: "Biznes",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "16.000"),
//    BookModel(
//        bookImage: Image("kitob3"),
//        bookName: "Biznes",
//        bookAuthor: "Leonardo Dovinchi",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "18.000"),
//    BookModel(
//        bookImage: Image("kitob4"),
//        bookName: "Biznes",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "20.000"),
//    BookModel(
//        bookImage: Image("kitob5"),
//        bookName: "Biznes",
//        bookAuthor: "Malkolm Gladuel",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "14.000")
//    ]
//
//let sherlar: [BookModel] = [
//    BookModel(
//        bookImage: Image("kitob1"),
//        bookName: "sherlar",
//        bookAuthor: "Abdulla Oripov",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "15.000"),
//    BookModel(
//        bookImage: Image("kitob2"),
//        bookName: "sherlar",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "16.000"),
//    BookModel(
//        bookImage: Image("kitob3"),
//        bookName: "sherlar",
//        bookAuthor: "Leonardo Dovinchi",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "18.000"),
//    BookModel(
//        bookImage: Image("kitob4"),
//        bookName: "sherlar",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "20.000"),
//    BookModel(
//        bookImage: Image("kitob5"),
//        bookName: "sherlar",
//        bookAuthor: "Malkolm Gladuel",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "14.000")
//    ]
//
//let hikoyalar: [BookModel] = [
//    BookModel(
//        bookImage: Image("kitob1"),
//        bookName: "hikoyalar",
//        bookAuthor: "Abdulla Oripov",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "15.000"),
//    BookModel(
//        bookImage: Image("kitob2"),
//        bookName: "hikoyalar",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.",
//        bookPrice: "16.000"),
//    BookModel(
//        bookImage: Image("kitob3"),
//        bookName: "hikoyalar",
//        bookAuthor: "Leonardo Dovinchi",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "18.000"),
//    BookModel(
//        bookImage: Image("kitob4"),
//        bookName: "hikoyalar",
//        bookAuthor: "Robert Kiyosaki",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "20.000"),
//    BookModel(
//        bookImage: Image("kitob5"),
//        bookName: "hikoyalar",
//        bookAuthor: "Malkolm Gladuel",
//        bookExcerpt: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair. Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carriers on the simplesty and honestly of the archetypical chair.Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft.", bookPrice: "14.000")
//    ]
//
