package bud
{
   import dyca.Mes;


   public class Ryrumoq extends Pote
   {
      public function Ryrumoq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super([],0,injectRotmgParameters);
         return;
      }

      override public function createInstance(param1:Class, param2:Mes) : Object {
         return new param1();
      }
   }

}