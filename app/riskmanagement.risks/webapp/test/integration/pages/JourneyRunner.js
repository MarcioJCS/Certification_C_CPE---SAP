sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"riskmanagement/risks/test/integration/pages/RiscosList",
	"riskmanagement/risks/test/integration/pages/RiscosObjectPage"
], function (JourneyRunner, RiscosList, RiscosObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('riskmanagement/risks') + '/test/flpSandbox.html#riskmanagementrisks-tile',
        pages: {
			onTheRiscosList: RiscosList,
			onTheRiscosObjectPage: RiscosObjectPage
        },
        async: true
    });

    return runner;
});

