// namespace ALProject.ALProject;

// using Microsoft.Sales.Customer;

report 50104 "Report for multiple tables"
{
    ApplicationArea = All;
    Caption = 'Report for multiple tables';
    UsageCategory = Administration;
    DefaultLayout = RDLC;
    RDLCLayout = 'Multiple table report.rdl';


    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";
            PrintOnlyIfDetail = True;
            column(Name; Name)
            {
                IncludeCaption = true;
            }
            column(No_Customer; "No.")
            {
                IncludeCaption = true;
            }
            column(Phone_No_; "Phone No.")
            {
                IncludeCaption = true;
            }
            column(Address; Address)
            {
                IncludeCaption = true;
            }
            column(E_Mail; "E-Mail")
            {
                IncludeCaption = true;
            }
            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                DataItemTableView = sorting("Entry No.");
                DataItemLink = "Customer No." = Field("No.");
                column(Entry_No_Cust_Ledger_Entry; "Entry No.")
                {
                    IncludeCaption = true;
                }
                column(Customer_No_Cust_Ledger_Entry; "Customer No.")
                {
                    IncludeCaption = true;
                }
                column(Posting_Date_Cust_Ledger_Entry; "Posting Date")
                {
                    IncludeCaption = true;
                }
                column(Document_Type_Cust_Ledger_Entry; "Document Type")
                {
                    IncludeCaption = true;
                }
                column(Document_No_Cust_Ledger_Entry; "Document No.")
                {
                    IncludeCaption = true;
                }
                column(Description_Cust_Ledger_Entry; Description)
                {
                    IncludeCaption = true;
                }
                column(Currency_Code_Cust_Ledger_Entry; "Currency Code")
                {
                    IncludeCaption = true;
                }
                column(Original_Amt___LCY_Cust_Ledger_Entry; "Original Amt. (LCY)")
                {
                    IncludeCaption = true;
                }
                column(Remaining_Amount_Cust_Ledger_Entry; "Remaining Amount")
                {
                    IncludeCaption = true;
                }
                dataitem(DetCustLedger; "Detailed Cust. Ledg. Entry")
                {

                    DataItemTableView = sorting("entry no.");
                    DataItemLink = "Cust. Ledger Entry No." = field("Entry No."), "Customer No." = field("Customer No.");

                    column(EntryNo_DetailedCustLedgEntry; "Entry No.")
                    {
                        IncludeCaption = true;

                    }

                    column(EntryType_DetailedCustLedgEntry; "Entry Type")
                    {
                        IncludeCaption = true;

                    }

                    column(PostingDate_DetailedCustLedgEntry; "Posting Date")
                    {
                        IncludeCaption = true;

                    }

                    column(DocumentType_DetailedCustLedgEntry; "Document Type")
                    {
                        IncludeCaption = true;

                    }

                    column(DocumentNo_DetailedCustLedgEntry; "Document No.")
                    {
                        IncludeCaption = true;

                    }

                    column(AmountLCY_DetailedCustLedgEntry; "Amount (LCY)")
                    {
                        IncludeCaption = true;

                    }

                    column(TransactionNo_DetailedCustLedgEntry; "Transaction No.")
                    {
                        IncludeCaption = true;

                    }

                    column(JournalBatchName_DetailedCustLedgEntry; "Journal Batch Name")
                    {
                        IncludeCaption = true;

                    }

                    column(DebitAmountLCY_DetailedCustLedgEntry; "Debit Amount (LCY)")
                    {
                        IncludeCaption = true;

                    }

                    column(CreditAmountLCY_DetailedCustLedgEntry; "Credit Amount (LCY)")
                    {
                        IncludeCaption = true;

                    }

                }
            }

            dataitem(SalesHeader; "Sales Header")
            {
                DataItemTableView = sorting("Document Type", "No.");
                DataItemLink = "Sell-to Customer No." = field("No.");

                column(DocumentType_SalesHeader; "Document Type")
                {
                    IncludeCaption = true;

                }

                column(No_SalesHeader; "No.")
                {
                    IncludeCaption = true;

                }

                column(PostingDate_SalesHeader; "Posting Date")
                {
                    IncludeCaption = true;

                }

                column(PricesIncludingVAT_SalesHeader; "Prices Including VAT")
                {
                    IncludeCaption = true;

                }

                column(Amount_SalesHeader; Amount)
                {
                    IncludeCaption = true;

                }
            }

        }
    }


    labels
    {
        Sales_Document_Caption = 'Sales Documents';
        Total_Caption = 'Total';
    }
}