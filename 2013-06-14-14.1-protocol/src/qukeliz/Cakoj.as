package qukeliz
{
   import holije.Garyfajij;
   import hunavefeg.Hyne;
   import dyca.Mes;
   import flash.utils.Dictionary;


   public class Cakoj extends Object implements Garyfajij
   {
      public function Cakoj(param1:Hyne) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.qasebe=param1;
         return;
      }

      private var qasebe:Hyne;

      public function apply(param1:Class, param2:Mes, param3:Dictionary) : Object {
         return this.qasebe.jok(param1);
      }

      public function destroy() : void {
         return;
      }
   }

}