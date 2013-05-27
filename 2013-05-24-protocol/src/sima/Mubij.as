package sima
{
   import flash.utils.Dictionary;
   import nec.AppendingLineBuilder;


   public class Mubij extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mubij() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      static const quky:uint = 65280;

      static const cugocug:uint = 16711680;

      static const tiheb:uint = 16777103;

      static const duco:uint = 11776947;

      static const jaminiqop:uint = 9055202;

      public var gawoc:Dictionary;

      public var cawyp:AppendingLineBuilder;

      public var foqub:AppendingLineBuilder;

      public function bynuqome(param1:XML, param2:XML) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.wyg();
         this.compareSlots(param1,param2);
         return;
      }

      protected function compareSlots(param1:XML, param2:XML) : void {
         return;
      }

      private function wyg() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gawoc=new Dictionary();
         this.cawyp=new AppendingLineBuilder();
         return;
      }

      protected function gynuha(param1:Number) : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<0)
         {
            return cugocug;
         }
         if(param1>0)
         {
            return quky;
         }
         return tiheb;
      }

      protected function zerefuhen(param1:String, param2:uint=16777103) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return "<font color=\"#"+param2.toString(16)+"\">"+param1+"</font>";
      }

      protected function wariz(param1:String) : String {
         return this.zerefuhen("MP Cost: ",duco)+this.zerefuhen(param1,tiheb)+"\n";
      }
   }

}