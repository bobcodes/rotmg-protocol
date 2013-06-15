package gycu
{
   import __AS3__.vec.Vector;


   public class Nijo extends Siv
   {
      public function Nijo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.ryp=new Vector.<Siv>();
         return;
      }

      private var ryp:Vector.<Siv>;

      private var tilezirod:int;

      public function add(param1:Siv) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ryp.push(param1);
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tilezirod=this.ryp.length;
         if(this.tilezirod>0)
         {
            this.tajir();
         }
         else
         {
            dom(true);
         }
         return;
      }

      override protected function onReset() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Siv = null;
         for each (_loc1_ in this.ryp)
         {
            _loc1_.reset();
         }
         return;
      }

      private function tajir() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.tilezirod;
         while(_loc1_--)
         {
            this.ryp[_loc1_].lastly.addOnce(this.fobap);
            this.ryp[_loc1_].start();
         }
         return;
      }

      private function fobap(param1:Siv, param2:Boolean, param3:String) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(param2)
         {
            if(--this.tilezirod==0)
            {
               dom(true);
            }
         }
         else
         {
            dom(false,param3);
         }
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "[TaskGroup("+this.ryp.join(",")+")]";
      }
   }

}