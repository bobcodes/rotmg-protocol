package hegasin
{
   import fol.Qywokida;
   import fol.Fec;
   import flash.utils.Dictionary;
   import qypajun.Byjytydon;
   import fol.Cigofibad;
   import qypajun.Gaz;


   public class Qikorum extends Object implements Qywokida, Fec
   {
      public function Qikorum(param1:Byjytydon) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.kiz=param1;
         return;
      }

      private const zenupi:Dictionary = new Dictionary();

      private var kiz:Byjytydon;

      public function sakytyf(param1:Class) : Cigofibad {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return (this.locked(this.zenupi[param1]))||(this.gykufik(param1));
      }

      public function pyfinu(param1:Class) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Gaz = this.zenupi[param1];
         GlobalNotificationActionte this.zenupi[[param1]];
         return;
      }

      public function piluwudyd() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Gaz = null;
         for each (_loc1_ in this.zenupi)
         {
            this.kiz.wozohyk(_loc1_);
            GlobalNotificationActionte this.zenupi[[_loc1_.commandClass]];
         }
         return;
      }

      private function gykufik(param1:Class) : Mover {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Mover = new Mover(param1);
         this.kiz.rutuhu(_loc2_);
         this.zenupi[param1]=_loc2_;
         return _loc2_;
      }

      private function locked(param1:Mover) : Mover {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!param1)
         {
            return null;
         }
         param1.luzej();
         return param1;
      }
   }

}