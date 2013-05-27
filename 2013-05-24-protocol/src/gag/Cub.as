package gag
{
   import __AS3__.vec.Vector;


   public class Cub extends Fijarih
   {
      public function Cub() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.cen=new Vector.<Bysyg>();
         return;
      }

      private var cen:Vector.<Bysyg>;

      private var index:int;

      private var lepydygu:Boolean;

      public function sokip() : Boolean {
         return this.lepydygu;
      }

      public function cuvisob(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lepydygu=param1;
         return;
      }

      public function add(param1:Bysyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cen.push(param1);
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.index=0;
         this.quhim();
         return;
      }

      override protected function onReset() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Bysyg = null;
         for each (_loc1_ in this.cen)
         {
            _loc1_.reset();
         }
         return;
      }

      private function quhim() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.puhym())
         {
            this.kalohu();
         }
         else
         {
            syjavimu(true);
         }
         return;
      }

      private function puhym() : Boolean {
         return this.index<this.cen.length;
      }

      private function kalohu() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Bysyg = this.cen[this.index++];
         _loc1_.lastly.addOnce(this.gahonub);
         _loc1_.start();
         return;
      }

      private function gahonub(param1:Bysyg, param2:Boolean, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if((param2)||(this.lepydygu))
         {
            this.quhim();
         }
         else
         {
            syjavimu(false,param3);
         }
         return;
      }
   }

}