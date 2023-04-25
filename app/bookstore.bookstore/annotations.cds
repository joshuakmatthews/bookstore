using bookstoreService as service from '../../srv/service';

annotate service.book with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Genre',
            Value : genre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Publisher',
            Value : to_publisher_publisherID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Author',
            Value : to_author_penName,
        },
        {
            $Type : 'UI.DataField',
            Value : to_series_seriesID,
            Label : 'Series',
        },
    ]
);
annotate service.book with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Date of Publication',
                Value : datePublished,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Genre',
                Value : genre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Publisher',
                Value : to_publisher_publisherID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Series',
                Value : to_series_seriesID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'About the Book',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'About the Author',
            ID : 'AbouttheAuthor',
            Target : '@UI.FieldGroup#AbouttheAuthor',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'About the Series',
            ID : 'AbouttheSeries',
            Target : '@UI.FieldGroup#AbouttheSeries',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'How to Buy',
            ID : 'WheretoBuy',
            Facets : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Pricing',
            ID : 'Pricing',
            Target : '@UI.FieldGroup#Pricing',
        },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Retailers',
                    ID : 'Retailers',
                    Target : '@UI.FieldGroup#Retailers',
                },
                ],
        },
    ]
);
annotate service.book with @(
    UI.FieldGroup #Pricing : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_pricing.priceCAD,
                Label : 'Canadian Dollar',
            },{
                $Type : 'UI.DataField',
                Value : to_pricing.priceCNY,
                Label : 'Chinese Yuan',
            },{
                $Type : 'UI.DataField',
                Value : to_pricing.priceUSD,
                Label : 'US Dollar',
            },],
    }
);
annotate service.book with @(
    UI.FieldGroup #AbouttheAuthor : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Author',
                Value : to_author_penName,
            },
            {
                $Type : 'UI.DataField',
                Value : to_author.dob,
                Label : 'Date of Birth',
            },
            {
                $Type : 'UI.DataField',
                Value : to_author.firstName,
                Label : 'First Name',
            },
            {
                $Type : 'UI.DataField',
                Value : to_author.lastName,
                Label : 'Last Name',
            },
            {
                $Type : 'UI.DataField',
                Value : to_author.middleName,
                Label : 'Middle Name',
            },
            {
                $Type : 'UI.DataField',
                Value : to_author.nationality,
                Label : 'Nationality',
            },],
    }
);
annotate service.book with @(
    UI.FieldGroup #AbouttheSeries : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_series.seriesID,
                Label : 'Series',
            },
            {
                $Type : 'UI.DataField',
                Value : to_series.title,
                Label : 'Title(s)',
            },],
    }
);
annotate service.book with @(
    UI.FieldGroup #Pricing1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.book with @(
    UI.FieldGroup #Retailers : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_providers.description,
                Label : 'Name',
            },],
    }
);
