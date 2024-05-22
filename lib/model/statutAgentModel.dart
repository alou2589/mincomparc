import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class AgentModel {
  int? id;
  int? type_agent_id;
  int? agent_id;
  int? poste_id;
  int? hierarchie;
  int? grade;
  int? echellon;
  String? matricule;
  String? fonction;
  String? date_prise_service;
  String? date_debut_ministere;
  String? date_avancement;

  static AgentModel? agentDetail;

  AgentModel({this.id,this.type_agent_id,this.agent_id,this.poste_id,this.hierarchie,this.grade,this.echellon,this.matricule,
    this.fonction, this.date_prise_service,this.date_avancement,this.date_debut_ministere
  });
  factory AgentModel.fromJson(Map<String, dynamic> i)=>AgentModel(
    id: i['id'],
    type_agent_id: i['type_agent_id'],
    agent_id: i['agent_id'],
    poste_id: i['poste_id'],
    hierarchie: i['hierarchie'],
    grade: i['grade'],
    echellon: i['echellon'],
    matricule: i['matricule'],
    fonction: i['fonction'],
    date_prise_service: i['date_prise_service'],
    date_debut_ministere: i['date_debut_ministere'],
    date_avancement: i['date_avancement'],
  );
  Map<String, dynamic>? toMap()=>{
    "type_agent_id":type_agent_id,
    "agent_id":agent_id,
    "poste_id":poste_id,
    "hierarchie":hierarchie,
    "grade":grade,
    "echellon":echellon,
    "matricule":matricule,
    "fonction":fonction,
    "date_prise_service":date_prise_service,
    "date_debut_ministere":date_debut_ministere,
    "date_avancement":date_avancement,
  };
}