package gycu
{
   import __AS3__.vec.Vector;


   public class Begotyl extends Siv
   {
      public function Begotyl() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.ryp=new Vector.<Cyqe>();
         return;
      }

      private var ryp:Vector.<Cyqe>;

      private var index:int;

      private var syf:Boolean;

      public function gyd() : Boolean {
         return this.syf;
      }

      public function suzajego(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.syf=param1;
         return;
      }

      public function add(param1:Cyqe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ryp.push(param1);
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.index=0;
         this.qasibev();
         return;
      }

      override protected function onReset() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Cyqe = null;
         for each (_loc1_ in this.ryp)
         {
            _loc1_.reset();
         }
         return;
      }

      private function qasibev() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.sicy())
         {
            this.synosuca();
         }
         else
         {
            dom(true);
         }
         return;
      }

      private function sicy() : Boolean {
         return this.index<this.ryp.length;
      }

      private function synosuca() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Cyqe = this.ryp[this.index++];
         _loc1_.lastly.addOnce(this.fobap);
         _loc1_.start();
         return;
      }

      private function fobap(param1:Cyqe, param2:Boolean, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if((param2)||(this.syf))
         {
            this.qasibev();
         }
         else
         {
            dom(false,param3);
         }
         return;
      }
   }

}