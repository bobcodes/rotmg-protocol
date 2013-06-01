package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
   import flash.text.TextFieldAutoSize;


   public class Qikavajyw extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qikavajyw(param1:int) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pilif=new GraphicsSolidFill(16777215,1);
         this.fawery=new GraphicsSolidFill(8355711,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.pilif;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         super();
         this.vodudi=param1;
         return;
      }

      protected static const halinyhu:int = 4;

      public var vodudi:int = 0;

      protected var text_:Lufub;

      protected var w_:int;

      protected var pilif:GraphicsSolidFill;

      protected var fawery:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      protected const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      protected function femo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.w_=this.vodudi!=0?this.vodudi:this.text_.width+12;
         this.text_.x=this.w_/2;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(0,0,this.w_,this.text_.height+halinyhu*2,4,[1,1,1,1],this.path_);
         return;
      }

      public function debiryno(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_=this.makeText().setSize(param1).setColor(3552822);
         this.text_.setBold(true);
         this.text_.setAutoSize(TextFieldAutoSize.CENTER);
         this.text_.y=halinyhu;
         addChild(this.text_);
         return;
      }

      protected function makeText() : Lufub {
         return new Lufub();
      }
   }

}