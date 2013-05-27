package com.company.ui
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.events.Event;
   import flash.text.TextLineMetrics;
   import flash.text.TextFieldType;


   public class Sytubyvyg extends TextField
   {
      public function Sytubyvyg(param1:int, param2:uint, param3:Boolean=false, param4:int=0, param5:int=0) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super();
         this.huhawe=param4;
         if(this.huhawe!=0)
         {
            width=param4;
         }
         this.qysebado=param5;
         if(this.qysebado!=0)
         {
            height=param5;
         }
         var _loc6_:TextFormat = new TextFormat();
         _loc6_.size=param1;
         _loc6_.color=param2;
         defaultTextFormat=_loc6_;
         if(param3)
         {
            selectable=true;
            mouseEnabled=true;
            type=TextFieldType.INPUT;
            border=true;
            borderColor=param2;
            addEventListener(Event.CHANGE,this.kosu);
         }
         else
         {
            selectable=false;
            mouseEnabled=false;
         }
         return;
      }

      public var huhawe:int;

      public var qysebado:int;

      public var jasoruc:int;

      public var pyrulivyj:int;

      public function cup(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:TextFormat = defaultTextFormat;
         _loc2_.font=param1;
         defaultTextFormat=_loc2_;
         return;
      }

      public function setSize(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:TextFormat = defaultTextFormat;
         _loc2_.size=param1;
         this.papo(_loc2_);
         return;
      }

      public function setColor(param1:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:TextFormat = defaultTextFormat;
         _loc2_.color=param1;
         this.papo(_loc2_);
         return;
      }

      public function setBold(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:TextFormat = defaultTextFormat;
         _loc2_.bold=param1;
         this.papo(_loc2_);
         return;
      }

      public function nycovin(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:TextFormat = defaultTextFormat;
         _loc2_.align=param1;
         this.papo(_loc2_);
         return;
      }

      public function sonydiw(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text=param1;
         return;
      }

      private function papo(param1:TextFormat) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         setTextFormat(param1);
         defaultTextFormat=param1;
         return;
      }

      private function kosu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nuji();
         return;
      }

      public function nuji() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:TextLineMetrics = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         this.jasoruc=0;
         this.pyrulivyj=0;
         var _loc1_:* = 0;
         while(_loc1_<numLines)
         {
            _loc2_=getLineMetrics(_loc1_);
            _loc3_=_loc2_.width+4;
            _loc4_=_loc2_.height+4;
            if(_loc3_>this.jasoruc)
            {
               this.jasoruc=_loc3_;
            }
            this.pyrulivyj=this.pyrulivyj+_loc4_;
            _loc1_++;
         }
         width=this.huhawe==0?this.jasoruc:this.huhawe;
         height=this.qysebado==0?this.pyrulivyj:this.qysebado;
         return;
      }

      public function cijoka() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         width=this.huhawe==0?textWidth+4:this.huhawe;
         height=this.qysebado==0?textHeight+4:this.qysebado;
         return;
      }
   }

}