package voledi
{
   import gycu.Siv;
   import dyca.Mes;
   import hunavefeg.Depyrew;
   import tejag.Powid;
   import tejag.Siba;
   import __AS3__.vec.Vector;
   import lepuhuf.Nopoqu;
   import gycu.Cyqe;


   public class Lazab extends Siv
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Lazab() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const don:int = int.MAX_VALUE;

      public var difas:Mes;

      public var con:Depyrew;

      public function lyly(param1:Class, param2:int=0) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Powid = new Powid();
         _loc3_.difas=this.difas;
         _loc3_.joj=param1;
         _loc3_.priority=param2;
         this.list.push(_loc3_);
         return;
      }

      public function qesy(param1:Class, param2:int=0) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Siba = new Siba();
         _loc3_.difas=this.difas;
         _loc3_.tytuwa=param1;
         _loc3_.priority=param2;
         this.list.push(_loc3_);
         return;
      }

      private const list:Vector.<Nopoqu> = new Vector.<Nopoqu>(0);

      private var index:int = 0;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.list.sort(this.syqace);
         this.index=0;
         this.qasibev();
         return;
      }

      private function syqace(param1:Nopoqu, param2:Nopoqu) : int {
         return param1.dyjacyp()-param2.dyjacyp();
      }

      private function qasibev() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
         return this.index<this.list.length;
      }

      private function synosuca() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Cyqe = this.list[this.index++].make();
         _loc1_.lastly.addOnce(this.fobap);
         this.con.info("StartupSequence start:{0}",[_loc1_]);
         _loc1_.start();
         return;
      }

      private function fobap(param1:Cyqe, param2:Boolean, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.con.info("StartupSequence finish:{0} (isOK: {1})",[param1,param2]);
         if(param2)
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