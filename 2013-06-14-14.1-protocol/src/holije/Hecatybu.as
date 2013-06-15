package holije
{
   import dyca.Mes;
   import flash.utils.Dictionary;


   public class Hecatybu extends Object implements Garyfajij
   {
      public function Hecatybu(param1:Garyfajij) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.provider=param1;
         return;
      }

      public var provider:Garyfajij;

      public function apply(param1:Class, param2:Mes, param3:Dictionary) : Object {
         return this.provider.apply(param1,param2,param3);
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.provider.destroy();
         return;
      }
   }

}