package bolihe
{
   import kyco.Nun;
   import flash.utils.Dictionary;


   public class Dodo extends Object implements Cuwively
   {
      public function Dodo(param1:Cuwively) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.provider=param1;
         return;
      }

      public var provider:Cuwively;

      public function apply(param1:Class, param2:Nun, param3:Dictionary) : Object {
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