namespace ALProject.ALProject;

using Microsoft.Purchases.Vendor;

report 50103 "Vendor report"
{
    ApplicationArea = All;
    Caption = 'Vendor report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Excel;
    ExcelLayout = 'Vendor Report.xlsx';

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(Address; Address)
            {
            }
            column(City; City)
            {
            }
            column(Contact; Contact)
            {
            }
            column(MobilePhoneNo; "Mobile Phone No.")
            {
            }
            column(Name; Name)
            {
            }
            column(No; "No.")
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
