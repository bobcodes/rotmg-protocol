package com.company.assembleegameclient.ui
{
[CLASS706]   import flash.display.Sprite;
   import pudev.Capitu;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import flash.text.TextFieldAutoSize;


   public class Sugycoja extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Sugycoja(param1:int) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jenupy=new GraphicsSolidFill(16777215,1);
         this.ruwini=new GraphicsSolidFill(8355711,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.jenupy;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         super();
         this.rocu=param1;
         return;
      }

      protected static const batusow:int = 4;

      public var rocu:int = 0;

      protected var text_:Capitu;

      protected var w_:int;

      protected var jenupy:GraphicsSolidFill;

      protected var ruwini:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      protected const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      protected function quryzov() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.w_=this.rocu!=0?this.rocu:this.text_.width+12;
         this.text_.x=this.w_/2;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(0,0,this.w_,this.text_.height+batusow*2,4,[1,1,1,1],this.path_);
         return;
      }

      public function cyjobate(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text_=this.makeText().setSize(param1).setColor(3552822);
         this.text_.setBold(true);
         this.text_.setAutoSize(TextFieldAutoSize.CENTER);
         this.text_.y=batusow;
         addChild(this.text_);
         return;
      }

      protected function makeText() : Capitu {
         return new Capitu();
      }
   }
[/CLASS]
}