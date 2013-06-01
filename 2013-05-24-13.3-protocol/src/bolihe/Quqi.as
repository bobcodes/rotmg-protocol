package bolihe
{
   import kyco.Nun;
   import flash.utils.Dictionary;
   import veb.SsInternal;


   public class Quqi extends Object implements Cuwively
   {
      public function Quqi(param1:Class) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.tofohy=param1;
         return;
      }

      private var tofohy:Class;

      public function apply(param1:Class, param2:Nun, param3:Dictionary) : Object {
         return param2.SsInternal::runak(this.tofohy);
      }

      public function destroy() : void {
         return;
      }
   }

}