package veb
{
   import flash.utils.Dictionary;
   import cyqef.Naseqigos;
   import jyqiqagog.Wubelet;


   public class Qiroru extends Object
   {
      public function Qiroru(param1:Naseqigos, param2:Dictionary) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.famij=param2;
         this.wila=param1;
         return;
      }

      public var famij:Dictionary;

      private var wila:Naseqigos;

      public function wugodof(param1:Class) : Wubelet {
         return this.famij[param1]=(this.famij[param1])||(this.wila.timefuh(param1));
      }

      public function jifaqy(param1:Class, param2:Wubelet) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.famij[param1]=param2;
         return;
      }
   }

}