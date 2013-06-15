package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import flash.text.TextFieldAutoSize;


   public class Sikosy extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sikosy(param1:int) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zow=new GraphicsSolidFill(16777215,1);
         this.movi=new GraphicsSolidFill(8355711,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.zow;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         super();
         this.qucehura=param1;
         return;
      }

      protected static const niqo:int = 4;

      public var qucehura:int = 0;

      protected var text_:Guzowoja;

      protected var w_:int;

      protected var zow:GraphicsSolidFill;

      protected var movi:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      protected const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      protected function gubunul() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.w_=this.qucehura!=0?this.qucehura:this.text_.width+12;
         this.text_.x=this.w_/2;
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(0,0,this.w_,this.text_.height+niqo*2,4,[1,1,1,1],this.path_);
         return;
      }

      public function zeledizi(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_=this.makeText().setSize(param1).setColor(3552822);
         this.text_.setBold(true);
         this.text_.setAutoSize(TextFieldAutoSize.CENTER);
         this.text_.y=niqo;
         addChild(this.text_);
         return;
      }

      protected function makeText() : Guzowoja {
         return new Guzowoja();
      }
   }

}