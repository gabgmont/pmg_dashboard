import 'package:flutter/material.dart';
import 'package:module_design/assets/pmg_icons.dart';
import 'package:module_design/styles/pmg_colors.dart';

enum ProcessStatus {
  validatingForm,
  sendToAnalysys,
  analyzing,
  approved,
  emittingProposal,
  signedDocuments,
  sendToInsuranceCompany,
  emittingPolicy,
  policyEmmited,
  concluded,
  refused,
  canceled,
  unknown
}

extension ProcessStatusConfig on ProcessStatus {
  String get description {
    switch (this) {
      case ProcessStatus.validatingForm:
        return 'Validando formulário';
      case ProcessStatus.sendToAnalysys:
        return 'Enviar para análise';
      case ProcessStatus.analyzing:
        return 'Em análise';
      case ProcessStatus.approved:
        return 'Aprovado';
      case ProcessStatus.emittingProposal:
        return 'Emitindo proposta';
      case ProcessStatus.signedDocuments:
        return 'Aguardando assinaturas';
      case ProcessStatus.sendToInsuranceCompany:
        return 'Enviar para seguradora';
      case ProcessStatus.emittingPolicy:
        return 'Emitindo apólice';
      case ProcessStatus.policyEmmited:
        return 'Apólice emitida';
      case ProcessStatus.concluded:
        return 'Concluído';
      case ProcessStatus.refused:
        return 'Recusado';
      case ProcessStatus.canceled:
        return 'Concelado';
      case ProcessStatus.unknown:
        return 'Desconhecido';
    }
  }

  PmgIcons get icon {
    switch (this) {
      case ProcessStatus.validatingForm:
      case ProcessStatus.sendToAnalysys:
        return PmgIcons.new_item;
      case ProcessStatus.analyzing:
      case ProcessStatus.approved:
      case ProcessStatus.emittingProposal:
      case ProcessStatus.signedDocuments:
      case ProcessStatus.sendToInsuranceCompany:
      case ProcessStatus.emittingPolicy:
      case ProcessStatus.policyEmmited:
        return PmgIcons.pending;
      case ProcessStatus.concluded:
        return PmgIcons.approved;
      case ProcessStatus.refused:
        return PmgIcons.refused;
      case ProcessStatus.canceled:
        return PmgIcons.cancel;
      case ProcessStatus.unknown:
        return PmgIcons.new_item;
    }
  }

  Color get color {
    switch (this) {
      case ProcessStatus.validatingForm:
      case ProcessStatus.sendToAnalysys:
        return PmgColors.statusError;
      case ProcessStatus.analyzing:
      case ProcessStatus.approved:
      case ProcessStatus.emittingProposal:
      case ProcessStatus.signedDocuments:
      case ProcessStatus.sendToInsuranceCompany:
      case ProcessStatus.emittingPolicy:
      case ProcessStatus.policyEmmited:
        return PmgColors.statusWarning;
      case ProcessStatus.concluded:
        return PmgColors.statusSuccess;
      case ProcessStatus.refused:
      case ProcessStatus.canceled:
      case ProcessStatus.unknown:
        return PmgColors.statusError;
    }
  }
}
