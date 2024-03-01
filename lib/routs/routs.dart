import 'package:flutter/cupertino.dart';
import 'package:resumeapp/home/achievements/achievements.dart';
import 'package:resumeapp/home/carrier/carrier.dart';
import 'package:resumeapp/home/contect/contect.dart';
import 'package:resumeapp/home/declaration/declaration.dart';
import 'package:resumeapp/home/education/education.dart';
import 'package:resumeapp/home/experiences/experiences.dart';
import 'package:resumeapp/home/home_screen/home_screen.dart';
import 'package:resumeapp/home/interest/interest.dart';
import 'package:resumeapp/home/personal/personal.dart';
import 'package:resumeapp/home/projects/projects.dart';
import 'package:resumeapp/home/reference/reference.dart';
import 'package:resumeapp/home/technical/technical.dart';

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