using RiskManagement from '../db/schema.cds';

using { BusinessPartnerA2X as BP } from '../srv/external/BusinessPartnerA2X.cds';

service RiskManagementService
{
    entity BusinessPartnerLocal
    {
        key BusinessPartnerID : String;
        Customer : String;
        Supplier : String;
        BusinessPartnerCategory : String;
        BusinessPartnerFullName : String;
        BusinessPartnerIsBlocked : Boolean;
    }

    @odata.draft.enabled
    entity Riscos as
        projection on RiskManagement.Riscos
        {
            *,
            Mitigacoes,
            FornecedorID : String,
            Fornecedor : Association to BusinessPartnerLocal on Fornecedor.BusinessPartnerID = FornecedorID
        };

    entity Mitigacoes as
        projection on RiskManagement.Mitigacoes
        {
            *,
            Risco
        };

    entity BusinessPartner as
        projection on BP.A_BusinessPartner
        {
            BusinessPartner,
            Customer,
            Supplier,
            BusinessPartnerCategory,
            BusinessPartnerFullName,
            BusinessPartnerIsBlocked
        };
}

annotate RiskManagementService with @requires :
[
    'RiskViewer',
    'RiskManager'
];
