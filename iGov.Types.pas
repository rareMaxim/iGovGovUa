unit iGov.Types;

interface

type

  TBaseItem = class
  private
    [JsonName('nID')]
    FID: Integer;
    [JsonName('nOrder')]
    FOrder: Integer;
    [JsonName('sID')]
    FIDText: string;
    [JsonName('sName')]
    FName: string;
  public
    property ID: Integer read FID write FID;
    property Order: Integer read FOrder write FOrder;
    property IDText: string read FIDText write FIDText;
    property Name: string read FName write FName;
  end;

  TService = class
  private
    FOpenedLimit: Integer;
    FSubjectOperatorName: string;
    FKeyword: string;
  public
    property OpenedLimit: Integer read FOpenedLimit write FOpenedLimit;
    property SubjectOperatorName: string read FSubjectOperatorName write FSubjectOperatorName;
    property Keyword: string read FKeyword write FKeyword;
  end;

  TSubCategory = class
  private
    [JsonName('aSubcategory')]
    FService: TArray<TSubCategory>;
  public
    property Service: TArray<TSubCategory> read FService write FService;
  end;

  TCategory = class(TBaseItem)
  private
    [JsonName('aSubcategory')]
    FSubcategory: TArray<TSubCategory>;
  public
    property Subcategory: TArray<TSubCategory> read FSubcategory write FSubcategory;

  end;

implementation

end.
