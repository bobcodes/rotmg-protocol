package kyku
{
   import gag.Fijarih;
   import kyco.Nun;
   import komawowag.Becepog;
   import kubos.Recy;
   import kubos.Tovogige;
   import __AS3__.vec.Vector;
   import wevozyze.Mysotekan;
   import gag.Bysyg;


   public class Qodibyl extends Fijarih
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qodibyl() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const viko:int = int.MAX_VALUE;

      public var cemohoqal:Nun;

      public var qiqely:Becepog;

      public function cequ(param1:Class, param2:int=0) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Recy = new Recy();
         _loc3_.cemohoqal=this.cemohoqal;
         _loc3_.wypisel=param1;
         _loc3_.priority=param2;
         this.list.push(_loc3_);
         return;
      }

      public function git(param1:Class, param2:int=0) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Tovogige = new Tovogige();
         _loc3_.cemohoqal=this.cemohoqal;
         _loc3_.dilyqa=param1;
         _loc3_.priority=param2;
         this.list.push(_loc3_);
         return;
      }

      private const list:Vector.<Mysotekan> = new Vector.<Mysotekan>(0);

      private var index:int = 0;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.list.sort(this.gum);
         this.index=0;
         this.quhim();
         return;
      }

      private function gum(param1:Mysotekan, param2:Mysotekan) : int {
         return param1.veledevu()-param2.veledevu();
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
         return this.index<this.list.length;
      }

      private function kalohu() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Bysyg = this.list[this.index++].make();
         _loc1_.lastly.addOnce(this.gahonub);
         this.qiqely.info("StartupSequence start:{0}",[_loc1_]);
         _loc1_.start();
         return;
      }

      private function gahonub(param1:Bysyg, param2:Boolean, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.qiqely.info("StartupSequence finish:{0} (isOK: {1})",[param1,param2]);
         if(param2)
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