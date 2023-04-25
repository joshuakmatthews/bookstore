using { bookstore as my } from '../db/schema';

using bookstore from '../db/schema';

@path : 'service/bookstore'
service bookstoreService
{
    annotate author with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Read' ] },
        { grant : [ '*' ], to : [ 'Write' ] }
    ];

    annotate book with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Read' ] },
        { grant : [ '*' ], to : [ 'Write' ] }
    ];

    annotate pricing with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Read' ] },
        { grant : [ '*' ], to : [ 'Write' ] }
    ];

    annotate providers with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Read' ] },
        { grant : [ '*' ], to : [ 'Write' ] }
    ];

    annotate publisher with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Read' ] },
        { grant : [ '*' ], to : [ 'Write' ] }
    ];

    annotate series with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Read' ] },
        { grant : [ '*' ], to : [ 'Write' ] }
    ];

    entity book as
        projection on my.book;

    entity publisher as
        projection on my.publisher;

    entity author as
        projection on my.author;

    entity series as
        projection on my.series;

    entity pricing as
        projection on my.pricing;

    entity providers as
        projection on my.providers;
}

annotate bookstoreService with @requires :
[
    'authenticated-user',
    'Read',
    'Write'
];
