namespace bookstore;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity book
{
    key ID : UUID
        @Core.Computed;
    title : String(30);
    datePublished : Date;
    genre : String(20);
    to_publisher : Association to one publisher;
    to_author : Association to one author;
    to_pricing : Association to one pricing;
    to_series : Association to one series;
    to_providers : Association to one providers;
}

entity publisher
{
    key publisherID : String;
    yearFounded : String;
    countryOrigin : String;
}

entity author
{
    key penName : String;
    firstName : String;
    middleName : String;
    lastName : String;
    dob : Date;
    nationality : String;
}

entity pricing
{
    key ID : UUID
        @Core.Computed;
    priceUSD : Decimal;
    priceCAD : Decimal;
    priceCNY : Decimal;
}

entity series
{
    key seriesID : String;
    title : String;
}

entity providers
{
    key storeID : String;
    description : String;
}
