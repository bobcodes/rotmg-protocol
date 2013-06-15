package cycuka
{


   public class Tod extends Object implements Sinaf
   {
      public function Tod() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.daw={};
         this.lun={};
         super();
         return;
      }

      private var daw:Object;

      private var lun:Object;

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.daw={};
         this.lun={};
         return;
      }

      public function setValue(param1:String, param2:String, param3:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.daw[param1]=param2;
         this.lun[param1]=param3;
         return;
      }

      public function nezuz(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(this.daw[param1]==null);
      }

      public function getValue(param1:String) : String {
         return this.daw[param1];
      }

      public function ropyra(param1:String) : String {
         return this.lun[param1];
      }
   }

}