package bus
{
[CLASS611]   import pogefeqeh.Wahovy;
   import flash.utils.Dictionary;


   public class Voqeborup extends Object implements Nygeles
   {
      public function Voqeborup(param1:Nygeles) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.provider=param1;
         return;
      }

      public var provider:Nygeles;

      public function apply(param1:Class, param2:Wahovy, param3:Dictionary) : Object {
         return this.provider.apply(param1,param2,param3);
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.provider.destroy();
         return;
      }
   }
[/CLASS]
}