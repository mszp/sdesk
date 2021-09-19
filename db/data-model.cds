namespace fabone.sdesk;

type SDate : Timestamp;
type SString : String(100);
type LString : String(255);
type XXLString : String(5000);
type sCode : String(20);
type sSingleChar : String(1);
type sSingle : String(1);


entity ServiceTickets {
    key Code                 : sCode;
        ServiceModule        : SString;
        Category             : SString;
        Subcategory          : SString;
        Title                : SString;
        Product              : SString;
        Description          : LString;
        Priority             : SString;
        Requester            : SString;
        DueDate              : sCode;
        CustomerType         : SString;
        RemoteSessionID      : SString;
        CreatedBy            : SString;
        CreatedDate          : sCode;
        UpdatedBy            : sCode;
        UpdatedDate          : sCode;
        Status               : SString; //(Pending/Unassigned/Inprogress/Completed/On Hold/Escalated/Closed)
        CommunicationChannel : SString; // (Phone/Twitter/Email/Facebook/Web/Chat/Forums)
        Language             : SString;
        Attachments          : SString;
        AttendedBy           : SString;
        AttendedDate         : sCode;

}

entity ServiceCategory {
    key Code          : sCode;
        Category      : SString;
        ServiceModule : SString;
}

entity ServiceCategoryAgent {
    key Code       : sCode;
        Category   : SString;
        AgentID    : SString;
        AgentEmail : SString;
}

entity ServiceModule {
    key Code          : sCode;
        ServiceModule : SString;
}

entity CustomFields {
    key Code          : sCode;
        FieldName     : SString;
        DataType      : SString;
        DataSize      : Decimal;
        ServiceModule : SString;

}
