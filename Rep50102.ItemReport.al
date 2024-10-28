namespace ALProject.ALProject;

using Microsoft.Inventory.Item;

report 50102 ItemReport
{
    ApplicationArea = All;
    Caption = 'ItemReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Item report.RDL';

    dataset
    {
        dataitem(Item; Item)
        {
            column(Type; "Type")
            {
            }
            column(Profit; "Profit %")
            {
            }
            column(No; "No.")
            {
            }
            column(ItemCategoryId; "Item Category Id")
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
