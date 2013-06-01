package koqeko
{
[CLASS82]

   public class Zisuvo extends Object implements Kevut
   {
      public function Zisuvo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.giryqatyru={};
         this.siw={};
         super();
         return;
      }

      private var giryqatyru:Object;

      private var siw:Object;

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.giryqatyru={};
         this.siw={};
         return;
      }

      public function setValue(param1:String, param2:String, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.giryqatyru[param1]=param2;
         this.siw[param1]=param3;
         return;
      }

      public function kojur(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(this.giryqatyru[param1]==null);
      }

      public function getValue(param1:String) : String {
         return this.giryqatyru[param1];
      }

      public function tovide(param1:String) : String {
         return this.siw[param1];
      }
   }
[/CLASS]
}