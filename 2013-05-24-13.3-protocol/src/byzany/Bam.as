package byzany
{


   public class Bam extends Object implements Nagumy
   {
      public function Bam() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wavyt={};
         this.zoga={};
         super();
         return;
      }

      private var wavyt:Object;

      private var zoga:Object;

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wavyt={};
         this.zoga={};
         return;
      }

      public function setValue(param1:String, param2:String, param3:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.wavyt[param1]=param2;
         this.zoga[param1]=param3;
         return;
      }

      public function rot(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(this.wavyt[param1]==null);
      }

      public function getValue(param1:String) : String {
         return this.wavyt[param1];
      }

      public function hymaceli(param1:String) : String {
         return this.zoga[param1];
      }
   }

}