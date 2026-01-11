
//using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds'; 
namespace RiskManagement;


entity Riscos {
  key ID          : UUID;
  FornecedorID    : String(100);
  Titulo          : String(100);
  Prio            : String(5);
  descr           : String(100);
  Impacto         : Integer;
  Criticidade     : Integer;

  Mitigacoes      : Composition of   Mitigacoes
   on Mitigacoes.Risco = $self;
}

entity Mitigacoes {
  key ID          : UUID;
  criadoAt        : String(100);
  criadoPor       : String(100);
  Descricao       : String(100);
  Proprietario    : String(100);
  LinhaTempo      : String(100);
  Risco          : Association to  Riscos;
}

