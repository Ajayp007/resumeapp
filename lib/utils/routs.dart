import 'package:flutter/material.dart';
import 'package:resumeapp/screen/achievements/achievements_screen.dart';
import 'package:resumeapp/screen/carrier/carrier_screen.dart';
import 'package:resumeapp/screen/declaration/declaration_screen.dart';
import 'package:resumeapp/screen/education/education_screen.dart';
import 'package:resumeapp/screen/experiences/experiences_screen.dart';
import 'package:resumeapp/screen/interest/interest_screen.dart';
import 'package:resumeapp/screen/personal/personal_screen.dart';
import 'package:resumeapp/screen/projects/projects_screen.dart';
import 'package:resumeapp/screen/reference/reference_screen.dart';
import 'package:resumeapp/screen/technical/technical_screen.dart';
import '../screen/contact/contact_screen.dart';
import '../screen/homescreen/home_screen.dart';

Map<String,WidgetBuilder> name ={
  '/': (context) => const HomeScreen(),
  'contact': (context) => const ContactInfoScreen(),
  'carrier': (context) => const CarrierScreen(),
  'personal': (context) => const PersonalInfoScreen(),
  'education': (context) => const EducationScreen(),
  'experiences': (context) => const ExperienceScreen(),
  'technical': (context) => const TechnicalScreen(),
  'interest': (context) => const InterestScreen(),
  'project': (context) => const ProjectsScreen(),
  'achievements': (context) => const AchievementsScreen(),
  'reference': (context) => const ReferenceScreen(),
  'declaration': (context) => const DeclarationScreen(),
};