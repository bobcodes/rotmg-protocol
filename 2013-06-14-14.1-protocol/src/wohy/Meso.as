package wohy
{
   import __AS3__.vec.Vector;


   public class Meso extends Object
   {
      public function Meso(param1:String, param2:String) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.name=param1;
         this.key=param2;
         return;
      }

      private var name:String;

      private var key:String;

      private var hod:Vector.<Caki>;

      public function getName() : String {
         return this.name;
      }

      public function getKey() : String {
         return this.key;
      }

      public function qute() : Vector.<Caki> {
         return this.hod;
      }

      public function fowebazy(param1:Vector.<Caki>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hod=param1;
         return;
      }

      public function danubebar() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.hod==null);
      }

      public function tonejogy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hod=null;
         return;
      }
   }

}