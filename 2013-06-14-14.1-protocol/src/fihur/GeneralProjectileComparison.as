package fihur
{
   import jediwip.AppendingLineBuilder;
   import mavew.Taz;
   import komi.Vibemod;


   public class GeneralProjectileComparison extends Qudicy
   {
      public function GeneralProjectileComparison() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var itemXML:XML;

      private var curItemXML:XML;

      private var dulusah:XML;

      private var cazigapib:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.itemXML=param1;
         this.curItemXML=param2;
         bycavima=new AppendingLineBuilder();
         if(param1.hasOwnProperty("NumProjectiles"))
         {
            this.muhacizu();
            lor[param1.NumProjectiles.toXMLString()]=true;
         }
         if(param1.hasOwnProperty("Projectile"))
         {
            this.dede();
            lor[param1.Projectile.toXMLString()]=true;
         }
         this.kykifyhep();
         return;
      }

      private function dede() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.woq();
         var _loc1_:Number = Number(this.dulusah.Speed)*Number(this.dulusah.LifetimeMS)/10000;
         var _loc2_:Number = Number(this.cazigapib.Speed)*Number(this.cazigapib.LifetimeMS)/10000;
         var _loc3_:String = Taz.fijov(_loc1_);
         bycavima.pushParams(Vibemod.jetywatob,{range:wafifib(_loc3_,musybiboj(_loc1_-_loc2_))});
         if(this.dulusah.hasOwnProperty("MultiHit"))
         {
            bycavima.pushParams(Vibemod.dadoku,{},Taz.humuhujig(tejy),Taz.vepiq());
         }
         if(this.dulusah.hasOwnProperty("PassesCover"))
         {
            bycavima.pushParams(Vibemod.bapazin,{},Taz.humuhujig(tejy),Taz.vepiq());
         }
         return;
      }

      private function muhacizu() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:int = int(this.itemXML.NumProjectiles);
         var _loc2_:int = int(this.curItemXML.NumProjectiles);
         var _loc3_:uint = musybiboj(_loc1_-_loc2_);
         bycavima.pushParams(Vibemod.domow,{numShots:wafifib(_loc1_.toString(),_loc3_)});
         return;
      }

      private function woq() : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         this.dulusah=XML(this.itemXML.Projectile);
         var _loc1_:int = int(this.dulusah.MinDamage);
         var _loc2_:int = int(this.dulusah.MaxDamage);
         var _loc3_:Number = (_loc2_+_loc1_)/2;
         this.cazigapib=XML(this.curItemXML.Projectile);
         var _loc4_:int = int(this.cazigapib.MinDamage);
         var _loc5_:int = int(this.cazigapib.MaxDamage);
         var _loc6_:Number = (_loc5_+_loc4_)/2;
         var _loc7_:String = (_loc1_==_loc2_?_loc1_:_loc1_+" - "+_loc2_).toString();
         bycavima.pushParams(Vibemod.DAMAGE,{damage:wafifib(_loc7_,musybiboj(_loc3_-_loc6_))});
         return;
      }

      private function kykifyhep() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(this.itemXML.RateOfFire.length()==0||this.curItemXML.RateOfFire.length()==0)
         {
            return;
         }
         var _loc1_:Number = Number(this.curItemXML.RateOfFire[0]);
         var _loc2_:Number = Number(this.itemXML.RateOfFire[0]);
         var _loc3_:int = int(_loc2_/_loc1_*100);
         var _loc4_:int = _loc3_-100;
         if(_loc4_==0)
         {
            return;
         }
         var _loc5_:uint = musybiboj(_loc4_);
         var _loc6_:String = _loc4_.toString();
         if(_loc4_>0)
         {
            _loc6_="+"+_loc6_;
         }
         _loc6_=wafifib(_loc6_+"%",_loc5_);
         bycavima.pushParams(Vibemod.nikize,{data:_loc6_});
         return;
      }
   }

}