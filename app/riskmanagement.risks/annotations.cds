using RiskManagementService as service from '../../srv/service';
annotate service.Riscos with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Titulo',
                Value : Titulo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FornecedorID',
                Value : FornecedorID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Prio',
                Value : Prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impacto',
                Value : Impacto,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Criticidade',
                Value : Criticidade,
            },
            {
                $Type : 'UI.DataField',
                Value : Fornecedor.BusinessPartnerID,
                Label : 'BusinessPartnerID',
            },
            {
                $Type : 'UI.DataField',
                Value : Fornecedor.BusinessPartnerIsBlocked,
                Label : 'BusinessPartnerIsBlocked',
            },
            {
                $Type : 'UI.DataField',
                Value : Mitigacoes.ID,
                Label : 'ID',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'FornecedorID',
            Value : FornecedorID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Titulo',
            Value : Titulo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Prio',
            Value : Prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impacto',
            Value : Impacto,
        },
        {
            $Type : 'UI.DataField',
            Value : Fornecedor.BusinessPartnerID,
            Label : 'BusinessPartnerID',
        },
        {
            $Type : 'UI.DataField',
            Value : Fornecedor.BusinessPartnerIsBlocked,
            Label : 'BusinessPartnerIsBlocked',
        },
        {
            $Type : 'UI.DataField',
            Value : Fornecedor.BusinessPartnerFullName,
            Label : 'BusinessPartnerFullName',
        },
        {
            $Type : 'UI.DataField',
            Value : Mitigacoes.ID,
            Label : 'ID',
        },
    ],
);

