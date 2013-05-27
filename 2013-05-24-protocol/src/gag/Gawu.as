package gag
{
   import __AS3__.vec.Vector;


   public class Gawu extends Object
   {
      public function Gawu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.cen=new Vector.<Bysyg>(0);
         return;
      }

      private var cen:Vector.<Bysyg>;

      public function add(param1:Bysyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cen.push(param1);
         param1.davifuju.addOnce(this.gahonub);
         return;
      }

      public function nomo(param1:Bysyg) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(this.cen.indexOf(param1)==-1);
      }

      private function gahonub(param1:Bysyg, param2:Boolean, param3:String="") : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.cen.splice(this.cen.indexOf(param1),1);
         return;
      }
   }

}