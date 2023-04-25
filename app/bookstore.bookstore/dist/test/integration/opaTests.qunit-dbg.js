sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bookstore/bookstore/test/integration/FirstJourney',
		'bookstore/bookstore/test/integration/pages/bookList',
		'bookstore/bookstore/test/integration/pages/bookObjectPage'
    ],
    function(JourneyRunner, opaJourney, bookList, bookObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bookstore/bookstore') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThebookList: bookList,
					onThebookObjectPage: bookObjectPage
                }
            },
            opaJourney.run
        );
    }
);