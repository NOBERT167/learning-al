namespace ALProject.ALProject;

using Microsoft.Sales.Customer;

report 50101 CustomerReport
{
    ApplicationArea = All;
    Caption = 'CustomerReport';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'Customer Report.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Balance; Balance)
            {
            }
            column(City; City)
            {
            }
            column(Contact; Contact)
            {
            }
            column(Name; Name)
            {
            }
            column(PartnerType; "Partner Type")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
