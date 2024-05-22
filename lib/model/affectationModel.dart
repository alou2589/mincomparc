import 'dart:convert';

class AgentModel {
  int? id;
  int? statut_agent_id;
  int? sous_structure_id;
  int? poste_id;
  String? status_affectation;
  String? date_affectation;

  static AgentModel? agentDetail;

  AgentModel({this.id,this.statut_agent_id,this.sous_structure_id,this.poste_id,this.status_affectation, this.date_affectation});
  factory AgentModel.fromJson(Map<String, dynamic> i)=>AgentModel(
    id: i['id'],
    statut_agent_id: i['statut_agent_id'],
    sous_structure_id: i['sous_structure_id'],
    poste_id: i['poste_id'],
    status_affectation: i['status_affectation'],
    date_affectation: i['date_affectation'],
  );
  Map<String, dynamic>? toMap()=>{
    "statut_agent_id":statut_agent_id,
    "sous_structure_id":sous_structure_id,
    "poste_id":poste_id,
    "status_affectation":status_affectation,
    "date_affectation":date_affectation,
  };
}