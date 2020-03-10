unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    blitz1Image: TImage;
    blitz2Image: TImage;
    toggleBox: TCheckBox;
    daytimeButton: TButton;
    copyright: TLabel;
    rainButton: TButton;
    thunderstormButton: TButton;
    snowButton: TButton;
    rain3Image: TImage;
    rain2Image: TImage;
    rain4Image: TImage;
    snow1Image: TImage;
    moonImage: TImage;
    rain1Image: TImage;
    snow2Image: TImage;
    snow3Image: TImage;
    snow4Image: TImage;
    snow5Image: TImage;
    snow6Image: TImage;
    sunImage: TImage;
    procedure daytimeButtonClick(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight,
      MaxWidth, MaxHeight: TConstraintSize);
    procedure rainButtonClick(Sender: TObject);
    procedure rainButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rainButtonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure snowButtonClick(Sender: TObject);
    procedure snowButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure snowButtonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure thunderstormButtonClick(Sender: TObject);
    procedure thunderstormButtonMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure thunderstormButtonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.daytimeButtonClick(Sender: TObject);
begin
  if sunImage.Visible then
  begin
    sunImage.Hide;
    moonImage.Show;
    Form1.Color:= clWindowFrame;
    Form1.Caption:= 'Wetter Simulator - Nacht';
  end
  else
  begin
    sunImage.Show;
    moonImage.Hide;
    Form1.Color:= clActiveBorder;
    Form1.Caption:= 'Wetter Simulator - Tag';
  end;
end;

procedure TForm1.FormConstrainedResize(Sender: TObject; var MinWidth,
  MinHeight, MaxWidth, MaxHeight: TConstraintSize);
begin

end;

procedure TForm1.rainButtonClick(Sender: TObject);
begin
  if rain1Image.Visible
  then
    begin
      if blitz1Image.Visible
      then
        begin
          blitz1Image.Hide;
          blitz2Image.Hide;
        end
      else
        begin
          rain1Image.Hide;
          rain2Image.Hide;
          rain3Image.Hide;
          rain4Image.Hide;
        end;
    end
  else
    begin
      rain1Image.Show;
      rain2Image.Show;
      rain3Image.Show;
      rain4Image.Show;
    end;
end;

procedure TForm1.rainButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if toggleBox.Checked
  then
    begin
      rain1Image.Show;
      rain2Image.Show;
      rain3Image.Show;
      rain4Image.Show;
    end;
end;

procedure TForm1.rainButtonMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if toggleBox.Checked
  then
    begin
      rain1Image.Hide;
      rain2Image.Hide;
      rain3Image.Hide;
      rain4Image.Hide;
    end;
end;

procedure TForm1.snowButtonClick(Sender: TObject);
begin
  if snow1Image.Visible
  then
    begin
      snow1Image.Hide;
      snow2Image.Hide;
      snow3Image.Hide;
      snow4Image.Hide;
      snow5Image.Hide;
      snow6Image.Hide;
    end
  else
    begin
      snow1Image.Show;
      snow2Image.Show;
      snow3Image.Show;
      snow4Image.Show;
      snow5Image.Show;
      snow6Image.Show;
    end;
end;

procedure TForm1.snowButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if toggleBox.Checked then
    begin
      snow1Image.Show;
      snow2Image.Show;
      snow3Image.Show;
      snow4Image.Show;
      snow5Image.Show;
      snow6Image.Show;
    end;
end;

procedure TForm1.snowButtonMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if toggleBox.Checked then
    begin
      snow1Image.Hide;
      snow2Image.Hide;
      snow3Image.Hide;
      snow4Image.Hide;
      snow5Image.Hide;
      snow6Image.Hide;
    end;
end;

procedure TForm1.thunderstormButtonClick(Sender: TObject);
begin
  if blitz1Image.Visible then
    begin
      blitz1Image.Hide;
      blitz2Image.Hide;
      rain1Image.Hide;
      rain2Image.Hide;
      rain3Image.Hide;
      rain4Image.Hide;
    end
  else
    begin
      rain1Image.Show;
      rain2Image.Show;
      rain3Image.Show;
      rain4Image.Show;
      blitz1Image.Show;
      blitz2Image.Show;
    end;
end;

procedure TForm1.thunderstormButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if toggleBox.Checked then
    begin
      rain1Image.Show;
      rain2Image.Show;
      rain3Image.Show;
      rain4Image.Show;
      blitz1Image.Show;
      blitz2Image.Show;
    end;
end;

procedure TForm1.thunderstormButtonMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if toggleBox.Checked then
    begin
      rain1Image.Hide;
      rain2Image.Hide;
      rain3Image.Hide;
      rain4Image.Hide;
      blitz1Image.Hide;
      blitz2Image.Hide;
    end;
end;

end.
