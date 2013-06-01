package com.company.ui
{
[CLASS326]   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.events.Event;
   import flash.text.TextLineMetrics;
   import flash.text.TextFieldType;


   public class Remyl extends TextField
   {
      public function Remyl(param1:int, param2:uint, param3:Boolean=false, param4:int=0, param5:int=0) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super();
         this.qysusu=param4;
         if(this.qysusu!=0)
         {
            width=param4;
         }
         this.zok=param5;
         if(this.zok!=0)
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
            addEventListener(Event.CHANGE,this.sunanah);
         }
         else
         {
            selectable=false;
            mouseEnabled=false;
         }
         return;
      }

      public var qysusu:int;

      public var zok:int;

      public var dosuvypuz:int;

      public var vokipu:int;

      public function qanu(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
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
         this.gowi(_loc2_);
         return;
      }

      public function setColor(param1:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:TextFormat = defaultTextFormat;
         _loc2_.color=param1;
         this.gowi(_loc2_);
         return;
      }

      public function setBold(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:TextFormat = defaultTextFormat;
         _loc2_.bold=param1;
         this.gowi(_loc2_);
         return;
      }

      public function hepulibiq(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:TextFormat = defaultTextFormat;
         _loc2_.align=param1;
         this.gowi(_loc2_);
         return;
      }

      public function rike(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text=param1;
         return;
      }

      private function gowi(param1:TextFormat) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         setTextFormat(param1);
         defaultTextFormat=param1;
         return;
      }

      private function sunanah(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mojymak();
         return;
      }

      public function mojymak() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:TextLineMetrics = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         this.dosuvypuz=0;
         this.vokipu=0;
         var _loc1_:* = 0;
         while(_loc1_<numLines)
         {
            _loc2_=getLineMetrics(_loc1_);
            _loc3_=_loc2_.width+4;
            _loc4_=_loc2_.height+4;
            if(_loc3_>this.dosuvypuz)
            {
               this.dosuvypuz=_loc3_;
            }
            this.vokipu=this.vokipu+_loc4_;
            _loc1_++;
         }
         width=this.qysusu==0?this.dosuvypuz:this.qysusu;
         height=this.zok==0?this.vokipu:this.zok;
         return;
      }

      public function qovy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         width=this.qysusu==0?textWidth+4:this.qysusu;
         height=this.zok==0?textHeight+4:this.zok;
         return;
      }
   }
[/CLASS]
}