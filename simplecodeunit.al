codeunit 50105 "Get Values"
{
    [ServiceEnabled]
    procedure getValue(inputvalue: Decimal) returnvalue: Decimal
    begin
        returnvalue := inputvalue * inputvalue;
    end;
}