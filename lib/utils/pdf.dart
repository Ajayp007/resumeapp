import 'dart:html';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';

import 'global.dart';

var pdf = pw.Document();

void pdfGenerate() async {
  pdf.addPage(
    await pw.Page(
      pageFormat: PdfPageFormat.a4,
      margin: const pw.EdgeInsets.all(20),
      build: (pw.Context context) {
        return pw.Padding(
            padding:  const pw.EdgeInsets.all(20),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "Name :- ${g1.contactName}",
                          style: pw.TextStyle(
                              fontSize: 20, fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Text(
                          "E-mail :- ${g1.contactEmail}",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 16),
                        ),
                        pw.Text(
                          "Mobile :- ${g1.contactPhone}",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 16),
                        ),
                        pw.Text(
                          "Address :- ${g1.contactAdd}",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    Image.file(
                      File("${g1.profileImage}"),
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Divider(
                  height: 10,
                  
                  thickness: 2,
                ),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Text(
                  "Carrier Objectiv",
                  style: pw.TextStyle(
                      fontSize: 23,
                      fontWeight: pw.FontWeight.bold,
                      decoration: pw.TextDecoration.underline,
                      decorationStyle: pw.TextDecorationStyle.solid),
                ),
                pw.SizedBox(height: 10),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Course :- ${g1.carrierCourse}",
                      style: const pw.TextStyle(fontSize: 16),
                    ),
                    pw.Text(
                      "Work Experience :- ${g1.carrierExp}",
                      style: const pw.TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                pw.SizedBox(height: 10),
                pw.Divider(
                  height: 10,
                  color: Colors.black,
                  thickness: 2,
                ),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Text(
                  "Personal Details",
                  style: pw.TextStyle(
                      fontSize: 23,
                      fontWeight: pw.FontWeight.bold,
                      decoration: pw.TextDecoration.underline,
                      decorationStyle: pw.TextDecorationStyle.solid),
                ),
                pw.SizedBox(height: 10),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Date Of Birth :- ${g1.personalDob}",
                      style: const pw.TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    pw.Text(
                      "Marital Status :- ${g1.status}",
                      style: const pw.TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    pw.Text(
                      "Languages Known :- ${g1.personalDob}",
                      style: const pw.TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    pw.Text(
                      "Nationality :- ${g1.personalNation}",
                      style: const pw.TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),

        );
      },
    ),
  );
}
