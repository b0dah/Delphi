unit AppServer_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 8/25/2019 1:49:40 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\delphi\AppServer (1)
// LIBID: {E7B13CBD-28CD-4C0A-BE2A-E02C554F2EA0}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 Midas, (C:\Program Files (x86)\Embarcadero\Studio\16.0\bin64\midas.dll)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, Midas, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AppServerMajorVersion = 1;
  AppServerMinorVersion = 0;

  LIBID_AppServer: TGUID = '{E7B13CBD-28CD-4C0A-BE2A-E02C554F2EA0}';

  IID_IDataServer: TGUID = '{DBD90D86-1D46-40B1-945F-E95E52BA8CC9}';
  CLASS_DataServer: TGUID = '{04D6CFF4-497D-4C90-88C8-1B55A4558F89}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IDataServer = interface;
  IDataServerDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  DataServer = IDataServer;


// *********************************************************************//
// Interface: IDataServer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBD90D86-1D46-40B1-945F-E95E52BA8CC9}
// *********************************************************************//
  IDataServer = interface(IAppServer)
    ['{DBD90D86-1D46-40B1-945F-E95E52BA8CC9}']
  end;

// *********************************************************************//
// DispIntf:  IDataServerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBD90D86-1D46-40B1-945F-E95E52BA8CC9}
// *********************************************************************//
  IDataServerDisp = dispinterface
    ['{DBD90D86-1D46-40B1-945F-E95E52BA8CC9}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: SYSINT;
                             out ErrorCount: SYSINT; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: SYSINT; out RecsOut: SYSINT;
                           Options: SYSINT; const CommandText: WideString; var Params: OleVariant;
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: SYSINT;
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString;
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoDataServer provides a Create and CreateRemote method to
// create instances of the default interface IDataServer exposed by
// the CoClass DataServer. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoDataServer = class
    class function Create: IDataServer;
    class function CreateRemote(const MachineName: string): IDataServer;
  end;

implementation

uses System.Win.ComObj;

class function CoDataServer.Create: IDataServer;
begin
  Result := CreateComObject(CLASS_DataServer) as IDataServer;
end;

class function CoDataServer.CreateRemote(const MachineName: string): IDataServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataServer) as IDataServer;
end;

end.

