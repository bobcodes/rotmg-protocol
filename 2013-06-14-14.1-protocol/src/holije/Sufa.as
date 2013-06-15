package holije
{
   import dyca.Mes;
   import flash.utils.Dictionary;
   import vibajiku.SsInternal;


   public class Sufa extends Object implements Garyfajij
   {
      public function Sufa(param1:Class) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.qepyjifed=param1;
         return;
      }

      private var qepyjifed:Class;

      public function apply(param1:Class, param2:Mes, param3:Dictionary) : Object {
         return param2.SsInternal::sagovicot(this.qepyjifed);
      }

      public function destroy() : void {
         return;
      }
   }

}